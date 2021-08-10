[app/sources/147435310.Dockerfile]
digraph {
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" [label="docker-image://quay.io/pypa/manylinux1_x86_64@sha256:a18711aa1ffe3e65e489d808d17f68f5c75c9a0275d657aa52aa04bc79cdfddb" shape="ellipse"];
  "sha256:ab52443c2c1e43e749ac1aa18fa925705c44747e07c95d6406b91ee7b80e6065" [label="/bin/sh -c yum install -y libtool" shape="box"];
  "sha256:07cb29b217f6a18342c62921c8fbbe7089e3ed381b403050413dc68c16b65272" [label="/bin/sh -c /opt/python/cp27-cp27mu/bin/pip install twine" shape="box"];
  "sha256:91a6551ccff4e559813625f2228a63c4f4cba62add41054812d2e1b7933fd66f" [label="local://context" shape="ellipse"];
  "sha256:cf53e08c1b34febaa77a1dd5e323df3d7cade313fdd7d45dbf00c4ae992113c1" [label="copy{src=/protobuf_optimized_pip.sh, dest=/}" shape="note"];
  "sha256:b74cb72595587013f0bb32b3061952af2c090684b4d0c0a97513624538f28acf" [label="sha256:b74cb72595587013f0bb32b3061952af2c090684b4d0c0a97513624538f28acf" shape="plaintext"];
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" -> "sha256:ab52443c2c1e43e749ac1aa18fa925705c44747e07c95d6406b91ee7b80e6065" [label=""];
  "sha256:ab52443c2c1e43e749ac1aa18fa925705c44747e07c95d6406b91ee7b80e6065" -> "sha256:07cb29b217f6a18342c62921c8fbbe7089e3ed381b403050413dc68c16b65272" [label=""];
  "sha256:07cb29b217f6a18342c62921c8fbbe7089e3ed381b403050413dc68c16b65272" -> "sha256:cf53e08c1b34febaa77a1dd5e323df3d7cade313fdd7d45dbf00c4ae992113c1" [label=""];
  "sha256:91a6551ccff4e559813625f2228a63c4f4cba62add41054812d2e1b7933fd66f" -> "sha256:cf53e08c1b34febaa77a1dd5e323df3d7cade313fdd7d45dbf00c4ae992113c1" [label=""];
  "sha256:cf53e08c1b34febaa77a1dd5e323df3d7cade313fdd7d45dbf00c4ae992113c1" -> "sha256:b74cb72595587013f0bb32b3061952af2c090684b4d0c0a97513624538f28acf" [label=""];
}

