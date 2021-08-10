[app/sources/206059662.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:9448724f18d560a7805f685c5bbee4c205bcf3db644d405c386b9ac4f6572f23" [label="local://context" shape="ellipse"];
  "sha256:3a5bf9ff12e364e200b50608d8d390a7070d514a433e272c8f17f3504a019ecf" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:2dcc1be158c1ab43105e62b783535b284bb849f540f1fdc9cc8aaf00cc1aaf48" [label="sha256:2dcc1be158c1ab43105e62b783535b284bb849f540f1fdc9cc8aaf00cc1aaf48" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:3a5bf9ff12e364e200b50608d8d390a7070d514a433e272c8f17f3504a019ecf" [label=""];
  "sha256:9448724f18d560a7805f685c5bbee4c205bcf3db644d405c386b9ac4f6572f23" -> "sha256:3a5bf9ff12e364e200b50608d8d390a7070d514a433e272c8f17f3504a019ecf" [label=""];
  "sha256:3a5bf9ff12e364e200b50608d8d390a7070d514a433e272c8f17f3504a019ecf" -> "sha256:2dcc1be158c1ab43105e62b783535b284bb849f540f1fdc9cc8aaf00cc1aaf48" [label=""];
}

