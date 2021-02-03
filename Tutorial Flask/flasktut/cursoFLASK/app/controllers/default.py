from flask import render_template
from app import app


@app.route("/index")
@app.route("/")
def index():
    return render_template('index.html')


@app.route("/login")
def login():
    return render_template('base.html')


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

