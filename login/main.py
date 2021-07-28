from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("login.html")

@app.route('/register')
def register():
    return render_template("register.html")

@app.route('/profile')
def profile():
    return render_template("profile.html")

@app.route('/diary')
def diary():
    return render_template("diary.html")

if __name__ == '__main__':
    app.run(debug=True)
