[app/sources/358673703.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:73617cd62600dcee9659955edceda4d75aead6d527288140d66f884c4e5a1ca8" [label="/bin/sh -c apt-get update && apt-get install -y \tbuild-essential \tpython-pip \twget" shape="box"];
  "sha256:f623005e139a98a85928ab2d6a3fb0e1b0243ca4f78964a7324c79156223b10c" [label="/bin/sh -c pip install numpy && pip install biopython" shape="box"];
  "sha256:e66414d2e28c118d6f4e601789069ca89f580b38d1b7225e9b208ba64c87cf44" [label="/bin/sh -c wget bioinf.comav.upv.es/downloads/$VERSION.tar.gz -O /home/biodocker/bin/$VERSION.tar.gz && \tcd /home/biodocker/bin/ && tar -xvzf $VERSION.tar.gz && cd $VERSION" shape="box"];
  "sha256:1576198bf0a1be6e10f44e99e12a47143ca50af87b436a141d935efe7fceb823" [label="/bin/sh -c cd /home/biodocker/bin/$VERSION && python setup.py install" shape="box"];
  "sha256:b0e8e411fdbd86b5ceb6984db4bfb56630d24bd3581f205415237152d81cad2a" [label="mkdir{path=/data}" shape="note"];
  "sha256:0dc3f340c7b84e17627626cd242c1c3ae1764b4afdfe041c2462708d277ffd18" [label="sha256:0dc3f340c7b84e17627626cd242c1c3ae1764b4afdfe041c2462708d277ffd18" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:73617cd62600dcee9659955edceda4d75aead6d527288140d66f884c4e5a1ca8" [label=""];
  "sha256:73617cd62600dcee9659955edceda4d75aead6d527288140d66f884c4e5a1ca8" -> "sha256:f623005e139a98a85928ab2d6a3fb0e1b0243ca4f78964a7324c79156223b10c" [label=""];
  "sha256:f623005e139a98a85928ab2d6a3fb0e1b0243ca4f78964a7324c79156223b10c" -> "sha256:e66414d2e28c118d6f4e601789069ca89f580b38d1b7225e9b208ba64c87cf44" [label=""];
  "sha256:e66414d2e28c118d6f4e601789069ca89f580b38d1b7225e9b208ba64c87cf44" -> "sha256:1576198bf0a1be6e10f44e99e12a47143ca50af87b436a141d935efe7fceb823" [label=""];
  "sha256:1576198bf0a1be6e10f44e99e12a47143ca50af87b436a141d935efe7fceb823" -> "sha256:b0e8e411fdbd86b5ceb6984db4bfb56630d24bd3581f205415237152d81cad2a" [label=""];
  "sha256:b0e8e411fdbd86b5ceb6984db4bfb56630d24bd3581f205415237152d81cad2a" -> "sha256:0dc3f340c7b84e17627626cd242c1c3ae1764b4afdfe041c2462708d277ffd18" [label=""];
}

