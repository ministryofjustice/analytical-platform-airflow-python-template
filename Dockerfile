FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.13.0@sha256:a6dbd8483f4a75b0c328fe16602a8eaceea7c232c4c54349bfc697a2749f3b9a

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
