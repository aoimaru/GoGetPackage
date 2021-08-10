[app/sources/333953056.Dockerfile]
digraph {
  "sha256:b6e7d1452a1d954f93c81f4c13be277e665e1b65ae3fb99dba69f1da6e2761fc" [label="docker-image://docker.io/library/python:3.7.2-alpine" shape="ellipse"];
  "sha256:2ab9c6244e2d06422c763341b81640109a3d4ddac4787cebe11654ea246e5ecc" [label="mkdir{path=/usr/src/scripts}" shape="note"];
  "sha256:9d7eca2b42b99cdc9b61f111c8ebd65e628f2bcbe72df21af0ea3ec29bd918d6" [label="local://context" shape="ellipse"];
  "sha256:3e8bda91217e7c8d1b90de8c0fdb2187aec07cd07df6011502ade5d834fbe12b" [label="copy{src=/requirements.txt, dest=/usr/src/scripts/}" shape="note"];
  "sha256:ab8d798c0ff3e93c52bb8171d9deca3312f679685ef1ea91ff0637b7418b320f" [label="/bin/sh -c apk --update --upgrade --no-cache add git libxml2 libxslt       && apk --update --upgrade --no-cache add --virtual deps alpine-sdk python3-dev libxml2-dev libxslt-dev       && pip install -r requirements.txt       && apk del deps" shape="box"];
  "sha256:b14f21531c9ac56f536d975fdfece590b7e3d7216f1f777c5d7a970e87df3bae" [label="copy{src=/, dest=/usr/src/scripts/}" shape="note"];
  "sha256:20a9dc630e3edfe71ae38c96d480ca0804a4a0cdaa5f589905757b1adae11654" [label="/bin/sh -c chmod +x docker-entrypoint.sh" shape="box"];
  "sha256:6332224d39fa6340305273aab3cf7f9271452e3981c94dff72c17b9518ea5b18" [label="sha256:6332224d39fa6340305273aab3cf7f9271452e3981c94dff72c17b9518ea5b18" shape="plaintext"];
  "sha256:b6e7d1452a1d954f93c81f4c13be277e665e1b65ae3fb99dba69f1da6e2761fc" -> "sha256:2ab9c6244e2d06422c763341b81640109a3d4ddac4787cebe11654ea246e5ecc" [label=""];
  "sha256:2ab9c6244e2d06422c763341b81640109a3d4ddac4787cebe11654ea246e5ecc" -> "sha256:3e8bda91217e7c8d1b90de8c0fdb2187aec07cd07df6011502ade5d834fbe12b" [label=""];
  "sha256:9d7eca2b42b99cdc9b61f111c8ebd65e628f2bcbe72df21af0ea3ec29bd918d6" -> "sha256:3e8bda91217e7c8d1b90de8c0fdb2187aec07cd07df6011502ade5d834fbe12b" [label=""];
  "sha256:3e8bda91217e7c8d1b90de8c0fdb2187aec07cd07df6011502ade5d834fbe12b" -> "sha256:ab8d798c0ff3e93c52bb8171d9deca3312f679685ef1ea91ff0637b7418b320f" [label=""];
  "sha256:ab8d798c0ff3e93c52bb8171d9deca3312f679685ef1ea91ff0637b7418b320f" -> "sha256:b14f21531c9ac56f536d975fdfece590b7e3d7216f1f777c5d7a970e87df3bae" [label=""];
  "sha256:9d7eca2b42b99cdc9b61f111c8ebd65e628f2bcbe72df21af0ea3ec29bd918d6" -> "sha256:b14f21531c9ac56f536d975fdfece590b7e3d7216f1f777c5d7a970e87df3bae" [label=""];
  "sha256:b14f21531c9ac56f536d975fdfece590b7e3d7216f1f777c5d7a970e87df3bae" -> "sha256:20a9dc630e3edfe71ae38c96d480ca0804a4a0cdaa5f589905757b1adae11654" [label=""];
  "sha256:20a9dc630e3edfe71ae38c96d480ca0804a4a0cdaa5f589905757b1adae11654" -> "sha256:6332224d39fa6340305273aab3cf7f9271452e3981c94dff72c17b9518ea5b18" [label=""];
}

