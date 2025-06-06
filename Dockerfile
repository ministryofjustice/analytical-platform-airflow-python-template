FROM ghcr.io/ministryofjustice/analytical-platform-airflow-python-base:1.14.0@sha256:e6b0859e770b45e3ce13656ca39a24cb60db8237bb0638c34c35a26eaf59ee83

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
