from fastapi import FastAPI

app = FastAPI()

doctors = {
    1: {
        "name":"doc1",
        "isLoggedIn": True,
        "specialization":"cardio"
    }
}

patients = {
    1: {
        "name":"demo",
        "age": 21,
        "isAppointed": True
    }
}

#Landing Page Path
@app.get('/doctor_portal/{doctor_Id}')
def page(doctor_Id: int):
    return doctors.get(doctor_Id, {"error":"cannot fetch doctor"})

#Patient Details
@app.get('/patient_page')
def getPatientDetails(name: str):
    for patient_Id in patients:
        if patients[patient_Id]["name"] == name:
            return patients[patient_Id]
    return {"error":"patient not found"}

