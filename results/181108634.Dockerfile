[app/sources/181108634.Dockerfile]
digraph {
  "sha256:7bdf6af8db803f48a7cb74e9171067b1acabd7be771ce2265326c81e7ead8f4b" [label="docker-image://docker.io/golang/buildlet-stage0:latest" shape="ellipse"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:e7364af44b9fd5c38dd2292138159f866586d12a9d5099d22f37a343f17a5ad0" [label="/bin/sh -c dpkg --add-architecture armel \t&& apt-get update && apt-get install -y \tbzip2 \tca-certificates \tcurl \tgit-core \tgcc \tlibc6-dev \tgcc-arm-linux-gnueabi \tlibc6-dev-armel-cross \tlinux-libc-dev:armel \tprocps \tlsof \tpsmisc \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:28947345abf60a3210f1e9b7b414999095d3866e07cd95ac4fba8f5a1348138d" [label="/bin/sh -c mkdir -p /go1.4-amd64 \t&& ( \t\tcurl --silent https://storage.googleapis.com/golang/go1.4.3.linux-amd64.tar.gz | tar -C /go1.4-amd64 -zxv \t) \t&& mv /go1.4-amd64/go /go1.4 \t&& rm -rf /go1.4-amd64 \t&& rm -rf /go1.4/pkg/linux_amd64_race \t\t/go1.4/api \t\t/go1.4/blog \t\t/go1.4/doc \t\t/go1.4/misc \t\t/go1.4/test \t&& find /go1.4 -type d -name testdata | xargs rm -rf" shape="box"];
  "sha256:5bc77da217ee6a2d635bfb8e69d2301c605a17267005b1d84cc3b126cd02b659" [label="copy{src=/go/bin/stage0, dest=/usr/local/bin/stage0}" shape="note"];
  "sha256:76e66a29fa4b672f90afe135714c080f217d3f5feab7cc35d05af0aa0c4d0302" [label="sha256:76e66a29fa4b672f90afe135714c080f217d3f5feab7cc35d05af0aa0c4d0302" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:e7364af44b9fd5c38dd2292138159f866586d12a9d5099d22f37a343f17a5ad0" [label=""];
  "sha256:e7364af44b9fd5c38dd2292138159f866586d12a9d5099d22f37a343f17a5ad0" -> "sha256:28947345abf60a3210f1e9b7b414999095d3866e07cd95ac4fba8f5a1348138d" [label=""];
  "sha256:28947345abf60a3210f1e9b7b414999095d3866e07cd95ac4fba8f5a1348138d" -> "sha256:5bc77da217ee6a2d635bfb8e69d2301c605a17267005b1d84cc3b126cd02b659" [label=""];
  "sha256:7bdf6af8db803f48a7cb74e9171067b1acabd7be771ce2265326c81e7ead8f4b" -> "sha256:5bc77da217ee6a2d635bfb8e69d2301c605a17267005b1d84cc3b126cd02b659" [label=""];
  "sha256:5bc77da217ee6a2d635bfb8e69d2301c605a17267005b1d84cc3b126cd02b659" -> "sha256:76e66a29fa4b672f90afe135714c080f217d3f5feab7cc35d05af0aa0c4d0302" [label=""];
}

