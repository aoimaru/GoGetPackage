[app/sources/219586328.Dockerfile]
digraph {
  "sha256:7e0af7e418a1f467e27acf4a694e7eb3457a122cdb3e1f4db5419ca8096b4ccb" [label="docker-image://docker.io/kaixhin/cuda-digits-deps:8.0" shape="ellipse"];
  "sha256:ca996a34eab2ca8794db9f4332b72b321aafd824aa2bb7119f1d0b670f7ee0f8" [label="/bin/sh -c cd /root/caffe &&   mkdir build && cd build &&   cmake .. &&   make -j\"$(nproc)\"" shape="box"];
  "sha256:335c1ecc59ccfab93175f07fb69c6f42416e693f4aa3c74b994e098b9225e144" [label="/bin/sh -c cd /root && git clone https://github.com/NVIDIA/DIGITS.git digits && cd digits &&   pip install -r requirements.txt" shape="box"];
  "sha256:ce7de86bf02dbd72d79e6bd5b6d991df8180d9bf21bf7384dbe62d09e5042d13" [label="mkdir{path=/root/digits}" shape="note"];
  "sha256:00246fc41305fa4198c1b334bb0de6d5c48673562d9b56f2ee9ed444bf17147e" [label="sha256:00246fc41305fa4198c1b334bb0de6d5c48673562d9b56f2ee9ed444bf17147e" shape="plaintext"];
  "sha256:7e0af7e418a1f467e27acf4a694e7eb3457a122cdb3e1f4db5419ca8096b4ccb" -> "sha256:ca996a34eab2ca8794db9f4332b72b321aafd824aa2bb7119f1d0b670f7ee0f8" [label=""];
  "sha256:ca996a34eab2ca8794db9f4332b72b321aafd824aa2bb7119f1d0b670f7ee0f8" -> "sha256:335c1ecc59ccfab93175f07fb69c6f42416e693f4aa3c74b994e098b9225e144" [label=""];
  "sha256:335c1ecc59ccfab93175f07fb69c6f42416e693f4aa3c74b994e098b9225e144" -> "sha256:ce7de86bf02dbd72d79e6bd5b6d991df8180d9bf21bf7384dbe62d09e5042d13" [label=""];
  "sha256:ce7de86bf02dbd72d79e6bd5b6d991df8180d9bf21bf7384dbe62d09e5042d13" -> "sha256:00246fc41305fa4198c1b334bb0de6d5c48673562d9b56f2ee9ed444bf17147e" [label=""];
}

