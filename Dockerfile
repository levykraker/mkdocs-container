FROM python:3.14.6-slim

WORKDIR /usr/local/app

COPY requirements.txt ./

RUN python -m ensurepip --upgrade

RUN pip install --upgrade pip

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdocs new template

WORKDIR /usr/local/app/template

RUN mkdocs build

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /usr/local/app/my-project

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mkdocs", "serve", "--dev-addr", "0.0.0.0:8000"]