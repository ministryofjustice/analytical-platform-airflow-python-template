FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.22.0@sha256:1fbc48bbe820be43c5910af9990a47d537808470bb465beb6634e30f23f2aace

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
