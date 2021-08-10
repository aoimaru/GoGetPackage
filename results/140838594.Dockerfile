[app/sources/140838594.Dockerfile]
digraph {
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" [label="local://context" shape="ellipse"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label="mkdir{path=/app}" shape="note"];
  "sha256:924988c15765796778ff7412ef59b60c9aacb005070de421b3075567ef7c4e3e" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:bc365ad9b1e4e647f3e81cf2b376be9f53b4f1b0fb762e14b44388b03a1eed9f" [label="/bin/sh -c apk --update add gcc git musl-dev libxml2-dev libxslt-dev libffi-dev openssl-dev         && pip install --cache-dir=/tmp/pipcache --upgrade setuptools pip         && pip install --cache-dir=/tmp/pipcache --requirement /app/requirements.txt         && rm -r /tmp/pipcache         && apk del gcc git musl-dev         && rm /var/cache/apk/*" shape="box"];
  "sha256:299d9cc51cb3ea076ccc5c9cbe3ef332b3de8daff1704551fee045f7527865da" [label="copy{src=/bin, dest=/app/bin}" shape="note"];
  "sha256:9abe002ff48e12e0097e33a24d13650ecd1eb44b367ef9d028aa63c3bc33c947" [label="copy{src=/config, dest=/app/config.sample}" shape="note"];
  "sha256:6eae933190a00acbf5a6d5ed90b09b09b61d6483bbc394c8f67c92a941895708" [label="copy{src=/hyphe_backend, dest=/app/hyphe_backend}" shape="note"];
  "sha256:b2fdbeb0e141f608724c5382b86baced5262e8a8f44aec8d4254799fa1779d3f" [label="copy{src=/docker-entrypoint.py, dest=/app/docker-entrypoint.py}" shape="note"];
  "sha256:00f571ee35d66554ca710b451969c421df39a86835cfd1d85792fa4d4c20d19c" [label="/bin/sh -c mkdir /app/config" shape="box"];
  "sha256:d52fee223ba9becd9ec46d44894d24200a851bfd79a275c28d9dde042bbd2d76" [label="/bin/sh -c chmod +x /app/docker-entrypoint.py" shape="box"];
  "sha256:923a2e410bfa7d228c8261e51b7c7929c47cc7917089793df301b3be554170e2" [label="/bin/sh -c chmod +x /app/hyphe_backend/core.tac" shape="box"];
  "sha256:b6666267acb6b3ae58d4d14ec09b0e2bf7efc0f60905420717e1e21d91456cfd" [label="sha256:b6666267acb6b3ae58d4d14ec09b0e2bf7efc0f60905420717e1e21d91456cfd" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" [label=""];
  "sha256:09c60ac75c7dd31d63958a1e21ea39549037aef357c3b59bb3adde4f976067e1" -> "sha256:924988c15765796778ff7412ef59b60c9aacb005070de421b3075567ef7c4e3e" [label=""];
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" -> "sha256:924988c15765796778ff7412ef59b60c9aacb005070de421b3075567ef7c4e3e" [label=""];
  "sha256:924988c15765796778ff7412ef59b60c9aacb005070de421b3075567ef7c4e3e" -> "sha256:bc365ad9b1e4e647f3e81cf2b376be9f53b4f1b0fb762e14b44388b03a1eed9f" [label=""];
  "sha256:bc365ad9b1e4e647f3e81cf2b376be9f53b4f1b0fb762e14b44388b03a1eed9f" -> "sha256:299d9cc51cb3ea076ccc5c9cbe3ef332b3de8daff1704551fee045f7527865da" [label=""];
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" -> "sha256:299d9cc51cb3ea076ccc5c9cbe3ef332b3de8daff1704551fee045f7527865da" [label=""];
  "sha256:299d9cc51cb3ea076ccc5c9cbe3ef332b3de8daff1704551fee045f7527865da" -> "sha256:9abe002ff48e12e0097e33a24d13650ecd1eb44b367ef9d028aa63c3bc33c947" [label=""];
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" -> "sha256:9abe002ff48e12e0097e33a24d13650ecd1eb44b367ef9d028aa63c3bc33c947" [label=""];
  "sha256:9abe002ff48e12e0097e33a24d13650ecd1eb44b367ef9d028aa63c3bc33c947" -> "sha256:6eae933190a00acbf5a6d5ed90b09b09b61d6483bbc394c8f67c92a941895708" [label=""];
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" -> "sha256:6eae933190a00acbf5a6d5ed90b09b09b61d6483bbc394c8f67c92a941895708" [label=""];
  "sha256:6eae933190a00acbf5a6d5ed90b09b09b61d6483bbc394c8f67c92a941895708" -> "sha256:b2fdbeb0e141f608724c5382b86baced5262e8a8f44aec8d4254799fa1779d3f" [label=""];
  "sha256:89916bcdcf310fc68e2700a1dd1b89f415226e00639efbd6eb574fbde4f76a62" -> "sha256:b2fdbeb0e141f608724c5382b86baced5262e8a8f44aec8d4254799fa1779d3f" [label=""];
  "sha256:b2fdbeb0e141f608724c5382b86baced5262e8a8f44aec8d4254799fa1779d3f" -> "sha256:00f571ee35d66554ca710b451969c421df39a86835cfd1d85792fa4d4c20d19c" [label=""];
  "sha256:00f571ee35d66554ca710b451969c421df39a86835cfd1d85792fa4d4c20d19c" -> "sha256:d52fee223ba9becd9ec46d44894d24200a851bfd79a275c28d9dde042bbd2d76" [label=""];
  "sha256:d52fee223ba9becd9ec46d44894d24200a851bfd79a275c28d9dde042bbd2d76" -> "sha256:923a2e410bfa7d228c8261e51b7c7929c47cc7917089793df301b3be554170e2" [label=""];
  "sha256:923a2e410bfa7d228c8261e51b7c7929c47cc7917089793df301b3be554170e2" -> "sha256:b6666267acb6b3ae58d4d14ec09b0e2bf7efc0f60905420717e1e21d91456cfd" [label=""];
}

