# MkDocs Container Image

This Docker image is based on the official Python image and comes with MkDocs pre-installed. It provides a ready-to-use environment for creating, serving, and building MkDocs documentation without requiring a local Python installation.

Ideal for documentation projects, CI/CD pipelines, and containerized development workflows.

# Docker Hub repo

Link: [anawalinski/mkdocs-container](https://hub.docker.com/repository/docker/anawalinski/mkdocs-container)

## Documentation

The official MkDocs documentation is available here:

https://www.mkdocs.org/

## Usage

Below is an example of how to use this image with Docker Compose:

```
services:
  mkdocs:
    image: anawalinski/mkdocs-container:latest
    container_name: local-mkdocs
    ports:
      - "8000:8000"
    volumes:
      - ./docs:/usr/local/app/my-project
```
