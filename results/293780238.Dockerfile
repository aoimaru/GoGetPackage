[app/sources/293780238.Dockerfile]
digraph {
  "sha256:cfff3ea099fb1b21d9ba851d928114597d6b5cc472d8887b5efc25779aebc040" [label="local://context" shape="ellipse"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:ea720c267d9b4fcf43b4bfc24eaf4db9baa5973264dc0bdaaa7c6fbb0e2424a0" [label="copy{src=/build/libs/config-service-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:93a41e6d692b192e9a5e7c98ae112427800aec1db29b9d4fa24339814672e439" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:0bff1978b278c41afc5fb5e0ac8c46fce0a36dca01e6ead687249c55dfc686a6" [label="sha256:0bff1978b278c41afc5fb5e0ac8c46fce0a36dca01e6ead687249c55dfc686a6" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:ea720c267d9b4fcf43b4bfc24eaf4db9baa5973264dc0bdaaa7c6fbb0e2424a0" [label=""];
  "sha256:cfff3ea099fb1b21d9ba851d928114597d6b5cc472d8887b5efc25779aebc040" -> "sha256:ea720c267d9b4fcf43b4bfc24eaf4db9baa5973264dc0bdaaa7c6fbb0e2424a0" [label=""];
  "sha256:ea720c267d9b4fcf43b4bfc24eaf4db9baa5973264dc0bdaaa7c6fbb0e2424a0" -> "sha256:93a41e6d692b192e9a5e7c98ae112427800aec1db29b9d4fa24339814672e439" [label=""];
  "sha256:93a41e6d692b192e9a5e7c98ae112427800aec1db29b9d4fa24339814672e439" -> "sha256:0bff1978b278c41afc5fb5e0ac8c46fce0a36dca01e6ead687249c55dfc686a6" [label=""];
}

