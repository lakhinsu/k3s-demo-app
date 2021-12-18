FROM python:3

ENV DIRPATH=/server

WORKDIR ${DIRPATH}

COPY ./requirements.txt ${DIRPATH}/requirements.txt

RUN pip install --no-cache-dir --upgrade -r ${DIRPATH}/requirements.txt

COPY ./app ${DIRPATH}/app

EXPOSE 5050

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5050"]
