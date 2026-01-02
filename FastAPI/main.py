from fastapi import FastAPI

app = FastAPI()

students = {
    1: {
        "name": "tanmay",
        "age": 19,
        "isStudent": True
    },

    2: {
        "name": "krishna",
        "age": 55,
        "isStudent": False
    },

    3: {
        "name": "pratik",
        "age": 18,
        "isStudent": True
    }
}

@app.get("/")
def index():
    return {"name": "First Data"}

# Path Parameter
@app.get("/student_info/{student_id}")
def info(student_id: int):
    return students[student_id] #Or can be written like below also
    # return students.get(student_id, {"error": "cannot fetch student info"})

#Query Parameter
@app.get("/student_name")
def getName(name: str):
    for student_id in students:
        if students[student_id]["name"] == name:
            return students[student_id]
    return {"error": "student not found"}