FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim
RUN apt-get update
RUN apt-get -y install git

# Clone the package
WORKDIR /usr/src
RUN git clone https://github.com/tgrohens/test_cowsay.git

# Install Python environment
WORKDIR /usr/src/test_cowsay
RUN uv sync --frozen
RUN uv pip install .

