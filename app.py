import dbcreds
import dbhelper
import uuid
from flask import Flask, request, make_response, jsonify

app = Flask(__name__)

@app.post("/api/login-admin")
def post_login():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 
@app.delete("/api/login-admin")
def delete_login():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 
@app.post("/api/blocks")
def post_blocks():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 
@app.delete("/api/blocks")
def delete_blocks():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 
@app.get("/api/blocks")
def get_blocks():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 
@app.get("/api/search")
def get_blocks():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call ()",[request.json.get("username"),request.json.get("password")])
        if(type(results) == list):
            return make_response(jsonify(results),200)
        else:
            return make_response("sorry something went wrong",500)
    # some except blocks with possible errors
    except TypeError:
        print("invalid input type, try again.")
    except UnboundLocalError:
        print("coding error")
    except ValueError:
        print("value error, try again") 




if(dbcreds.production_mode == True):
    print("Running Production Mode")
    import bjoern #type: ignore
    bjoern.run(app,"0.0.0.0",5855)
else:
    from flask_cors import CORS
    CORS(app)
    print("Running in Testing Mode")
    app.run(debug=True)
