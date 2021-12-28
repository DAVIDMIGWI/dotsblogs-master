import re 

from flask import Flask
app = Flask(__name__)


from flask import render_template
import pymysql

# establish db connection
connection = pymysql.connect(host="localhost", port=3306, user="dukaxxyr_shoes", password="dukaxxyr_shoes", database="dukaxxyr_shoes")


@app.route("/")
def home():
    return render_template("home.html")

@app.route("/shoes")
def shoes():
    # create your query
    sql = "SELECT * FROM products"
    # execute/run
    # create a cursor used to execute sql
    cursor = connection.cursor()
    # now use the cursor to execute your sql.
    cursor.execute(sql)
    # check how many rows were returned
    if cursor.rowcount == 0:
        return render_template("shoes.html", msg="No product found")
    else:
        rows = cursor.fetchall()
        return render_template("shoes.html", rows=rows)


 ###################################################################################################
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

##########################################################################################################
@app.route("/admin", methods=["POST", "GET"])
def admin():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        sql = "SELECT * FROM admin WHERE email=%s and password=%s"
        # create cursor and execute above sql
        cursor = connection.cursor()
        # execute the sql, provide email and password to fit %s placeholders
        cursor.execute(sql, (email, password))
        # check if a match was found.
        if cursor.rowcount == 0:
            return render_template("admin.html", error="Check your details and try again")
        elif cursor.rowcount == 1:
            # create a user track of who is logged in
            session["admin"] = email
            return redirect("/dashboard")

        else:
            return render_template("admin.html", error="Error!!!!!!")
    else:
        return render_template("admin.html")
##########################################################################################################

# single shoe
@app.route("/single/<product_id>")
def single(product_id):
    # create your query provide as placeholder
    # create your query
    sql = "SELECT * FROM products WHERE product_id=%s"
    # execute/run
    # create a cursor used to execute sql
    cursor = connection.cursor()
    # now use the cursor to execute your sql.
    # below you provide id to replace the %s
    cursor.execute(sql, product_id)
    # check how many rows were returned
    if cursor.rowcount == 0:
        return render_template("single.html", msg="No product found")
    else:
        row = cursor.fetchone()  # product id was unique.
        return render_template("single.html", row=row)




if __name__ == "__main__":
    app.run()