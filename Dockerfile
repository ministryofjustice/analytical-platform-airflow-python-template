FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.12.0@sha256:f4e6b42430a08e3eeef7ae3b3429745f68827cff0c36b2e67e9b4e683696a9b7

# Below is an example of how to use the base image

# Switch to root user to install packages
# USER root                 
                       
# Copy requirements.txt
# COPY requirements.txt requirements.txt 

# Copy application code
# COPY src/ .

# Install requirements
# RUN <<EOF
# pip install --no-cache-dir --requirement requirements.txt
# EOF

# Switch back to non-root user (analyticalplatform)
# USER ${CONTAINER_UID}

# Execute main.py script
# ENTRYPOINT ["python3", "main.py"]
