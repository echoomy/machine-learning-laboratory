FROM python:3.12 AS default

WORKDIR /opt/laboratory/

RUN pip install --no-cache-dir tensorflow matplotlib pandas seaborn scikit-learn notebook

RUN useradd -m notebook && chown notebook:notebook /opt/laboratory/

USER notebook

CMD ["sh", "-c", "exec jupyter notebook --ip=0.0.0.0 --port=8080 --IdentityProvider.token=\"${NOTEBOOK_TOKEN}\""]

FROM default AS development
