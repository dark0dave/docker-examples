FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN pip install poetry \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
  && rm -rf /var/lib/apt/lists/*

COPY poetry.lock pyproject.toml ./

RUN poetry export -f requirements.txt > requirements.txt \
  && pip install -r requirements.txt \
  && rm /poetry.lock /pyproject.toml requirements.txt

WORKDIR /app

COPY test test

ENTRYPOINT ["python3", "/app/test/main.py"]
