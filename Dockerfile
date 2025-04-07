FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.10.1@sha256:24f55afb965362ca37a5dc23f27fef8c46925061f1665abd507abafb6fd2ab78

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
