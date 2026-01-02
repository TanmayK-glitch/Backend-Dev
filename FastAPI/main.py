from fastapi import FastAPI

app = FastAPI()

students = {
    1: {
        "name": "Tanmay",
        "age": 19,
        "isStudent": True
    }
}

@app.get("/")
def index():
    return {"name": "First Data"}

@app.get("/student_info/{student_id}")
def info(student_id: int):
    return students[student_id]