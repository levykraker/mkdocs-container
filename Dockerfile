FROM python:3.14

WORKDIR /usr/local/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdocs new template

WORKDIR /usr/local/app/template

RUN mkdocs build

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /usr/local/app/my-project

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mkdocs", "serve", "--dev-addr", "0.0.0.0:8000"]