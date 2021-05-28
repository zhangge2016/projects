from flask import Flask, request
from flask import render_template

app = Flask(__name__)


# 载入模型，初始化，防止反复加载增加响应时间
def load_model():
    pass


# 路由,请求方式为post请求
@app.route("/page", methods=["POST"])
def demo():
    # 获取http传来数据
    if request.method == "POST":
        '''
        #flask.request函数介绍
        request.data # 将无法处理的参数转为Json存入到data中，可以通过request.data + json.loads的方式拿到里面的参数
        request.form # ImmutableMultiDict，用于获取传入表单数据，可用dict方式取值[key] or .get(key)
        request.args # ImmutableMultiDict，用于获取传入url数据
        request.method #用于验证请求方式
        request.values # ImmutableMultiDict，获取formdata数据和URL中的数据
        request.headers # 获取本次请求的请求头
        request.files # 获取上传的文件
        request.json # 若在请求中注明"application/json"则返回json解析数据,否则返回None
        '''
        inputs = ''
        # 算法主函数
        results = run(inputs)
        # 返回
        return results
        #return render_template("index.html", title='chat', user=results)


if __name__ == "__main__":
    load_model()
    app.run(host="0.0.0.0", port=8000, debug=False, use_reloader=False)
