import re

from flask import Flask, url_for, flash
from flask import request
from werkzeug.utils import redirect

app = Flask(__name__)
app.secret_key = "^2gt*hy&ui@h&u45"  # 16

from flask import render_template
import pymysql

# establish db connection
connection = pymysql.connect(host="localhost", port=3306, user="root", password="",
                             database="blogs")


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/test")
def test():
    return render_template("test.html")


@app.route("/upload", methods=["POST", "GET"])
def upload():
    if request.method == "POST":
        category = request.form["category"]
        image1 = request.form["image1"]
        image2 = request.form["image2"]
        image3 = request.form["image3"]
        title = request.form["title"]
        descc = request.form["descc"]
        content = request.form["content"]

        # to a table for reviews
        sql = "insert into posts(category, image1,image2,image3,title,descc,content) values(%s,%s,%s,%s,%s,%s,%s)"
        cursor = connection.cursor()
        try:
            cursor.execute(sql, (category, image1, image2, image3, title, descc, content))
            connection.commit()

            flash("Review Posted Successfully")
            return render_template("upload.html")





        except:
            return render_template("upload.html")

    else:
        flash("Post Posted Successfully")
        return render_template("upload.html")


@app.route('/logingoogle', methods=['POST'])
def login():
    cursor = connection.cursor()
    email = request.form['email']
    pic = request.form['pic']
    username = request.form['userName']
    uid = request.form['uid']
    sql = "INSERT INTO `users`( `uuid`, `username`, `profilepic`,`email`) VALUES (%s,%s,%s,%s)"
    try:
        cursor.execute(sql, (uid, username, pic, email))
        connection.commit()
        return {
            'state': True,
            'message': 'success'

        }
    except:
        return {
            'state': False,
            'message': 'emailEXists'

        }
@app.route('/localpost', methods=['GET'])
def localpost():
    cursor = connection.cursor()
    sql = "SELECT * FROM `posts`"
    try:
        cursor.execute(sql)
        # connection.commit()
        data = cursor.fetchAll()
        return {
            'state': True,
            'data': data

        }
    except:
        return {
            'state': False,
            'data': []

        }
    # return  request.form    
    # sql = 


if __name__ == "__main__":
    app.run(debug=True)
