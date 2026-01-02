from fastapi import FastAPI

app = FastAPI()

users = {
    1: {
        "name": "tanmay",
        "age": 19,
        "isLoggedin": True
    },
    2: {
        "name": "rahul",
        "age": 21,
        "isLoggedin": False
    },
    3: {
        "name": "priya",
        "age": 20,
        "isLoggedin": True
    },
    4: {
        "name": "ananya",
        "age": 22,
        "isLoggedin": True
    },
    5: {
        "name": "rohit",
        "age": 23,
        "isLoggedin": False
    },
    6: {
        "name": "neha",
        "age": 19,
        "isLoggedin": True
    },
    7: {
        "name": "arjun",
        "age": 24,
        "isLoggedin": False
    },
    8: {
        "name": "kiran",
        "age": 21,
        "isLoggedin": True
    },
    9: {
        "name": "simran",
        "age": 20,
        "isLoggedin": False
    },
    10: {
        "name": "akash",
        "age": 22,
        "isLoggedin": True
    }
}

# Path Parameter - to get users / particular things
@app.get("/student_info/{user_id}")
def info(user_id: int):
    return users.get(user_id, {"error":"cannot fetch user"})

# Query Parameter - filtering
@app.get('/get_users_name')
def getName(name: str):
    for users_id in users:
        if users[users_id]["name"] == name:
            return users[users_id]
    return  {"error": "user not found"}

# Path + Query Parameter
@app.get("/get-user-info/{user_id}")
def get_info(user_id: int, name: str):
    for user_id in users:
        if users[user_id]["name"] == name:
            return users[user_id]
    return {"error": "404 user not found1"}