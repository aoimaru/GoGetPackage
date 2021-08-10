[app/sources/275219506.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0cae127c13d5e6d101a9e00d21e62f6a7fe8d7d7659da4d624d1acf4fe87e21f" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends --no-install-suggests -y                          build-essential                          cmake                          git                          ca-certificates                          wget                           libpcre3                          libpcre3-dev                           libz-dev                          libcurl4-gnutls-dev" shape="box"];
  "sha256:0be796d14d31b612f04996f75c431eb3441fd1e9b26fb33b5464af23aef8f43b" [label="local://context" shape="ellipse"];
  "sha256:25d3b18577ad7eeb56b079798f6d8ae9d29d8912e86246fce3bb81ec2135c3d4" [label="copy{src=/build_modules.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:117b72aa40716b3c374b2fb505e7a55d83f270e916399a20e7e00a11ea22875c" [label="sha256:117b72aa40716b3c374b2fb505e7a55d83f270e916399a20e7e00a11ea22875c" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0cae127c13d5e6d101a9e00d21e62f6a7fe8d7d7659da4d624d1acf4fe87e21f" [label=""];
  "sha256:0cae127c13d5e6d101a9e00d21e62f6a7fe8d7d7659da4d624d1acf4fe87e21f" -> "sha256:25d3b18577ad7eeb56b079798f6d8ae9d29d8912e86246fce3bb81ec2135c3d4" [label=""];
  "sha256:0be796d14d31b612f04996f75c431eb3441fd1e9b26fb33b5464af23aef8f43b" -> "sha256:25d3b18577ad7eeb56b079798f6d8ae9d29d8912e86246fce3bb81ec2135c3d4" [label=""];
  "sha256:25d3b18577ad7eeb56b079798f6d8ae9d29d8912e86246fce3bb81ec2135c3d4" -> "sha256:117b72aa40716b3c374b2fb505e7a55d83f270e916399a20e7e00a11ea22875c" [label=""];
}

