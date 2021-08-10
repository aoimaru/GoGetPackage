[app/sources/235369779.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" [label="mkdir{path=/app}" shape="note"];
  "sha256:58d0e0f4d6a7331ef116eddafd7605440445bb6c0ad2b73a5f67e39378524b34" [label="/bin/sh -c apk add --no-cache     build-base     jpeg-dev     zlib-dev     postgresql-dev     postgresql-client" shape="box"];
  "sha256:ca73f7dcff28bb27d4f14e9cf4c4c0c173dae69f314285df1ca02d3ff907d51c" [label="/bin/sh -c pip install pipenv" shape="box"];
  "sha256:55f48cfdaf78101999e5a90197a37769ec6eb1b9c36a9448be15b7fc4b99b88c" [label="local://context" shape="ellipse"];
  "sha256:b05095ec8990890db9048d03166efb742ed3224bdfb839d591b979bca18aff92" [label="copy{src=/Pipfile, dest=/app/},copy{src=/Pipfile.lock, dest=/app/}" shape="note"];
  "sha256:bc1925fce8575814ae7362f2db66e94167a300cffb111fd7832c2992ea06e0f5" [label="/bin/sh -c pipenv install -d" shape="box"];
  "sha256:dbd7293b3381ec9cbb47e52a062d8701577dd28fd7e1aa9bc23984501596522b" [label="sha256:dbd7293b3381ec9cbb47e52a062d8701577dd28fd7e1aa9bc23984501596522b" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" [label=""];
  "sha256:de048f316891203fd3514c00b9b3af474cd336b2adea4c0dee88e6534152cc2a" -> "sha256:58d0e0f4d6a7331ef116eddafd7605440445bb6c0ad2b73a5f67e39378524b34" [label=""];
  "sha256:58d0e0f4d6a7331ef116eddafd7605440445bb6c0ad2b73a5f67e39378524b34" -> "sha256:ca73f7dcff28bb27d4f14e9cf4c4c0c173dae69f314285df1ca02d3ff907d51c" [label=""];
  "sha256:ca73f7dcff28bb27d4f14e9cf4c4c0c173dae69f314285df1ca02d3ff907d51c" -> "sha256:b05095ec8990890db9048d03166efb742ed3224bdfb839d591b979bca18aff92" [label=""];
  "sha256:55f48cfdaf78101999e5a90197a37769ec6eb1b9c36a9448be15b7fc4b99b88c" -> "sha256:b05095ec8990890db9048d03166efb742ed3224bdfb839d591b979bca18aff92" [label=""];
  "sha256:b05095ec8990890db9048d03166efb742ed3224bdfb839d591b979bca18aff92" -> "sha256:bc1925fce8575814ae7362f2db66e94167a300cffb111fd7832c2992ea06e0f5" [label=""];
  "sha256:bc1925fce8575814ae7362f2db66e94167a300cffb111fd7832c2992ea06e0f5" -> "sha256:dbd7293b3381ec9cbb47e52a062d8701577dd28fd7e1aa9bc23984501596522b" [label=""];
}

