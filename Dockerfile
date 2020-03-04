FROM python:3.6.8
MAINTAINER Ted Chang (htchang@us.ibm.com)
RUN pip install tensorflowjs
ENTRYPOINT ["/usr/local/bin/tensorflowjs_converter"]
CMD ["-h"]

