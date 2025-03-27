FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.9.0@sha256:e8d4a3f42941d5e6f85f0e71b6035dddc46ee52e3698e09eb52f4ed439d68d02

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
