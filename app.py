from flask import *


app = Flask(__name__)  # __name__ means main
app.secret_key = "^2gt*hy&ui@h&u45"  # 16


@app.route("/")
def home():
    return render_template("home.html")


if __name__ == "__main__":
    app.run()
