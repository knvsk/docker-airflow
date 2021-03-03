FROM puckel/docker-airflow:1.10.9
RUN pip --default-timeout=1000 install --trusted-host pypi.org --trusted-host files.pythonhosted.org --upgrade google-api-python-client
RUN pip --default-timeout=1000 install --trusted-host pypi.org --trusted-host files.pythonhosted.org google
RUN pip --default-timeout=1000 install --trusted-host pypi.org --trusted-host files.pythonhosted.org google.cloud.bigquery
RUN pip --default-timeout=1000 install --trusted-host pypi.org --trusted-host files.pythonhosted.org httplib2
# RUN pip --default-timeout=1000 install --trusted-host pypi.org --trusted-host files.pythonhosted.org s3

USER airflow
# WORKDIR ${AIRFLOW_USER_HOME}
# ENTRYPOINT ["/entrypoint.sh"]
CMD ["webserver"]
