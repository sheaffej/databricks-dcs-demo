FROM databricksruntime/python-virtualenv:latest

RUN apt-get update \
  && apt-get install -y \
 	python3-dev \
 	build-essential \
 	graphviz \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# These python libraries are used by Databricks notebooks and the Python REPL
# You do not need to install pyspark - it is injected when the cluster is launched
RUN /databricks/python3/bin/pip install \
	graphviz \
	pydotplus \
	folium \
	keras \
	tensorflow \
	shap
