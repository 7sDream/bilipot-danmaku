FROM ghcr.io/astral-sh/uv:0.4.20-python3.12-alpine

WORKDIR /app

ENV UV_NO_CACHE=true

COPY . .

RUN apk add dumb-init && \
    uv venv --no-progress --verbose && \
    uv sync --frozen --no-progress --verbose

CMD [ "dumb-init", "uv", "run", "main.py" ]

# Flask need this signal to gracefully stop
STOPSIGNAL SIGINT

EXPOSE 9999/tcp

LABEL org.opencontainers.image.authors="7sDream <i@7sdre.am>"
LABEL org.opencontainers.image.url="https://github.com/7sDream/bilipot-danmaku"
LABEL org.opencontainers.image.source="https://github.com/7sDream/bilipot-danmaku"
LABEL org.opencontainers.image.version="0.1.0"
