FROM python

LABEL version="1.0"
LABEL description="Django instance"

# RUN apt-get update \
#     && apt-get upgrade -y \
#     && apt-get install -y python3 python3-pip \
#     && rm -rf /var/lib/apt/lists/*
# this deletes useless repo

RUN python3 -m pip install --upgrade pip wheel

COPY requirements.txt /

RUN python3 -m pip install --root-user-action=ignore -r requirements.txt

COPY run.sh /

WORKDIR /usr/src/app

ENTRYPOINT ["bash", "/run.sh"]
