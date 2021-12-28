import re

from flask import Flask

app = Flask(__name__)

from flask import render_template
import pymysql

# establish db connection
connection = pymysql.connect(host="localhost", port=3306, user="root", password="",
                             database="blogs")


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/posts")
def posts():
    # create your query
    sql = "SELECT * FROM products"
    # execute/run
    # create a cursor used to execute sql
    cursor = connection.cursor()
    # now use the cursor to execute your sql.
    cursor.execute(sql)
    # check how many rows were returned
    if cursor.rowcount == 0:
        return render_template("posts.html", msg="No post found")
    else:
        rows = cursor.fetchall()
        return render_template("posts.html", rows=rows)


if __name__ == "__main__":
    app.run(debug=True)
