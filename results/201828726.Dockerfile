[app/sources/201828726.Dockerfile]
digraph {
  "sha256:e87ceb08929bc113f0763dcaef5e35e38a5a3d5b3a528fd15b1d0f4f058cfbef" [label="docker-image://docker.io/starkandwayne/concourse:latest" shape="ellipse"];
  "sha256:9eedc3a85e03825f47edb576ed8573d77a50d394a327c9d465c34633749f5e88" [label="/bin/sh -c apt-get update &&   apt-get install -yy curl file openjdk-8-jdk maven &&   apt-get remove  -yy openjdk-11-jre-headless &&   java -version" shape="box"];
  "sha256:7966c23292e2a1a7c3c12489ca6a54b114aa4a472db88ad495449e2437ca2dea" [label="/bin/sh -c /var/lib/dpkg/info/ca-certificates-java.postinst configure" shape="box"];
  "sha256:1f49b645db48376d07c9ff085edcf3bf57f5fab77764b75fb933d27dc5ba5d9c" [label="sha256:1f49b645db48376d07c9ff085edcf3bf57f5fab77764b75fb933d27dc5ba5d9c" shape="plaintext"];
  "sha256:e87ceb08929bc113f0763dcaef5e35e38a5a3d5b3a528fd15b1d0f4f058cfbef" -> "sha256:9eedc3a85e03825f47edb576ed8573d77a50d394a327c9d465c34633749f5e88" [label=""];
  "sha256:9eedc3a85e03825f47edb576ed8573d77a50d394a327c9d465c34633749f5e88" -> "sha256:7966c23292e2a1a7c3c12489ca6a54b114aa4a472db88ad495449e2437ca2dea" [label=""];
  "sha256:7966c23292e2a1a7c3c12489ca6a54b114aa4a472db88ad495449e2437ca2dea" -> "sha256:1f49b645db48376d07c9ff085edcf3bf57f5fab77764b75fb933d27dc5ba5d9c" [label=""];
}

