FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.30.0@sha256:bb99083bba8d81154f5d80c8d527633da75fde65bc91ece83ad78ab173851a03

ARG MOJAP_IMAGE_VERSION="default"
ENV MOJAP_IMAGE_VERSION=${MOJAP_IMAGE_VERSION}

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
