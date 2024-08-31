from flask import Flask, request


app = Flask(__name__)


@app.route("/")
def index():
    try:
        degree = int(request.args.get('degree'))
    except TypeError:
        degree = 0

    return {
        "degree": degree,
        "fahrenheit": degree*9/5 + 32,
    }


if __name__ == "__main__":
    app.run(debug=True)
