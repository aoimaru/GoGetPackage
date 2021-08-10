[app/sources/252766196.Dockerfile]
digraph {
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" [label="local://context" shape="ellipse"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:ed757054fa903e19ee4baf7d31ee4bc5d1fc8c0780ddd7490f0b4d91b3560f8c" [label="/bin/sh -c apt-get update && apt-get -y install --no-install-recommendsvim dnsutils curl git bind9" shape="box"];
  "sha256:80fa8197e8ca230fb7a73938875b5c578e8888a1cab272d4806de588771c31b9" [label="mkdir{path=/etc/bind}" shape="note"];
  "sha256:cb20c19e7cb0805b3ffb507ee50fad0dbcd5ce4effc24410b20a1271cc887195" [label="copy{src=/named.conf.options, dest=/etc/bind/named.conf.options}" shape="note"];
  "sha256:8c6e5ba82d1e75407860215dc30329b5d0b16901e4f88135ca0f6c316f4caa5c" [label="copy{src=/named.conf.local, dest=/etc/bind/named.conf.local}" shape="note"];
  "sha256:c42bf7527c8006995ababfdaa12eea96d1f23a12878310ff81f5335fb85c2eb8" [label="copy{src=/named.conf.logging, dest=/etc/bind/named.conf.logging}" shape="note"];
  "sha256:e2708e67a90bf19d8e5a046701b56aae5198fbf01a75b8d922834b5ad17109f1" [label="copy{src=/named.recursion.conf, dest=/etc/bind/named.recursion.conf}" shape="note"];
  "sha256:fe377a436e242cc8836450b0bdb8e130be84feb999afd2e5b27da858702e34b6" [label="mkdir{path=/root}" shape="note"];
  "sha256:1c87848a40d884d7eab2e0cc5c223941737921ba87b921098db7bd489e70f1d0" [label="copy{src=/run.sh, dest=/root/}" shape="note"];
  "sha256:6d74ce084671117a6c1e7ea30f5efc81c25bcb0ab1ffd34b7d37cf4245860b43" [label="sha256:6d74ce084671117a6c1e7ea30f5efc81c25bcb0ab1ffd34b7d37cf4245860b43" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:ed757054fa903e19ee4baf7d31ee4bc5d1fc8c0780ddd7490f0b4d91b3560f8c" [label=""];
  "sha256:ed757054fa903e19ee4baf7d31ee4bc5d1fc8c0780ddd7490f0b4d91b3560f8c" -> "sha256:80fa8197e8ca230fb7a73938875b5c578e8888a1cab272d4806de588771c31b9" [label=""];
  "sha256:80fa8197e8ca230fb7a73938875b5c578e8888a1cab272d4806de588771c31b9" -> "sha256:cb20c19e7cb0805b3ffb507ee50fad0dbcd5ce4effc24410b20a1271cc887195" [label=""];
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" -> "sha256:cb20c19e7cb0805b3ffb507ee50fad0dbcd5ce4effc24410b20a1271cc887195" [label=""];
  "sha256:cb20c19e7cb0805b3ffb507ee50fad0dbcd5ce4effc24410b20a1271cc887195" -> "sha256:8c6e5ba82d1e75407860215dc30329b5d0b16901e4f88135ca0f6c316f4caa5c" [label=""];
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" -> "sha256:8c6e5ba82d1e75407860215dc30329b5d0b16901e4f88135ca0f6c316f4caa5c" [label=""];
  "sha256:8c6e5ba82d1e75407860215dc30329b5d0b16901e4f88135ca0f6c316f4caa5c" -> "sha256:c42bf7527c8006995ababfdaa12eea96d1f23a12878310ff81f5335fb85c2eb8" [label=""];
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" -> "sha256:c42bf7527c8006995ababfdaa12eea96d1f23a12878310ff81f5335fb85c2eb8" [label=""];
  "sha256:c42bf7527c8006995ababfdaa12eea96d1f23a12878310ff81f5335fb85c2eb8" -> "sha256:e2708e67a90bf19d8e5a046701b56aae5198fbf01a75b8d922834b5ad17109f1" [label=""];
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" -> "sha256:e2708e67a90bf19d8e5a046701b56aae5198fbf01a75b8d922834b5ad17109f1" [label=""];
  "sha256:e2708e67a90bf19d8e5a046701b56aae5198fbf01a75b8d922834b5ad17109f1" -> "sha256:fe377a436e242cc8836450b0bdb8e130be84feb999afd2e5b27da858702e34b6" [label=""];
  "sha256:fe377a436e242cc8836450b0bdb8e130be84feb999afd2e5b27da858702e34b6" -> "sha256:1c87848a40d884d7eab2e0cc5c223941737921ba87b921098db7bd489e70f1d0" [label=""];
  "sha256:d274dcf80f5f451e8395d1c0704fafbc375422b59e53c743fa684cf8aa9ec3b5" -> "sha256:1c87848a40d884d7eab2e0cc5c223941737921ba87b921098db7bd489e70f1d0" [label=""];
  "sha256:1c87848a40d884d7eab2e0cc5c223941737921ba87b921098db7bd489e70f1d0" -> "sha256:6d74ce084671117a6c1e7ea30f5efc81c25bcb0ab1ffd34b7d37cf4245860b43" [label=""];
}

