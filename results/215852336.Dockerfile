[app/sources/215852336.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:8166adc5d93b8c4634c497083f96641468a4167d6c40c2d4ce31a2e64dff62c8" [label="/bin/sh -c apt-get update && apt-get install -y \tbzip2 \tca-certificates \tcurl \tgit-core \tgcc \tlibc6-dev \tgcc-s390x-linux-gnu \tlibc6-dev-s390x-cross \tprocps \tlsof \tpsmisc \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fb52b9d6d4684adf44f355e0b3a74b6ccd6f06c422014c6bdc3ca657ace38b61" [label="/bin/sh -c mkdir -p /go1.4-amd64 \t&& ( \t\tcurl --silent https://storage.googleapis.com/golang/go1.4.3.linux-amd64.tar.gz | tar -C /go1.4-amd64 -zxv \t) \t&& mv /go1.4-amd64/go /go1.4 \t&& rm -rf /go1.4-amd64 \t&& rm -rf /go1.4/pkg/linux_amd64_race \t\t/go1.4/api \t\t/go1.4/blog \t\t/go1.4/doc \t\t/go1.4/misc \t\t/go1.4/test \t&& find /go1.4 -type d -name testdata | xargs rm -rf" shape="box"];
  "sha256:cbd4520829cde7b53f43b88e1be23cb0a67829b824289a931b2c4745355f00f1" [label="/bin/sh -c curl -o /usr/local/bin/stage0 https://storage.googleapis.com/go-builder-data/buildlet-stage0.linux-amd64-kube \t&& chmod +x /usr/local/bin/stage0" shape="box"];
  "sha256:285e3ece6d5f6b3472a8aa7ac45221ab383700fbced8911a2fd80efefe335443" [label="sha256:285e3ece6d5f6b3472a8aa7ac45221ab383700fbced8911a2fd80efefe335443" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:8166adc5d93b8c4634c497083f96641468a4167d6c40c2d4ce31a2e64dff62c8" [label=""];
  "sha256:8166adc5d93b8c4634c497083f96641468a4167d6c40c2d4ce31a2e64dff62c8" -> "sha256:fb52b9d6d4684adf44f355e0b3a74b6ccd6f06c422014c6bdc3ca657ace38b61" [label=""];
  "sha256:fb52b9d6d4684adf44f355e0b3a74b6ccd6f06c422014c6bdc3ca657ace38b61" -> "sha256:cbd4520829cde7b53f43b88e1be23cb0a67829b824289a931b2c4745355f00f1" [label=""];
  "sha256:cbd4520829cde7b53f43b88e1be23cb0a67829b824289a931b2c4745355f00f1" -> "sha256:285e3ece6d5f6b3472a8aa7ac45221ab383700fbced8911a2fd80efefe335443" [label=""];
}

