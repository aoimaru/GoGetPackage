[app/sources/462334031.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:7cab3084b388f22b9d17335871e0dc3e5a5be01797f15d3b2b082fa336ff004f" [label="local://context" shape="ellipse"];
  "sha256:e68e1e264ef13a7021ecb82378884ec9088418f600e239479dc6f51a3debdb2e" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:a8fb0c09f45c5eddfa737aa86f772b493053c5df6d619ce593efbde17cbea990" [label="/bin/sh -c mkdir -p /etc/nginx/html" shape="box"];
  "sha256:b915ff16ed5a162a08c8423c1d43934a8d0fa877e13592ccefa20e646820a23e" [label="copy{src=/index.html, dest=/etc/nginx/html/index.html}" shape="note"];
  "sha256:f514705b7bc21f6f909a799b3c1d648b1d7ba46db26cb7c27d0b29f08aee7878" [label="/bin/sh -c apt-get update -y && apt-get install -y netcat" shape="box"];
  "sha256:c972d048d002f729eb67b58222d7e50685673d7047b24948037a5b8fe9d97cfb" [label="copy{src=/entrypoint.sh, dest=/tmp/entrypoint.sh}" shape="note"];
  "sha256:30337c40316eda84e324996e1fc069c3b6889025479e22c5c2a26805eab4a9ab" [label="/bin/sh -c chmod +x /tmp/entrypoint.sh" shape="box"];
  "sha256:8c3b58ab7ce263499946d483632b6b1c7da3e3a56e9a0a71f0c8822d4286be96" [label="sha256:8c3b58ab7ce263499946d483632b6b1c7da3e3a56e9a0a71f0c8822d4286be96" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e68e1e264ef13a7021ecb82378884ec9088418f600e239479dc6f51a3debdb2e" [label=""];
  "sha256:7cab3084b388f22b9d17335871e0dc3e5a5be01797f15d3b2b082fa336ff004f" -> "sha256:e68e1e264ef13a7021ecb82378884ec9088418f600e239479dc6f51a3debdb2e" [label=""];
  "sha256:e68e1e264ef13a7021ecb82378884ec9088418f600e239479dc6f51a3debdb2e" -> "sha256:a8fb0c09f45c5eddfa737aa86f772b493053c5df6d619ce593efbde17cbea990" [label=""];
  "sha256:a8fb0c09f45c5eddfa737aa86f772b493053c5df6d619ce593efbde17cbea990" -> "sha256:b915ff16ed5a162a08c8423c1d43934a8d0fa877e13592ccefa20e646820a23e" [label=""];
  "sha256:7cab3084b388f22b9d17335871e0dc3e5a5be01797f15d3b2b082fa336ff004f" -> "sha256:b915ff16ed5a162a08c8423c1d43934a8d0fa877e13592ccefa20e646820a23e" [label=""];
  "sha256:b915ff16ed5a162a08c8423c1d43934a8d0fa877e13592ccefa20e646820a23e" -> "sha256:f514705b7bc21f6f909a799b3c1d648b1d7ba46db26cb7c27d0b29f08aee7878" [label=""];
  "sha256:f514705b7bc21f6f909a799b3c1d648b1d7ba46db26cb7c27d0b29f08aee7878" -> "sha256:c972d048d002f729eb67b58222d7e50685673d7047b24948037a5b8fe9d97cfb" [label=""];
  "sha256:7cab3084b388f22b9d17335871e0dc3e5a5be01797f15d3b2b082fa336ff004f" -> "sha256:c972d048d002f729eb67b58222d7e50685673d7047b24948037a5b8fe9d97cfb" [label=""];
  "sha256:c972d048d002f729eb67b58222d7e50685673d7047b24948037a5b8fe9d97cfb" -> "sha256:30337c40316eda84e324996e1fc069c3b6889025479e22c5c2a26805eab4a9ab" [label=""];
  "sha256:30337c40316eda84e324996e1fc069c3b6889025479e22c5c2a26805eab4a9ab" -> "sha256:8c3b58ab7ce263499946d483632b6b1c7da3e3a56e9a0a71f0c8822d4286be96" [label=""];
}

