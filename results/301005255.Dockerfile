[app/sources/301005255.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:b3e01be96f5df4076965d5f71f666bc174aa9982d058eded529ab6ab7b26e4d2" [label="/bin/sh -c apk --no-cache add python py-pip py-psutil &&     pip install --no-cache-dir zktraffic &&     apk del py-pip" shape="box"];
  "sha256:267d14bdd73dc9c6220ee8db314e75df6ff92ee7b795163965152122c7471bf1" [label="sha256:267d14bdd73dc9c6220ee8db314e75df6ff92ee7b795163965152122c7471bf1" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b3e01be96f5df4076965d5f71f666bc174aa9982d058eded529ab6ab7b26e4d2" [label=""];
  "sha256:b3e01be96f5df4076965d5f71f666bc174aa9982d058eded529ab6ab7b26e4d2" -> "sha256:267d14bdd73dc9c6220ee8db314e75df6ff92ee7b795163965152122c7471bf1" [label=""];
}

