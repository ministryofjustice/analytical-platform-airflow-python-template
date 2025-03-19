FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.8.0@sha256:a7d7872482a845e67fc7f78401a6e4a89d906f07d67aca1f7c636cd3c92ae81a

# Below is an example of how to use the base image
# USER root
# COPY requirements.txt requirements.txt
# COPY src/ .
# RUN <<EOF
# pip install --no-cache-dir --requirement requirements.txt
# EOF

USER ${CONTAINER_UID}

ENTRYPOINT ["python3", "main.py"]
