FROM expouroborous/spacy-en-sm:latest

RUN pip install --upgrade pip

RUN pip install nltk && \
    python -c "import nltk; nltk.download('all')"

RUN pip install gensim