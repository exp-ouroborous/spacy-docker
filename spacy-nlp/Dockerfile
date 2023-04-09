FROM python:3.10-slim

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		gcc \
        python3-dev \
	; \
	rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install numpy pandas scikit-learn scipy tqdm matplotlib seaborn

RUN pip install ipykernel jupyter

RUN pip install spacy && \
    python -m spacy download en_core_web_sm && \
    python -m spacy download en_core_web_md

RUN pip install nltk && \
    python -c "import nltk; nltk.download('all')"

RUN pip install gensim