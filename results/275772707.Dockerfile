[app/sources/275772707.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:b69397f413d4120551188ed24ce929e9ef43cb8929f97800b1287a2a5afd112c" [label="apk add --no-cache musl-dev g++ make python3 python3-dev swig" shape="box"];
  "sha256:ed197dad7c6bf223000c2c5557ffe536aca676c64386290e98ab72583243c91b" [label="/bin/sh -c wget https://pari.math.u-bordeaux.fr/pub/pari/unix/pari-2.9.3.tar.gz     && tar -xzf pari-2.9.3.tar.gz     && cd pari-2.9.3     && ./Configure     && make install" shape="box"];
  "sha256:778198c8a386a6c9825e2d168fda12f9ef2e9ee3a382f18e75fc521a82c7faa9" [label="mkdir /PyAono" shape="box"];
  "sha256:8ceae5fd0c853adb43e1bb8026de95a636f5e303fc3bd09d4a578bd9773452df" [label="local://context" shape="ellipse"];
  "sha256:115c0c68f6da4903fd682b898c0b6f69becd1bc21c3b5407bffcef2c0e36b181" [label="copy{src=/, dest=/PyAono}" shape="note"];
  "sha256:a488dcde93831e114f7c2e4c1eaedf74393be1953056cf1d4a2788e70c9d4dfe" [label="mkdir{path=/PyAono}" shape="note"];
  "sha256:e380043cf46e55a21a5cb1e099a74e3ecf671d206e33b7196842e740d6072d11" [label="/bin/sh -c make compile" shape="box"];
  "sha256:75b4fc39c37b7360af0010026bea670a8059878701bbc20cad08c6a73cb4fa5c" [label="sha256:75b4fc39c37b7360af0010026bea670a8059878701bbc20cad08c6a73cb4fa5c" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:b69397f413d4120551188ed24ce929e9ef43cb8929f97800b1287a2a5afd112c" [label=""];
  "sha256:b69397f413d4120551188ed24ce929e9ef43cb8929f97800b1287a2a5afd112c" -> "sha256:ed197dad7c6bf223000c2c5557ffe536aca676c64386290e98ab72583243c91b" [label=""];
  "sha256:ed197dad7c6bf223000c2c5557ffe536aca676c64386290e98ab72583243c91b" -> "sha256:778198c8a386a6c9825e2d168fda12f9ef2e9ee3a382f18e75fc521a82c7faa9" [label=""];
  "sha256:778198c8a386a6c9825e2d168fda12f9ef2e9ee3a382f18e75fc521a82c7faa9" -> "sha256:115c0c68f6da4903fd682b898c0b6f69becd1bc21c3b5407bffcef2c0e36b181" [label=""];
  "sha256:8ceae5fd0c853adb43e1bb8026de95a636f5e303fc3bd09d4a578bd9773452df" -> "sha256:115c0c68f6da4903fd682b898c0b6f69becd1bc21c3b5407bffcef2c0e36b181" [label=""];
  "sha256:115c0c68f6da4903fd682b898c0b6f69becd1bc21c3b5407bffcef2c0e36b181" -> "sha256:a488dcde93831e114f7c2e4c1eaedf74393be1953056cf1d4a2788e70c9d4dfe" [label=""];
  "sha256:a488dcde93831e114f7c2e4c1eaedf74393be1953056cf1d4a2788e70c9d4dfe" -> "sha256:e380043cf46e55a21a5cb1e099a74e3ecf671d206e33b7196842e740d6072d11" [label=""];
  "sha256:e380043cf46e55a21a5cb1e099a74e3ecf671d206e33b7196842e740d6072d11" -> "sha256:75b4fc39c37b7360af0010026bea670a8059878701bbc20cad08c6a73cb4fa5c" [label=""];
}

