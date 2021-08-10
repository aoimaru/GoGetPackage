[app/sources/347827398.Dockerfile]
digraph {
  "sha256:e61dfbc44937876da6d106dde3f84e0da55fb89e3261a2a984c13902c4695bb2" [label="docker-image://docker.io/library/ubuntu@sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3" shape="ellipse"];
  "sha256:1901fc49fbe76a1cb640165c9ac5e35b98b351f888b5928f8186866c64bde7ad" [label="/bin/sh -c apt-get update &&  apt-get install -y git-core python python-pip python-dev" shape="box"];
  "sha256:5a771465b6d6668415132bb6526e2a357a8b54cb9588ab96e02c8c84abf93be9" [label="/bin/sh -c cd /opt &&  git clone https://github.com/codedellemc/mars-challenge &&  cd /opt/mars-challenge/game-controller/tests/" shape="box"];
  "sha256:c446ec4c688db8933367ce4b6cd4b2dab2d1cbe5697ec6960fdba1461ad3c19a" [label="mkdir{path=/opt/mars-challenge/game-controller/tests}" shape="note"];
  "sha256:ae93bc28400f966ef318aa459789fc5aef83b3028853b2ba8ed43c4862418a01" [label="sha256:ae93bc28400f966ef318aa459789fc5aef83b3028853b2ba8ed43c4862418a01" shape="plaintext"];
  "sha256:e61dfbc44937876da6d106dde3f84e0da55fb89e3261a2a984c13902c4695bb2" -> "sha256:1901fc49fbe76a1cb640165c9ac5e35b98b351f888b5928f8186866c64bde7ad" [label=""];
  "sha256:1901fc49fbe76a1cb640165c9ac5e35b98b351f888b5928f8186866c64bde7ad" -> "sha256:5a771465b6d6668415132bb6526e2a357a8b54cb9588ab96e02c8c84abf93be9" [label=""];
  "sha256:5a771465b6d6668415132bb6526e2a357a8b54cb9588ab96e02c8c84abf93be9" -> "sha256:c446ec4c688db8933367ce4b6cd4b2dab2d1cbe5697ec6960fdba1461ad3c19a" [label=""];
  "sha256:c446ec4c688db8933367ce4b6cd4b2dab2d1cbe5697ec6960fdba1461ad3c19a" -> "sha256:ae93bc28400f966ef318aa459789fc5aef83b3028853b2ba8ed43c4862418a01" [label=""];
}

