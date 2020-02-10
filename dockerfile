# Use the Python Stretch Image
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

CMD ["gunicorn", "-b", ":8080", "main:APP"]