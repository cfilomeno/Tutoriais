from flask import render_template
from app import app

from app.models.forms import LoginForm


@app.route("/index")
@app.route("/")
def index():
    return render_template('index.html')


@app.route("/login", methods=["GET", "POST"])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        print(form.username.data)
        print(form.password.data)
    else:
        print(form.errors)
    return render_template('login.html', form=form)


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

