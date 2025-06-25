FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.15.0@sha256:9802aede594062995aca0daeb9c6c159eea742fbc6602233739eccbb14b1ed17

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
