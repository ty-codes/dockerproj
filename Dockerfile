FROM python:3.7.3-stretch

# working directory
WORKDIR /app

# copy source code to working directory
COPY . app.py /app/

# install pkgs from requirements.txt
# hadolint ignore=DL3013
RUN pip install  --no-cache-dir --upgrade pip &&\
    pip install  --no-cache-dir --trusted-host pypi.python.org -r requirements.txt