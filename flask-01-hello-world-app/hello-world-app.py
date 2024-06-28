from flask import Flask 
app = Flask(__name__)

@app.route("/")
def head():
     return "Hello World Nargiz"

@app.route("/secondpage")
def second():
     return "this is second page"

@app.route("/third")
def third():
     return "this is third page"

@app.route("/fourth/<string:id>")
def fourth(id):
     return f"this is {id} page"


if __name__ == '__main__':

     app.run(debug=True)
     #app.run(host= '0.0.0.0', port=80)