[app/sources/252801696.Dockerfile]
digraph {
  "sha256:ab3db841fbe0ecbc2108d21eef9efb43c95026fb8e4d6846b580332726089b01" [label="docker-image://docker.io/library/python:2.7.9" shape="ellipse"];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" [label="local://context" shape="ellipse"];
  "sha256:d57cbda50d46da146f01b74cd28937d084e69b722f296d0e089807e45fc3adf6" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:599344572dffae3aed3d4ec69cdfdfc25ae2177eade0bcbb0a509b3ae64dea70" [label="/bin/sh -c pip install -r requirements.txt && pip install supervisor && pip install gunicorn && pip install psycopg2 && rm -f /requirements.txt" shape="box"];
  "sha256:c8e4a5f1f8c8e510fed0286e973bc88d6beeaedb906fc3c7334d687c1ff50e64" [label="/bin/sh -c mkdir /opentaxii && mkdir /data && mkdir /input" shape="box"];
  "sha256:60d621dd3d9833c44ebd0139211d74705cd16cdbd151e17ca4aad42274149247" [label="copy{src=/, dest=/opentaxii/}" shape="note"];
  "sha256:59e3287ca7f03166377f3fa2f3a0384f39940719167b4e2944a795ddc71510b9" [label="/bin/sh -c cd /opentaxii && python setup.py install && rm -rf /opentaxii" shape="box"];
  "sha256:c1c1a5351c5ffc9009c476143ce215d5b4d182aa9d67b0f9f3fe5c0e0ff4f9c8" [label="copy{src=/opentaxii/defaults.yml, dest=/opentaxii.yml}" shape="note"];
  "sha256:3c49b99f4531f9e5f3d6b059d3d59a1b8131070db863324f03316a8ba40a8c63" [label="copy{src=/docker/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6076541fb22a2cb15d431cde70bbf0752c2b72fe40571391288fec3fc2b74cb1" [label="copy{src=/docker/supervisord.conf, dest=/supervisord.conf}" shape="note"];
  "sha256:c40a2d89311d5342193c84ee8a75e25c095354322f01077981d3f3d3e635688b" [label="sha256:c40a2d89311d5342193c84ee8a75e25c095354322f01077981d3f3d3e635688b" shape="plaintext"];
  "sha256:ab3db841fbe0ecbc2108d21eef9efb43c95026fb8e4d6846b580332726089b01" -> "sha256:d57cbda50d46da146f01b74cd28937d084e69b722f296d0e089807e45fc3adf6" [label=""];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" -> "sha256:d57cbda50d46da146f01b74cd28937d084e69b722f296d0e089807e45fc3adf6" [label=""];
  "sha256:d57cbda50d46da146f01b74cd28937d084e69b722f296d0e089807e45fc3adf6" -> "sha256:599344572dffae3aed3d4ec69cdfdfc25ae2177eade0bcbb0a509b3ae64dea70" [label=""];
  "sha256:599344572dffae3aed3d4ec69cdfdfc25ae2177eade0bcbb0a509b3ae64dea70" -> "sha256:c8e4a5f1f8c8e510fed0286e973bc88d6beeaedb906fc3c7334d687c1ff50e64" [label=""];
  "sha256:c8e4a5f1f8c8e510fed0286e973bc88d6beeaedb906fc3c7334d687c1ff50e64" -> "sha256:60d621dd3d9833c44ebd0139211d74705cd16cdbd151e17ca4aad42274149247" [label=""];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" -> "sha256:60d621dd3d9833c44ebd0139211d74705cd16cdbd151e17ca4aad42274149247" [label=""];
  "sha256:60d621dd3d9833c44ebd0139211d74705cd16cdbd151e17ca4aad42274149247" -> "sha256:59e3287ca7f03166377f3fa2f3a0384f39940719167b4e2944a795ddc71510b9" [label=""];
  "sha256:59e3287ca7f03166377f3fa2f3a0384f39940719167b4e2944a795ddc71510b9" -> "sha256:c1c1a5351c5ffc9009c476143ce215d5b4d182aa9d67b0f9f3fe5c0e0ff4f9c8" [label=""];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" -> "sha256:c1c1a5351c5ffc9009c476143ce215d5b4d182aa9d67b0f9f3fe5c0e0ff4f9c8" [label=""];
  "sha256:c1c1a5351c5ffc9009c476143ce215d5b4d182aa9d67b0f9f3fe5c0e0ff4f9c8" -> "sha256:3c49b99f4531f9e5f3d6b059d3d59a1b8131070db863324f03316a8ba40a8c63" [label=""];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" -> "sha256:3c49b99f4531f9e5f3d6b059d3d59a1b8131070db863324f03316a8ba40a8c63" [label=""];
  "sha256:3c49b99f4531f9e5f3d6b059d3d59a1b8131070db863324f03316a8ba40a8c63" -> "sha256:6076541fb22a2cb15d431cde70bbf0752c2b72fe40571391288fec3fc2b74cb1" [label=""];
  "sha256:4ab1c8bc80c763bf687dbfc9e3bcb2822d999ef99b0cd70176c341b50a009560" -> "sha256:6076541fb22a2cb15d431cde70bbf0752c2b72fe40571391288fec3fc2b74cb1" [label=""];
  "sha256:6076541fb22a2cb15d431cde70bbf0752c2b72fe40571391288fec3fc2b74cb1" -> "sha256:c40a2d89311d5342193c84ee8a75e25c095354322f01077981d3f3d3e635688b" [label=""];
}

