from flask_httpauth import HTTPTokenAuth
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer, BadSignature, SignatureExpired

from config import Config
from home.libs.error_code import AuthFailed

auth = HTTPTokenAuth(scheme='JWT')

#校验token
@auth.verify_token
def verify_token(token):
    # Config.SECRET_KEY:内部的私钥，这里写在配置信息里
    s = Serializer(Config.SECRET_KEY)
    try:
        data = s.loads(token)
    except BadSignature:
        # AuthFailed 自定义的异常类型
        raise BadSignature(msg='token不正确')
    except SignatureExpired:
        raise SignatureExpired(msg='token过期')
    # 校验通过返回True
    return True

from config import Config
from home import db
from werkzeug.security import generate_password_hash, check_password_hash
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer


#生成token
class User(db.Model):
    """用户"""

    __tablename__ = 'user'

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(80), unique=True, nullable=False) # 用户名
    hash_password = db.Column(db.String(120), nullable=False)        # 密码
    phone = db.Column(db.String(20), nullable=False)                 # 手机号

    # 明文密码（只读）
    @property
    def password(self):
        raise AttributeError('不可读')

    # 写入密码，同时计算hash值，保存到模型中
    @password.setter
    def password(self,value):
        self.hash_password = generate_password_hash(value)

    # 检查密码是否正确
    def check_password(self, password):
        return check_password_hash(self.hash_password,password)

    # 生成token
    @staticmethod
    def create_token(user_id):
        """
        生成token
        :param user_id: 用户id
        :return:
        """

        # 第一个参数是内部的私钥，这里写在配置信息里，如果只是测试可以写死
        # 第二个参数是有效期（秒）
        s = Serializer(Config.SECRET_KEY, expires_in=Config.TOKEN_EXPIRATION)
        # 接收用户id转换与编码
        token = s.dumps({"id": user_id}).decode('ascii')
        return token


from flask import request, jsonify

from home.modles import User


@api.route('/login', methods=['POST'])
def login():
    '''
    接受参数并校验参数，返回token
    :return:
    '''
    # user = request.json['username']
    # password = request.json['password']
    # guest = User.query.filter_by(username=user).first()
    # # 生成token
    # z_token = User.create_token(guest.id)
    #
    # return jsonify(token=z_token)
    pass



# 调用该装饰器认证token（导入token_auth.py中的auth：from home.utils.token_auth import auth）
@api.route('/index')
@auth.login_required
def index():
    return 'helllo word'