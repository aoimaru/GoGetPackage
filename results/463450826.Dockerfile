[app/sources/463450826.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:562e95ed45b10ffdc8648e8aa4f71915e4ad1565b936b4f4aaaf56389b1c38b0" [label="/bin/sh -c adduser -D minikube" shape="box"];
  "sha256:598ef0a0a4d430864cdf4bb193c867a2117c6de084c3edab32bf5007e2ece823" [label="local://context" shape="ellipse"];
  "sha256:07385e4517b1493479e48180e400fe5dcbacf46714bf8b34164d25b27b488097" [label="copy{src=/tmp/_output/bin/minikube, dest=/usr/local/bin/minikube}" shape="note"];
  "sha256:6bea4b4b3db66513909a0df834d3e39fd01e5dc2cdf90cab4c96e995c42cb659" [label="sha256:6bea4b4b3db66513909a0df834d3e39fd01e5dc2cdf90cab4c96e995c42cb659" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:562e95ed45b10ffdc8648e8aa4f71915e4ad1565b936b4f4aaaf56389b1c38b0" [label=""];
  "sha256:562e95ed45b10ffdc8648e8aa4f71915e4ad1565b936b4f4aaaf56389b1c38b0" -> "sha256:07385e4517b1493479e48180e400fe5dcbacf46714bf8b34164d25b27b488097" [label=""];
  "sha256:598ef0a0a4d430864cdf4bb193c867a2117c6de084c3edab32bf5007e2ece823" -> "sha256:07385e4517b1493479e48180e400fe5dcbacf46714bf8b34164d25b27b488097" [label=""];
  "sha256:07385e4517b1493479e48180e400fe5dcbacf46714bf8b34164d25b27b488097" -> "sha256:6bea4b4b3db66513909a0df834d3e39fd01e5dc2cdf90cab4c96e995c42cb659" [label=""];
}

