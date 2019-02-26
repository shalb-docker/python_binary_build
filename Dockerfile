FROM debian:wheezy

RUN apt-get update && apt-get install -y python-pip libpython2.7
RUN pip-2.7 install https://github.com/pyinstaller/pyinstaller/tarball/v3.2
RUN apt-get update && apt-get install -y curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
RUN pip install bs4

