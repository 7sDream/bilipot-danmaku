# BiliPot Danmaku

本项目代码源自[lm379/subtitle]，主要是为了将其构建为 Docker 镜像方便直接部署在本机使用。

## 使用方法

### Docker 镜像

```bash
docker run -d -p 127.0.0.1:9999:9999/tcp ghcr.io/7sDream/bilipot-danmaku:latest
```

### 直接本地使用

先安装 [`uv`]。

```bash
uv python install
uv venv
uv sync --frozen
uv run main.py
```

[lm379/subtitle]: https://github.com/lm379/subtitle
[`uv`]: https://docs.astral.sh/uv/getting-started/installation/
