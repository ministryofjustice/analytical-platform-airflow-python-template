FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.6.0

# Below is an example of how to use the base image
# COPY requirements.txt requirements.txt
# RUN <<EOF
# pip install --no-cache-dir --requirement requirements.txt
# EOF

# COPY --chown=nobody:nobody --chmod=0755 entrypoint.sh /usr/local/bin/entrypoint.sh
# ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
