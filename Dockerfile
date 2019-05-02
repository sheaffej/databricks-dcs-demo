FROM databricksruntime/python-virtualenv:latest


# Installs python 2.7 and virtualenv for Spark and Notebooks
# RUN apt-get update \
#   && apt-get install -y \
#   	python2.7 \
#     virtualenv \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Initialize the default environment that Spark and notebooks will use
# RUN virtualenv -p python2.7 --system-site-packages /databricks/python2

# These python libraries are used by Databricks notebooks and the Python REPL
# You do not need to install pyspark - it is injected when the cluster is launched
RUN /databricks/python3/bin/pip install \
	graphviz pydotplus folium keras tensorflow


# Specifies where Spark will look for the python process
# ENV PYSPARK_PYTHON=/databricks/python2/bin/python2

# ENTRYPOINT echo "Hello World"