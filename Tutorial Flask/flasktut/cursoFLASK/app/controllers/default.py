from flask import render_template
from app import app


@app.route("/index/<user>")
@app.route("/", defaults={"user": None})
def index(user):
    return render_template('index.html', user=user)


# @app.route("/index")
# @app.route("/")
# def index():
#     return "Hello world!"


# @app.route("/test", defaults={'name': None})
# @app.route("/test/<name>")
# def test(name=None):
#     if name:
#         return "Olá! %s" % name
#     else:
#         return "Olá, usuário!"
#


# @app.route("/test/<int:id>")
# def test(id):
#     print(type(id))
#     return "oi"


# @app.route("/test/", methods=['GET'])
# def test():
#     return "Oi!"

