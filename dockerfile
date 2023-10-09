FROM python:3.11

RUN pip install pdm
WORKDIR /usr/src/app
COPY pyproject.toml .
COPY pdm.lock .
RUN pdm install

CMD ls -al
