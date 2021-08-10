[app/sources/367915174.Dockerfile]
digraph {
  "sha256:81dab9e4cb94ac16820e0cc194e7cbc4af3b745a7eca4b23ad643b215f23572d" [label="local://context" shape="ellipse"];
  "sha256:9f7e6ad3cb90b3dcffe6d61465718d8c81e77ffd15eb04d736d70aeea9c2054a" [label="docker-image://docker.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:0b61d97a16c19ed3e69eb1f87720fc6ffabd4440774a5b00a1ec386877259668" [label="/bin/sh -c apt-get update -y && apt-get install -y make gcc g++ bzip2 hdf5-tools unzip gfortran curl" shape="box"];
  "sha256:557cdcd6f412c5f1c478dfa9f876908d90aea539efc93f80e84f603a5478e7af" [label="/bin/sh -c mkdir -p /opt/julia-1.0.0 &&     curl -s -L https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz | tar -C /opt/julia-1.0.0 -x -z --strip-components=1 -f -" shape="box"];
  "sha256:6d8783449de3e3748e26c44a535629bf9ce920a85ee9d2bcb32b264314c026f6" [label="copy{src=/setup.jl, dest=/}" shape="note"];
  "sha256:5568f92941ebdc0b536e76b2bab53e25f96f1f7cd0218862a0d212c9ab75af75" [label="/bin/sh -c /opt/julia-1.0.0/bin/julia setup.jl" shape="box"];
  "sha256:96ddde6c3e2c93339d4ff08f15c22f32bc5090ecc30fa6bb270d5cf26e652f0b" [label="/bin/sh -c echo \"\\nPATH=/opt/julia-1.0.0/bin:\\$PATH\\n\" >> /root/.bashrc" shape="box"];
  "sha256:47929c31319dc4698a252ec488de3b4ce6d4a5397f466d40bd6846d717230fe8" [label="sha256:47929c31319dc4698a252ec488de3b4ce6d4a5397f466d40bd6846d717230fe8" shape="plaintext"];
  "sha256:9f7e6ad3cb90b3dcffe6d61465718d8c81e77ffd15eb04d736d70aeea9c2054a" -> "sha256:0b61d97a16c19ed3e69eb1f87720fc6ffabd4440774a5b00a1ec386877259668" [label=""];
  "sha256:0b61d97a16c19ed3e69eb1f87720fc6ffabd4440774a5b00a1ec386877259668" -> "sha256:557cdcd6f412c5f1c478dfa9f876908d90aea539efc93f80e84f603a5478e7af" [label=""];
  "sha256:557cdcd6f412c5f1c478dfa9f876908d90aea539efc93f80e84f603a5478e7af" -> "sha256:6d8783449de3e3748e26c44a535629bf9ce920a85ee9d2bcb32b264314c026f6" [label=""];
  "sha256:81dab9e4cb94ac16820e0cc194e7cbc4af3b745a7eca4b23ad643b215f23572d" -> "sha256:6d8783449de3e3748e26c44a535629bf9ce920a85ee9d2bcb32b264314c026f6" [label=""];
  "sha256:6d8783449de3e3748e26c44a535629bf9ce920a85ee9d2bcb32b264314c026f6" -> "sha256:5568f92941ebdc0b536e76b2bab53e25f96f1f7cd0218862a0d212c9ab75af75" [label=""];
  "sha256:5568f92941ebdc0b536e76b2bab53e25f96f1f7cd0218862a0d212c9ab75af75" -> "sha256:96ddde6c3e2c93339d4ff08f15c22f32bc5090ecc30fa6bb270d5cf26e652f0b" [label=""];
  "sha256:96ddde6c3e2c93339d4ff08f15c22f32bc5090ecc30fa6bb270d5cf26e652f0b" -> "sha256:47929c31319dc4698a252ec488de3b4ce6d4a5397f466d40bd6846d717230fe8" [label=""];
}

