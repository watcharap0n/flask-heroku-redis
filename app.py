from flask import request, Flask, jsonify

app = Flask(__name__)


@app.route('/')
def index():
    return '<h2> Hello Flask </h2>'
