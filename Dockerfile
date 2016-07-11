FROM continuumio/anaconda
MAINTAINER Ohad Ravid

RUN /opt/conda/bin/conda install jupyter -y --quiet && mkdir -p /opt/notebooks
COPY notebooks /opt/notebooks/ml-tutorial/notebooks
COPY data /opt/notebooks/ml-tutorial/data

EXPOSE 8888

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]