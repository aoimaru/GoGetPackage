[app/sources/377998827.Dockerfile]
digraph {
  "sha256:e7fdcc4d9edad963ab19ee794f24f32de66742c2303ea55eb7071dc21466a7f8" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a09c089a8049a3fc69ec4378b7254e19db2b89655bf51045e54e7167739b7a73" [label="/bin/sh -c apt-get update && apt-get install -y git     python python-dev python-pip &&     apt-get clean" shape="box"];
  "sha256:c29e91b28e502f594d6df8905ed8316baf31079616627d34d462abf84b9b5faf" [label="copy{src=/demo, dest=/mmc_demo}" shape="note"];
  "sha256:86a6355afeac9415d895411940f54264662644fce0100f591310c726b812436e" [label="/bin/sh -c pip install -r /mmc_demo/requirements.txt" shape="box"];
  "sha256:aaa45f728f90f1e135c5463ea92dfe4d79b41c1b8661bf65369fdc8ef203a2e8" [label="/bin/sh -c python /mmc_demo/manage.py syncdb --noinput" shape="box"];
  "sha256:9719c72bfb62e395509db82ab52721cf0f4fe84a944891b2ca34fb8c5e35b8ca" [label="/bin/sh -c python /mmc_demo/manage.py migrate --noinput" shape="box"];
  "sha256:757e674f0c65f5521d4259208333a7fa67114322b9ba854daa2c204594dc7202" [label="/bin/sh -c python /mmc_demo/manage.py loaddata /mmc_demo/auth.json" shape="box"];
  "sha256:9ec13d3846ed6326981414c65799365c599b6c39a3a209dcedbbe4ed9abd1629" [label="/bin/sh -c /bin/bash -c 'python /mmc_demo/manage.py test_command >& /dev/null'" shape="box"];
  "sha256:e267454dd3ce65620a2f0b099ad9bc97ca03ca11e6b067273cc991573c194181" [label="/bin/sh -c /bin/bash -c 'python /mmc_demo/manage.py test_command_noargs >& /dev/null'" shape="box"];
  "sha256:a9116686b12b706e26f5649e13937e6ba6a5ed1b8a43e32d3c8119816f811307" [label="/bin/sh -c /bin/bash -c 'python /mmc_demo/manage.py test_command_error >& /dev/null || true'" shape="box"];
  "sha256:7eebcf7f6b38a846f4139ba863302dacd5d2fe056112bb65b7fc3a0aa2f999f5" [label="/bin/sh -c /bin/bash -c 'python /mmc_demo/manage.py test_command_killed >& /dev/null || true'" shape="box"];
  "sha256:45cb3edfea2aeda85898ad0579fbe90a59bdd4ce907623731da039881a61da4e" [label="sha256:45cb3edfea2aeda85898ad0579fbe90a59bdd4ce907623731da039881a61da4e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a09c089a8049a3fc69ec4378b7254e19db2b89655bf51045e54e7167739b7a73" [label=""];
  "sha256:a09c089a8049a3fc69ec4378b7254e19db2b89655bf51045e54e7167739b7a73" -> "sha256:c29e91b28e502f594d6df8905ed8316baf31079616627d34d462abf84b9b5faf" [label=""];
  "sha256:e7fdcc4d9edad963ab19ee794f24f32de66742c2303ea55eb7071dc21466a7f8" -> "sha256:c29e91b28e502f594d6df8905ed8316baf31079616627d34d462abf84b9b5faf" [label=""];
  "sha256:c29e91b28e502f594d6df8905ed8316baf31079616627d34d462abf84b9b5faf" -> "sha256:86a6355afeac9415d895411940f54264662644fce0100f591310c726b812436e" [label=""];
  "sha256:86a6355afeac9415d895411940f54264662644fce0100f591310c726b812436e" -> "sha256:aaa45f728f90f1e135c5463ea92dfe4d79b41c1b8661bf65369fdc8ef203a2e8" [label=""];
  "sha256:aaa45f728f90f1e135c5463ea92dfe4d79b41c1b8661bf65369fdc8ef203a2e8" -> "sha256:9719c72bfb62e395509db82ab52721cf0f4fe84a944891b2ca34fb8c5e35b8ca" [label=""];
  "sha256:9719c72bfb62e395509db82ab52721cf0f4fe84a944891b2ca34fb8c5e35b8ca" -> "sha256:757e674f0c65f5521d4259208333a7fa67114322b9ba854daa2c204594dc7202" [label=""];
  "sha256:757e674f0c65f5521d4259208333a7fa67114322b9ba854daa2c204594dc7202" -> "sha256:9ec13d3846ed6326981414c65799365c599b6c39a3a209dcedbbe4ed9abd1629" [label=""];
  "sha256:9ec13d3846ed6326981414c65799365c599b6c39a3a209dcedbbe4ed9abd1629" -> "sha256:e267454dd3ce65620a2f0b099ad9bc97ca03ca11e6b067273cc991573c194181" [label=""];
  "sha256:e267454dd3ce65620a2f0b099ad9bc97ca03ca11e6b067273cc991573c194181" -> "sha256:a9116686b12b706e26f5649e13937e6ba6a5ed1b8a43e32d3c8119816f811307" [label=""];
  "sha256:a9116686b12b706e26f5649e13937e6ba6a5ed1b8a43e32d3c8119816f811307" -> "sha256:7eebcf7f6b38a846f4139ba863302dacd5d2fe056112bb65b7fc3a0aa2f999f5" [label=""];
  "sha256:7eebcf7f6b38a846f4139ba863302dacd5d2fe056112bb65b7fc3a0aa2f999f5" -> "sha256:45cb3edfea2aeda85898ad0579fbe90a59bdd4ce907623731da039881a61da4e" [label=""];
}

