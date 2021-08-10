[app/sources/357938650.Dockerfile]
digraph {
  "sha256:b03c9fbac299f9a9ef33b629a1dbf12d985f179c93d7f66a78cd88a259b487a4" [label="docker-image://docker.io/lsiobase/python:arm32v7-3.9" shape="ellipse"];
  "sha256:5c33ddf7f459df653a6d54f46b5a9172ea7509c2c6147d3b0d49bda1e6878954" [label="/bin/sh -c echo \"**** install runtime packages ****\" &&  apk add --no-cache         jq &&  echo \"**** install pip packages ****\" &&  pip install --no-cache-dir -U \tcherrypy &&  echo \"**** install app ****\" &&  git clone --depth 1 https://github.com/Hellowlol/HTPC-Manager.git /app/htpcmanager &&  echo \"**** cleanup ****\" &&  rm -rf \t/root/.cache \t/tmp/*" shape="box"];
  "sha256:a458ec781c93c71ac5742bea0228eef2c6f3b105dc261752a35a747fcf06d2cb" [label="local://context" shape="ellipse"];
  "sha256:ba508b3694da59ac642068773371fa3e15e564f13ac19d69d3c4dc0124f6079e" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:be7e7c8f503fb98a6206c88d793238f3827f2d35554799b8923355d55a36eddc" [label="sha256:be7e7c8f503fb98a6206c88d793238f3827f2d35554799b8923355d55a36eddc" shape="plaintext"];
  "sha256:b03c9fbac299f9a9ef33b629a1dbf12d985f179c93d7f66a78cd88a259b487a4" -> "sha256:5c33ddf7f459df653a6d54f46b5a9172ea7509c2c6147d3b0d49bda1e6878954" [label=""];
  "sha256:5c33ddf7f459df653a6d54f46b5a9172ea7509c2c6147d3b0d49bda1e6878954" -> "sha256:ba508b3694da59ac642068773371fa3e15e564f13ac19d69d3c4dc0124f6079e" [label=""];
  "sha256:a458ec781c93c71ac5742bea0228eef2c6f3b105dc261752a35a747fcf06d2cb" -> "sha256:ba508b3694da59ac642068773371fa3e15e564f13ac19d69d3c4dc0124f6079e" [label=""];
  "sha256:ba508b3694da59ac642068773371fa3e15e564f13ac19d69d3c4dc0124f6079e" -> "sha256:be7e7c8f503fb98a6206c88d793238f3827f2d35554799b8923355d55a36eddc" [label=""];
}

