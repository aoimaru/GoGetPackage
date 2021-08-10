[app/sources/266896246.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:a7445fbf759265ebc2e0840049d4727cfa27bb952990b4c052a1a4165a44a198" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends \t\tbuild-essential \t\tca-certificates \t\tcurl \t\tgccgo \t\tgit" shape="box"];
  "sha256:f3e424c236c65d15f2f32deced14a7fa8544fcf05f8d5201483ddee67ec159c7" [label="mkdir{path=/go/src/github.com/kassisol/docker-volume-git}" shape="note"];
  "sha256:7adc0ae898d9797b48c837fed3cb184b0168fcd20df0af44f84e3ecbfe38536f" [label="/bin/sh -c curl -sfL https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz | tar -xzC /usr/local" shape="box"];
  "sha256:a163e731f7f55137a53a114f20d755343de8585be1e6125507b221e375a64611" [label="/bin/sh -c curl -sfL ${DOCKER_URL} | tar -xzC /usr/local/src \t&& cp /usr/local/src/docker/docker /usr/bin/docker \t&& chmod +x /usr/bin/docker" shape="box"];
  "sha256:58779544ce18b021b9fc0af8b98e5d850511c38f0b5fa193c6e88609aa0df827" [label="/bin/sh -c curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m | sed 's/arm.*/arm/'` > /usr/bin/dapper \t&& chmod +x /usr/bin/dapper" shape="box"];
  "sha256:0a46c5f32f291cdfb32dcc15d83b817cb479ad6ca270be7af200939b08ec2fea" [label="sha256:0a46c5f32f291cdfb32dcc15d83b817cb479ad6ca270be7af200939b08ec2fea" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:a7445fbf759265ebc2e0840049d4727cfa27bb952990b4c052a1a4165a44a198" [label=""];
  "sha256:a7445fbf759265ebc2e0840049d4727cfa27bb952990b4c052a1a4165a44a198" -> "sha256:f3e424c236c65d15f2f32deced14a7fa8544fcf05f8d5201483ddee67ec159c7" [label=""];
  "sha256:f3e424c236c65d15f2f32deced14a7fa8544fcf05f8d5201483ddee67ec159c7" -> "sha256:7adc0ae898d9797b48c837fed3cb184b0168fcd20df0af44f84e3ecbfe38536f" [label=""];
  "sha256:7adc0ae898d9797b48c837fed3cb184b0168fcd20df0af44f84e3ecbfe38536f" -> "sha256:a163e731f7f55137a53a114f20d755343de8585be1e6125507b221e375a64611" [label=""];
  "sha256:a163e731f7f55137a53a114f20d755343de8585be1e6125507b221e375a64611" -> "sha256:58779544ce18b021b9fc0af8b98e5d850511c38f0b5fa193c6e88609aa0df827" [label=""];
  "sha256:58779544ce18b021b9fc0af8b98e5d850511c38f0b5fa193c6e88609aa0df827" -> "sha256:0a46c5f32f291cdfb32dcc15d83b817cb479ad6ca270be7af200939b08ec2fea" [label=""];
}

