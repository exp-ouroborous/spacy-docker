FROM python:3.10-slim

RUN pip install --upgrade pip

RUN pip install spacy && \
    python -m spacy download en_core_web_sm && \
    python -m spacy download en_core_web_md