FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY main.py requirements.txt ./

RUN ls

RUN pip install -r /app/requirements.txt

CMD ["python", "app.py"]
