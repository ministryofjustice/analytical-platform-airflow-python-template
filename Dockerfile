FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.11.0@sha256:eb98063dd0a2703bbb71ca3507da48a5142de7c10f0cc5c458c51eec5e2fdde8

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
