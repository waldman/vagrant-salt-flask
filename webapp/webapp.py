#!/usr/bin/env python
# coding: utf-8

__author__ = "Leon Waldman <le.waldman@gmail.com>"


### Imports
from flask import Flask
from werkzeug.contrib.fixers import ProxyFix


### Variables
app = Flask(__name__)


### Functions
@app.route("/")
def hello():
    return "Hello from a flask app running through supervisord => gunicorn => nginx! :)"

app.wsgi_app = ProxyFix(app.wsgi_app)

### o/
if __name__ == "__main__":
    # Actually running
    app.run()









