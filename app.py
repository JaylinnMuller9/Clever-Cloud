import os
from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class Greeting(Resource):
    def get(self):
        return {"message": "Clever Cloud is Up & Running!"}

api.add_resource(Greeting, '/')

if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.environ.get("PORT", 8080))
    )
