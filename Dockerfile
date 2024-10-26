FROM python:alpine3.20

WORKDIR /giropops-senhas

COPY /giropops-senhas .

RUN pip3 install --no-cache-dir -r requirements.txt

ENV REDIS_HOST=redis

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
