[app/sources/356527674.Dockerfile]
digraph {
  "sha256:e88060df06cdf2db90f96ece04fd8a39439dbac0b70ecb311cb4c2cfa2ad25c1" [label="local://context" shape="ellipse"];
  "sha256:dc82d368bacf710b64fa6d6ff3e8286e435f76d5be03df4150effd8c74075f2c" [label="docker-image://index.tenxcloud.com/docker_library/java:latest" shape="ellipse"];
  "sha256:3bdbd976f9148f626af0df9c0898dc05c1404dd109d77c8d496ff3f49ebf2cf9" [label="copy{src=/boot.zk.kaka-0.0.1-SNAPSHOT.jar, dest=/my_app.jar}" shape="note"];
  "sha256:97c9d200176500275f5530a7ada479b2062734c060fc03853897d35bb6de1c71" [label="copy{src=/zk.kaka.properties, dest=/opt/zk.kaka.properties}" shape="note"];
  "sha256:2da5907df9e52d28daedc235662c526fc1954606b836c896d69d0622a231ec3d" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:3deb3200c37e7363269781daf92bb51bbe177a80291ca86fd4f1f09ef2218aaf" [label="/bin/sh -c chmod 777 start.sh" shape="box"];
  "sha256:acd9414591d66bc4efd8af7495cdb9e438888701f329c6f0375a04babe6c6843" [label="/bin/sh -c bash -c 'touch /my_app.jar'" shape="box"];
  "sha256:a46c375028a75a6aafd09891e039ebf820029aad3966b689a3606f8b6b623a03" [label="sha256:a46c375028a75a6aafd09891e039ebf820029aad3966b689a3606f8b6b623a03" shape="plaintext"];
  "sha256:dc82d368bacf710b64fa6d6ff3e8286e435f76d5be03df4150effd8c74075f2c" -> "sha256:3bdbd976f9148f626af0df9c0898dc05c1404dd109d77c8d496ff3f49ebf2cf9" [label=""];
  "sha256:e88060df06cdf2db90f96ece04fd8a39439dbac0b70ecb311cb4c2cfa2ad25c1" -> "sha256:3bdbd976f9148f626af0df9c0898dc05c1404dd109d77c8d496ff3f49ebf2cf9" [label=""];
  "sha256:3bdbd976f9148f626af0df9c0898dc05c1404dd109d77c8d496ff3f49ebf2cf9" -> "sha256:97c9d200176500275f5530a7ada479b2062734c060fc03853897d35bb6de1c71" [label=""];
  "sha256:e88060df06cdf2db90f96ece04fd8a39439dbac0b70ecb311cb4c2cfa2ad25c1" -> "sha256:97c9d200176500275f5530a7ada479b2062734c060fc03853897d35bb6de1c71" [label=""];
  "sha256:97c9d200176500275f5530a7ada479b2062734c060fc03853897d35bb6de1c71" -> "sha256:2da5907df9e52d28daedc235662c526fc1954606b836c896d69d0622a231ec3d" [label=""];
  "sha256:e88060df06cdf2db90f96ece04fd8a39439dbac0b70ecb311cb4c2cfa2ad25c1" -> "sha256:2da5907df9e52d28daedc235662c526fc1954606b836c896d69d0622a231ec3d" [label=""];
  "sha256:2da5907df9e52d28daedc235662c526fc1954606b836c896d69d0622a231ec3d" -> "sha256:3deb3200c37e7363269781daf92bb51bbe177a80291ca86fd4f1f09ef2218aaf" [label=""];
  "sha256:3deb3200c37e7363269781daf92bb51bbe177a80291ca86fd4f1f09ef2218aaf" -> "sha256:acd9414591d66bc4efd8af7495cdb9e438888701f329c6f0375a04babe6c6843" [label=""];
  "sha256:acd9414591d66bc4efd8af7495cdb9e438888701f329c6f0375a04babe6c6843" -> "sha256:a46c375028a75a6aafd09891e039ebf820029aad3966b689a3606f8b6b623a03" [label=""];
}

