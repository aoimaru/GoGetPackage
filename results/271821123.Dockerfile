[app/sources/271821123.Dockerfile]
digraph {
  "sha256:038a6008bccfbca8666203e46e4976acdead169d012ff5e1e24880a6a3742d5a" [label="docker-image://docker.io/prom/prometheus:v2.5.0" shape="ellipse"];
  "sha256:949a64017b82201d251b374109f4632246e655636dc8627c172c4eca9e8afcfe" [label="local://context" shape="ellipse"];
  "sha256:309cd1f705a12db96dbeac0c1c345b6e01c261289bac68e6c2f08de9538dab81" [label="copy{src=/conf, dest=/etc/prometheus/}" shape="note"];
  "sha256:f68d0349584e9588b50134372feae41adb184c9ffc4777845e6143131f60c8fa" [label="sha256:f68d0349584e9588b50134372feae41adb184c9ffc4777845e6143131f60c8fa" shape="plaintext"];
  "sha256:038a6008bccfbca8666203e46e4976acdead169d012ff5e1e24880a6a3742d5a" -> "sha256:309cd1f705a12db96dbeac0c1c345b6e01c261289bac68e6c2f08de9538dab81" [label=""];
  "sha256:949a64017b82201d251b374109f4632246e655636dc8627c172c4eca9e8afcfe" -> "sha256:309cd1f705a12db96dbeac0c1c345b6e01c261289bac68e6c2f08de9538dab81" [label=""];
  "sha256:309cd1f705a12db96dbeac0c1c345b6e01c261289bac68e6c2f08de9538dab81" -> "sha256:f68d0349584e9588b50134372feae41adb184c9ffc4777845e6143131f60c8fa" [label=""];
}

