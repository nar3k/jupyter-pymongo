FROM continuumio/anaconda
CMD /opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks
WORKDIR /opt/notebooks
ENTRYPOINT /opt/conda/bin/jupyter notebook --allow-root --ip='*' --port=8888 --no-browser

