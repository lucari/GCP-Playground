# The Docker image contains the following code
from flask import Flask
import os
import socket

app = Flask(__name__)

@app.route("/")
def sayHello():
    html = "<div style='text-align:center;margin:20px;'><h1>Greetings from Richy</h1>This is a simple test page</div>"
    return html

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=80)
