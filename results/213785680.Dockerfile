[app/sources/213785680.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:73f0f63f106b2cdd34c2f33824d8b213d3acfd65d099595df86268399e3c4a62" [label="/bin/sh -c apt update &&     apt install --yes python-minimal iproute2 &&     rm /lib/systemd/system/getty@.service" shape="box"];
  "sha256:f4a974058fe0a4eab3dbd03d117d497dbfc7504262d7dfb8b575963f60e12037" [label="sha256:f4a974058fe0a4eab3dbd03d117d497dbfc7504262d7dfb8b575963f60e12037" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:73f0f63f106b2cdd34c2f33824d8b213d3acfd65d099595df86268399e3c4a62" [label=""];
  "sha256:73f0f63f106b2cdd34c2f33824d8b213d3acfd65d099595df86268399e3c4a62" -> "sha256:f4a974058fe0a4eab3dbd03d117d497dbfc7504262d7dfb8b575963f60e12037" [label=""];
}

