FROM python:3.11
RUN COPY . /src
WORKDIR /src
RUN pip install .
