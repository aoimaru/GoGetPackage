[app/sources/281823399.Dockerfile]
digraph {
  "sha256:b571413acbae74cd932a97573480b3fdbd5bc471e6c24cae8f254c55a9490c17" [label="docker-image://docker.io/amancevice/superset:0.20.4" shape="ellipse"];
  "sha256:4785f73ae0112025301ddbf891ee190b149850cda1518a10eb1e8aaee0950cd4" [label="local://context" shape="ellipse"];
  "sha256:90278d3f5719de2c4ed67c103f983eff933f516f1c07b1b3c2cb63c57e09dbfb" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:72913bb3549b6efd23767daeab4bfc31b9f45f7cdfde8244f713110c4d0513d3" [label="/bin/sh -c pip3 install --requirement  /tmp/requirements.txt" shape="box"];
  "sha256:c58e67514651be3ad8c3a2160db29f13975a6b934238750668cfe2aa62f73da9" [label="sha256:c58e67514651be3ad8c3a2160db29f13975a6b934238750668cfe2aa62f73da9" shape="plaintext"];
  "sha256:b571413acbae74cd932a97573480b3fdbd5bc471e6c24cae8f254c55a9490c17" -> "sha256:90278d3f5719de2c4ed67c103f983eff933f516f1c07b1b3c2cb63c57e09dbfb" [label=""];
  "sha256:4785f73ae0112025301ddbf891ee190b149850cda1518a10eb1e8aaee0950cd4" -> "sha256:90278d3f5719de2c4ed67c103f983eff933f516f1c07b1b3c2cb63c57e09dbfb" [label=""];
  "sha256:90278d3f5719de2c4ed67c103f983eff933f516f1c07b1b3c2cb63c57e09dbfb" -> "sha256:72913bb3549b6efd23767daeab4bfc31b9f45f7cdfde8244f713110c4d0513d3" [label=""];
  "sha256:72913bb3549b6efd23767daeab4bfc31b9f45f7cdfde8244f713110c4d0513d3" -> "sha256:c58e67514651be3ad8c3a2160db29f13975a6b934238750668cfe2aa62f73da9" [label=""];
}

