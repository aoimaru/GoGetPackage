[app/sources/179726974.Dockerfile]
digraph {
  "sha256:8da21dc87b03242bdfaeeec6435a4f2817d39676f2209af8e8883b2ae3e7df5d" [label="docker-image://docker.io/mato/rumprun-toolchain-hw-x86_64:latest" shape="ellipse"];
  "sha256:5b2b39664ca38ed229c2ce62aff499093be6e79145cf477916951e8cf7d68278" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5cf527299b7224161370137f99d758ad489bf61082fa514fc4a933461ebf3f1b" [label="/bin/sh -c apt-get install -y --no-install-recommends   qemu" shape="box"];
  "sha256:cc659e33b6d870e40d3c35bd9209e449d84762b5b5916a1a883145dc60ea9311" [label="local://context" shape="ellipse"];
  "sha256:f730dc24827a0854a879f3111ad054c53c9f0838b807449bbbb2eb9cbba6719b" [label="copy{src=/docker/x86_64-rumprun-netbsd/runtest.rs, dest=/tmp/}" shape="note"];
  "sha256:6af91e56117157280fe9c82245d6be68cfa84c33ac4a3c92f2c81ac04eef09c8" [label="sha256:6af91e56117157280fe9c82245d6be68cfa84c33ac4a3c92f2c81ac04eef09c8" shape="plaintext"];
  "sha256:8da21dc87b03242bdfaeeec6435a4f2817d39676f2209af8e8883b2ae3e7df5d" -> "sha256:5b2b39664ca38ed229c2ce62aff499093be6e79145cf477916951e8cf7d68278" [label=""];
  "sha256:5b2b39664ca38ed229c2ce62aff499093be6e79145cf477916951e8cf7d68278" -> "sha256:5cf527299b7224161370137f99d758ad489bf61082fa514fc4a933461ebf3f1b" [label=""];
  "sha256:5cf527299b7224161370137f99d758ad489bf61082fa514fc4a933461ebf3f1b" -> "sha256:f730dc24827a0854a879f3111ad054c53c9f0838b807449bbbb2eb9cbba6719b" [label=""];
  "sha256:cc659e33b6d870e40d3c35bd9209e449d84762b5b5916a1a883145dc60ea9311" -> "sha256:f730dc24827a0854a879f3111ad054c53c9f0838b807449bbbb2eb9cbba6719b" [label=""];
  "sha256:f730dc24827a0854a879f3111ad054c53c9f0838b807449bbbb2eb9cbba6719b" -> "sha256:6af91e56117157280fe9c82245d6be68cfa84c33ac4a3c92f2c81ac04eef09c8" [label=""];
}

