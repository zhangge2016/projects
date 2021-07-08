# coding:utf-8
from flask import Flask, request,render_template
from controller.conn_flask import blueprint
from healthcheck import HealthCheck, EnvironmentDump

app = Flask(__name__)

# wrap the flask app and give a heathcheck url
health = HealthCheck(app, "/healthcheck")
envdump = EnvironmentDump(app, "/environment")

# add your own check function to the healthcheck
def redis_available():
    #client = _redis_client()
    #info = client.info()
    return True, "redis ok"

health.add_check(redis_available)
'''
# add your own data to the environment dump
def application_data():
	return {"maintainer": "Frank Stratton",
	        "git_repo": "https://github.com/Runscope/healthcheck"}
'''
envdump.add_section("application", redis_available)

if __name__ == "__main__":
    app.run(debug=True, host='127.0.0.1', port=8000)

