FROM jupyter/scipy-notebook

RUN mkdir test
COPY test/batch.py test/
COPY test/svc_model.model test/

RUN python3 test/batch.py