from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def main():
    return render_template('index.html')
