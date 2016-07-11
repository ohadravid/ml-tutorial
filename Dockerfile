FROM continuumio/anaconda
MAINTAINER Ohad Ravid

RUN /opt/conda/bin/conda install jupyter -y --quiet && mkdir -p /opt/notebooks/ml-tutorial
COPY notebooks data /opt/notebooks/ml-tutorial/

EXPOSE 8888

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]