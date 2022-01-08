from werkzeug.utils import redirect
from flask import request
from flask import Flask, url_for, flash
import pymysql
from flask import render_template
from werkzeug.utils import secure_filename
import re
import os

# removed the '/' , it would affect the directory referencing, advisable to create a fresh 'uploads' directory and use it instead
UPLOAD_FOLDER = 'static'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'}

app = Flask(__name__)
app.secret_key = "^2gt*hy&ui@h&u45"  # 16
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MAX_CONTENT_LENGTH'] = 16 * 1000 * 1000

# establish db connection
# changed the db connection credentials to match my server
connection = pymysql.connect(
    host="localhost", port=3306, user="root", password="", database="dots")


@app.route("/")
def home():
    cursor = connection.cursor()
    sql = "SELECT * FROM `posts`"
    try:
        cursor.execute(sql)
        # connection.commit()
        rows = cursor.fetchall()
        return render_template("home.html", rows=rows)

    except:
        return render_template("home.html", rows=[])


@app.route("/test")
def test():
    cursor = connection.cursor()
    sql = "SELECT * FROM `posts`"
    try:
        cursor.execute(sql)
        # connection.commit()
        rows = cursor.fetchall()
        return render_template("test.html", rows=rows)

    except:
        return render_template("test.html", rows=[])


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

        # fetch the selected file
        file = request.files['file']
        uploaded_file = 'N/A'

        # if there is a file selected, upload it
        if file:
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            uploaded_file = filename

        # to a table for reviews
        # TODO : Create a column on the 'posts' table to save the uploaded_file
        sql = "insert into posts(category, image1,image2,image3,title,descc,content) values(%s,%s,%s,%s,%s,%s,%s)"
        cursor = connection.cursor()
        try:
            cursor.execute(sql, (category, image1, image2,
                                 image3, title, descc, content))
            connection.commit()

            flash("Review Posted Successfully")
            # pass the filename to be displayed on the frontend
            return render_template("upload.html", filename=uploaded_file)
        except:
            return render_template("upload.html", filename=uploaded_file)

    else:
        flash("Post Posted Successfully")
        return render_template("upload.html")


@app.route("/contact", methods=['POST', 'GET'])
def contact():
    if request.method == "POST":
        name = request.form["name"]
        phone = request.form["phone"]
        email = request.form["email"]
        message = request.form["message"]

        # we now move to the database and confirm if above details exist.
        sql = "insert into contacts (name,phone,email,message)values(%s,%s,%s,%s)"
        cursor = connection.cursor()
        try:
            cursor.execute(sql, (name, phone, email, message,))
            connection.commit()

            flash("Message Sent Successfully")
            return redirect(url_for("contact"))

        except:
            flash("Message Not Sent")
            return redirect(url_for("contact"))

    else:
        return render_template("contact.html")


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
        data = cursor.fetchall()
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


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/file', methods=['POST'])
def filefuns():
    if request.method == 'POST':
        f = request.files['file']
        fn = os.path.basename(f.filename.replace("\\", "/"))
        f.save('./static/', fn)
        return os.path.join(app.config['UPLOAD_FOLDER'])+"/"+fn


if __name__ == "__main__":
    app.run(debug=True)
