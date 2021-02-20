FROM python:3.8-alpine

WORKDIR /hello

COPY hello.py .

CMD ["python3", "hello.py"]
