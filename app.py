# coding:utf-8
from flask import Flask, request,render_template
from controller.conn_flask import blueprint

def create_app():
    app = Flask(__name__)
    app.register_blueprint(blueprint, url_prefix='/pigfarm_init')
    return app


if __name__ == '__main__':
    app = create_app()
    app.run()