FROM continuumio/anaconda
MAINTAINER Ohad Ravid

RUN /opt/conda/bin/conda install jupyter -y --quiet && mkdir -p /opt/notebooks
RUN /opt/conda/bin/python -m nltk.downloader all

COPY data /opt/notebooks/ml-tutorial/data
COPY notebooks /opt/notebooks/ml-tutorial/notebooks

EXPOSE 8888

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]