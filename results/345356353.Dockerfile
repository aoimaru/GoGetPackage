[app/sources/345356353.Dockerfile]
digraph {
  "sha256:dedbd65df8ba1bed49131c8cc72716d42d0bf6b111f8a0ef6c4d4b988c1f322c" [label="docker-image://docker.io/balenalib/armv7hf-debian:sid-build" shape="ellipse"];
  "sha256:6dde770fe4d46d98098732efb373042751c0ef05863c6a146033419ddb56e4cf" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:851cf197b42b43d02bbd054f8c8a076784db79eb73e1d307b2f714a33b9cf531" [label="sha256:851cf197b42b43d02bbd054f8c8a076784db79eb73e1d307b2f714a33b9cf531" shape="plaintext"];
  "sha256:dedbd65df8ba1bed49131c8cc72716d42d0bf6b111f8a0ef6c4d4b988c1f322c" -> "sha256:6dde770fe4d46d98098732efb373042751c0ef05863c6a146033419ddb56e4cf" [label=""];
  "sha256:6dde770fe4d46d98098732efb373042751c0ef05863c6a146033419ddb56e4cf" -> "sha256:851cf197b42b43d02bbd054f8c8a076784db79eb73e1d307b2f714a33b9cf531" [label=""];
}

