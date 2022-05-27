
FROM python:3.8.13-buster

COPY TaxiFareModel /TaxiFareModel
COPY api /api
COPY model.joblib /model.joblib
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn app.fast:app --host 0.0.0.0 --port $PORT
