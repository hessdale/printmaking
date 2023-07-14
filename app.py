import dbcreds
import dbhelper
from uuid import uuid4
from flask import Flask, request, make_response, jsonify

app = Flask(__name__)

@app.post("/api/login-admin")
def post_login():
    try:
        error = dbhelper.check_endpoint_info(request.json,["username","password"])
        if(error != None):
            return make_response(jsonify(error),400)
        token=uuid4().hex
        results = dbhelper.run_procedure("call post_admin_session(?,?,?)",[token,request.json.get("username"),request.json.get("password")])
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
        error = dbhelper.check_endpoint_info(request.headers,["token"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call delete_admin_session(?)",[request.headers.get("token")])
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
def post_block():
    try:
        
        error = dbhelper.check_endpoint_info(request.form,["date","info","block_id","cliff_notes"])
        if(error != None):
            return make_response(jsonify(error),400)
        header_check = dbhelper.check_endpoint_info(request.headers,["token"])
        if(header_check != None):
            return make_response(jsonify(header_check), 400)
        results = dbhelper.run_procedure("call post_block(?,?,?,?,?,?,?,?)",[request.headers.get("token"),request.form.get("name"),request.form.get("date"),request.form.get("info")
                                                                      ,request.form.get("title"),request.form.get("publication"),
                                                                       request.form.get("block_id"),request.form.get("cliff_notes")])
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
        error = dbhelper.check_endpoint_info(request.json,["token","id"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call delete_block(?,?)",[request.json.get("token"),request.json.get("id")])
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
        results = dbhelper.run_procedure("call get_blocks()",[])
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

@app.post("/api/images")
def post_image():
    try:
        # Use request.files to make sure the uploaded_image is there
        # Again you can call it whatever you would like
        is_valid = dbhelper.check_endpoint_info(request.files, ['uploaded_image'])
        if(is_valid != None):
            return make_response(jsonify(is_valid), 400)
        # Save the image using the helper found in apihelpers
        file_name = dbhelper.save_file(request.files['uploaded_image'])
        # If the filename is None something has gone wrong
        error = dbhelper.check_endpoint_info(request.form,["block_id","image_description"])
        if(error != None):
            return make_response(jsonify(error),400)
        if(file_name == None):
            return make_response(jsonify("Sorry, something has gone wrong"), 500)
        results = dbhelper.run_procedure("call post_image(?,?,?,?)",[request.headers.get("token"),request.form["block_id"],file_name,request.form["image_description"]])
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

@app.get("/api/images")
def get_images():
    try:
        results = dbhelper.run_procedure("call get_images()",[])
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

@app.get("/api/images_id")
def get_images_id():
    try:
        error = dbhelper.check_endpoint_info(request.args,["block_id"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call get_id_images(?)",[request.args.get("block_id")])
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

@app.get("/api/blocks_id")
def get_blocks_id():
    try:
        error = dbhelper.check_endpoint_info(request.args,["block_id"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call get_id_blocks(?)",[request.args.get("block_id")])
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
def search_blocks():
    try:
        error = dbhelper.check_endpoint_info(request.args,["search"])
        if(error != None):
            return make_response(jsonify(error),400)
        results = dbhelper.run_procedure("call search_blocks(?)",[request.args.get("search")])
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
