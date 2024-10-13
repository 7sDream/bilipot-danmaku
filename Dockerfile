FROM ghcr.io/astral-sh/uv:0.4.20-python3.12-alpine

WORKDIR /app

ENV UV_NO_CACHE=true UV_PYTHON_INSTALL_DIR=/app/python

COPY . .

RUN uv venv --no-progress --verbose && \
    uv sync --frozen --no-progress --verbose

ENTRYPOINT [ "uv", "run", "main.py" ]

CMD []

EXPOSE 9999/tcp

LABEL version="0.1.0"
LABEL maintainer="7sDream <i@7sdre.am>"
