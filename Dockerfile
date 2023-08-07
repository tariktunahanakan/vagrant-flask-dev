FROM python:3.9-alpine

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

RUN apk add curl


CMD [ "python3", "./hello.py" ] 