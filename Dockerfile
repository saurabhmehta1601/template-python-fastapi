FROM python:3.8.16-slim

# default installs
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    python3-dev \
    python3-setuptools \
    gcc \
    make

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt

# create a virtualenv
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/python -m pip install pip --upgrade && \
    /opt/venv/bin/python -m pip install -r /app/requirements.txt

# purge unused
RUN apt-get remove -y --purge make gcc build-essential \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY  . .

# make entrypoint executable
RUN chmod +x ./src/entrypoint.sh

# run the app
CMD ["./src/entrypoint.sh"]