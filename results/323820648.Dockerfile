[app/sources/323820648.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:08cf2c461114aebd6859a10e2e960d21ae6b42276012003716effd4e89016680" [label="local://context" shape="ellipse"];
  "sha256:f9e46cdf21dbceba2e6f2c260c63ff5738733f315899114c366f9b2614a4a3f1" [label="copy{src=/config2.jar, dest=/app.jar}" shape="note"];
  "sha256:04cb946cfaf44123faf50913f61a40260991c45518bf9392049c811097ae0f4e" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:1fcb228ea3613ed4e2696a091c458d617a35293003aabef0a55b2e9d3c4db176" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:5c650f3b2f36c7036d58f406b1d431a0eeaf1500a1f0b6becf5869a2fa397b1d" [label="sha256:5c650f3b2f36c7036d58f406b1d431a0eeaf1500a1f0b6becf5869a2fa397b1d" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:f9e46cdf21dbceba2e6f2c260c63ff5738733f315899114c366f9b2614a4a3f1" [label=""];
  "sha256:08cf2c461114aebd6859a10e2e960d21ae6b42276012003716effd4e89016680" -> "sha256:f9e46cdf21dbceba2e6f2c260c63ff5738733f315899114c366f9b2614a4a3f1" [label=""];
  "sha256:f9e46cdf21dbceba2e6f2c260c63ff5738733f315899114c366f9b2614a4a3f1" -> "sha256:04cb946cfaf44123faf50913f61a40260991c45518bf9392049c811097ae0f4e" [label=""];
  "sha256:04cb946cfaf44123faf50913f61a40260991c45518bf9392049c811097ae0f4e" -> "sha256:1fcb228ea3613ed4e2696a091c458d617a35293003aabef0a55b2e9d3c4db176" [label=""];
  "sha256:1fcb228ea3613ed4e2696a091c458d617a35293003aabef0a55b2e9d3c4db176" -> "sha256:5c650f3b2f36c7036d58f406b1d431a0eeaf1500a1f0b6becf5869a2fa397b1d" [label=""];
}

