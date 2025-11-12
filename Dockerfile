# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /

# Copy the requirements file into the container at /code
COPY ./requirements.txt /requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

# Copy the current directory contents into the container at /code
COPY ./main.py /main.py

# Make port 80 available to the world outside this container
EXPOSE 80

# Run main.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]