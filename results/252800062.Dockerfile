[app/sources/252800062.Dockerfile]
digraph {
  "sha256:66219966da2cd7b3e1b7566b6a34bba4e07e32a83f33c6ebf85971458d391c7d" [label="docker-image://docker.io/library/httpd:latest" shape="ellipse"];
  "sha256:8c1e7c5b03856ca652d96d9be7eefcaa23f1de005a49ef22c1b6a2ccea623e34" [label="local://context" shape="ellipse"];
  "sha256:a3a0f541cffc303be73e775f2846b2e6e3093be4c2de7fe4bdf5c9519741985c" [label="copy{src=/dist, dest=/usr/local/apache2/htdocs/}" shape="note"];
  "sha256:047e0eb2a4a332fef701f573edd6f1cc81f5d16275970d726aa0cf7d56c73811" [label="sha256:047e0eb2a4a332fef701f573edd6f1cc81f5d16275970d726aa0cf7d56c73811" shape="plaintext"];
  "sha256:66219966da2cd7b3e1b7566b6a34bba4e07e32a83f33c6ebf85971458d391c7d" -> "sha256:a3a0f541cffc303be73e775f2846b2e6e3093be4c2de7fe4bdf5c9519741985c" [label=""];
  "sha256:8c1e7c5b03856ca652d96d9be7eefcaa23f1de005a49ef22c1b6a2ccea623e34" -> "sha256:a3a0f541cffc303be73e775f2846b2e6e3093be4c2de7fe4bdf5c9519741985c" [label=""];
  "sha256:a3a0f541cffc303be73e775f2846b2e6e3093be4c2de7fe4bdf5c9519741985c" -> "sha256:047e0eb2a4a332fef701f573edd6f1cc81f5d16275970d726aa0cf7d56c73811" [label=""];
}

