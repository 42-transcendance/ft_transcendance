FROM debian:bullseye

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*
# this deletes useless repo

RUN python3 -m pip install --upgrade pip wheel

COPY . /

RUN python3 -m pip install --root-user-action=ignore -r requirements.txt

LABEL version="1.0"
LABEL description="Django instance"

WORKDIR /var/www

ENTRYPOINT ["bash", "/run.sh"]
# for testing purposes
