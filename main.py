from fastapi import FastAPI
from datetime import datetime

app = FastAPI()

@app.get("/")
async def read_root():
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")
    message = f"Hello, Wold! It's {current_time}!"

    return {"message": message}