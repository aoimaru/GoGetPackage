[app/sources/179557581.Dockerfile]
digraph {
  "sha256:11a6e25205f0f6449064e1ec8d2068edb980fcfd2ae927881e39b91ab76b3c21" [label="local://context" shape="ellipse"];
  "sha256:19e40862fd68f883a359f1616c52b6214af899d4f60729b4cd172f8fbf1e9d79" [label="docker-image://docker.io/library/golang:1.4-wheezy" shape="ellipse"];
  "sha256:5a0983c4b8b721b2fcc9c83f260d28960de231673d9129fbdc8ea85bcba7d695" [label="/bin/sh -c echo \"deb http://http.debian.net/debian wheezy-backports main\" >> /etc/apt/sources.list.d/backports.list &&     apt-get update &&     apt-get -y upgrade &&     apt-get install -y --no-install-recommends haproxy" shape="box"];
  "sha256:ef6668d63f714e755eb588bdf59cfe852bea03ce5bbf7233dfd1d49fc83aeb02" [label="copy{src=/haproxy.cfg.template, dest=/etc/haproxy/haproxy.cfg.template}" shape="note"];
  "sha256:be1e2f0ef5c9ec6ee916e3c41ee8a36da4d9b7ac4ef1f918b888023bf4b88b23" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:9b9f3e01503cd41857128a21262ca221bd5c497ba5bb71f40e391ed3a314f60f" [label="copy{src=/src, dest=/go/src}" shape="note"];
  "sha256:be2e94c8cc1964ded989d58509ae56b2d3169458a330026bdd82ebd3cf1369e3" [label="/bin/sh -c GOPATH=/go go get github.com/bobrik/marathoner/..." shape="box"];
  "sha256:f45b20f8e12e95b8a2de3c4cb532182ad4faf2f1b0fac79d9ea5c9871cc6fb26" [label="sha256:f45b20f8e12e95b8a2de3c4cb532182ad4faf2f1b0fac79d9ea5c9871cc6fb26" shape="plaintext"];
  "sha256:19e40862fd68f883a359f1616c52b6214af899d4f60729b4cd172f8fbf1e9d79" -> "sha256:5a0983c4b8b721b2fcc9c83f260d28960de231673d9129fbdc8ea85bcba7d695" [label=""];
  "sha256:5a0983c4b8b721b2fcc9c83f260d28960de231673d9129fbdc8ea85bcba7d695" -> "sha256:ef6668d63f714e755eb588bdf59cfe852bea03ce5bbf7233dfd1d49fc83aeb02" [label=""];
  "sha256:11a6e25205f0f6449064e1ec8d2068edb980fcfd2ae927881e39b91ab76b3c21" -> "sha256:ef6668d63f714e755eb588bdf59cfe852bea03ce5bbf7233dfd1d49fc83aeb02" [label=""];
  "sha256:ef6668d63f714e755eb588bdf59cfe852bea03ce5bbf7233dfd1d49fc83aeb02" -> "sha256:be1e2f0ef5c9ec6ee916e3c41ee8a36da4d9b7ac4ef1f918b888023bf4b88b23" [label=""];
  "sha256:11a6e25205f0f6449064e1ec8d2068edb980fcfd2ae927881e39b91ab76b3c21" -> "sha256:be1e2f0ef5c9ec6ee916e3c41ee8a36da4d9b7ac4ef1f918b888023bf4b88b23" [label=""];
  "sha256:be1e2f0ef5c9ec6ee916e3c41ee8a36da4d9b7ac4ef1f918b888023bf4b88b23" -> "sha256:9b9f3e01503cd41857128a21262ca221bd5c497ba5bb71f40e391ed3a314f60f" [label=""];
  "sha256:11a6e25205f0f6449064e1ec8d2068edb980fcfd2ae927881e39b91ab76b3c21" -> "sha256:9b9f3e01503cd41857128a21262ca221bd5c497ba5bb71f40e391ed3a314f60f" [label=""];
  "sha256:9b9f3e01503cd41857128a21262ca221bd5c497ba5bb71f40e391ed3a314f60f" -> "sha256:be2e94c8cc1964ded989d58509ae56b2d3169458a330026bdd82ebd3cf1369e3" [label=""];
  "sha256:be2e94c8cc1964ded989d58509ae56b2d3169458a330026bdd82ebd3cf1369e3" -> "sha256:f45b20f8e12e95b8a2de3c4cb532182ad4faf2f1b0fac79d9ea5c9871cc6fb26" [label=""];
}

