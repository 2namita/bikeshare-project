# syntax = docker/dockerfile:1.4

FROM python:3.11-slim 

WORKDIR /app

COPY requirements.txt ./
COPY ./app ./app
COPY ./dist/bikeshare_model-0.0.1-py3-none-any.whl ./dist/

RUN pip install --no-cache-dir -r requirements.txt 

#COPY . .

CMD ["fastapi", "run", "app/main.py", "--port", "8001"]
# RUN <<EOF
# apt-get update
# apt-get install -y --no-install-recommends git
# EOF

# RUN <<EOF
# useradd -s /bin/bash -m vscode
# groupadd docker
# usermod -aG docker vscode
# EOF

# install Docker tools (cli, buildx, compose)
#COPY --from=gloursdocker/docker / /
