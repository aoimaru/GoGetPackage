[app/sources/345944058.Dockerfile]
digraph {
  "sha256:ea5e122ab1c11d23172e61dfac157459429b68179e1d4eaaf4ee8a132ddb67bc" [label="docker-image://docker.io/library/debian9:latest" shape="ellipse"];
  "sha256:87d01397515103c0b046a038d84d90100a69580346b1b5eb6f81d8e96732b9f3" [label="/bin/sh -c apt-get install -y     curl     g++     git     make     patch     procps     python     python-pkg-resources     unzip" shape="box"];
  "sha256:8884d3153b9a4a805993ed4c9a6422061322e30831d4d28b07272baf709393e2" [label="/bin/sh -c git clone --depth 1 $SPACK_REPO" shape="box"];
  "sha256:087655c88d3393d05f985e64b9c01d2bbd008e3ff3aeb4a1297a0e1c179bb315" [label="/bin/sh -c spack compiler find --scope system" shape="box"];
  "sha256:64e556e0154d1b4e9d9c4fd44f5390e384835008bf592e28b26bfab7dd9c5bf6" [label="/bin/sh -c which spack" shape="box"];
  "sha256:945393b971cc8c04fb1ac2b7b419ffc88991af1cc384d0a8b4a83834279b473c" [label="/bin/sh -c spack --version" shape="box"];
  "sha256:5044f5f14201baf7dd800e0b2fe8610721f9d74c39b127e9befbb4bb35e40873" [label="/bin/sh -c spack compiler list" shape="box"];
  "sha256:cc8909d000249d71aaf7439b3397e8d7b50ea60986a6988b79d5ee456bb31378" [label="/bin/sh -c spack compiler list --scope=system" shape="box"];
  "sha256:e2f6e985bdd568e2af91b7b95e06423e5c4e8820d81bfd4bc7256e484272aa2b" [label="/bin/sh -c spack compiler list --scope=user" shape="box"];
  "sha256:7d5b19f68365560fd2e2ac9ca6e0a2edaaadd0b1acda5a3cde6f822c86cc23d1" [label="/bin/sh -c spack compilers" shape="box"];
  "sha256:d7e27874bb1c70c933bb83e2aec54a9423dbcad697a01d84017e0a93cf603234" [label="/bin/sh -c spack spec netcdf" shape="box"];
  "sha256:935c089576b3d5c2d2a71c4a59e3b417d9abb9e2b275566a271ef3f248b289c3" [label="/bin/sh -c spack spec charliecloud" shape="box"];
  "sha256:c1f280461c9e5f4fa6a6acfd68b39ee38439c7c1cd5b3a3c2c9a0c4e631abd40" [label="/bin/sh -c spack install charliecloud" shape="box"];
  "sha256:90acac7010912ad891c0733a4a22b71dfe030859fb227ac72fcee8d53868c122" [label="/bin/sh -c spack clean --all" shape="box"];
  "sha256:42bed226b73a2f215f893fee6eb643b42dec0e35ba465eaaf5c40a24dd78f6c8" [label="sha256:42bed226b73a2f215f893fee6eb643b42dec0e35ba465eaaf5c40a24dd78f6c8" shape="plaintext"];
  "sha256:ea5e122ab1c11d23172e61dfac157459429b68179e1d4eaaf4ee8a132ddb67bc" -> "sha256:87d01397515103c0b046a038d84d90100a69580346b1b5eb6f81d8e96732b9f3" [label=""];
  "sha256:87d01397515103c0b046a038d84d90100a69580346b1b5eb6f81d8e96732b9f3" -> "sha256:8884d3153b9a4a805993ed4c9a6422061322e30831d4d28b07272baf709393e2" [label=""];
  "sha256:8884d3153b9a4a805993ed4c9a6422061322e30831d4d28b07272baf709393e2" -> "sha256:087655c88d3393d05f985e64b9c01d2bbd008e3ff3aeb4a1297a0e1c179bb315" [label=""];
  "sha256:087655c88d3393d05f985e64b9c01d2bbd008e3ff3aeb4a1297a0e1c179bb315" -> "sha256:64e556e0154d1b4e9d9c4fd44f5390e384835008bf592e28b26bfab7dd9c5bf6" [label=""];
  "sha256:64e556e0154d1b4e9d9c4fd44f5390e384835008bf592e28b26bfab7dd9c5bf6" -> "sha256:945393b971cc8c04fb1ac2b7b419ffc88991af1cc384d0a8b4a83834279b473c" [label=""];
  "sha256:945393b971cc8c04fb1ac2b7b419ffc88991af1cc384d0a8b4a83834279b473c" -> "sha256:5044f5f14201baf7dd800e0b2fe8610721f9d74c39b127e9befbb4bb35e40873" [label=""];
  "sha256:5044f5f14201baf7dd800e0b2fe8610721f9d74c39b127e9befbb4bb35e40873" -> "sha256:cc8909d000249d71aaf7439b3397e8d7b50ea60986a6988b79d5ee456bb31378" [label=""];
  "sha256:cc8909d000249d71aaf7439b3397e8d7b50ea60986a6988b79d5ee456bb31378" -> "sha256:e2f6e985bdd568e2af91b7b95e06423e5c4e8820d81bfd4bc7256e484272aa2b" [label=""];
  "sha256:e2f6e985bdd568e2af91b7b95e06423e5c4e8820d81bfd4bc7256e484272aa2b" -> "sha256:7d5b19f68365560fd2e2ac9ca6e0a2edaaadd0b1acda5a3cde6f822c86cc23d1" [label=""];
  "sha256:7d5b19f68365560fd2e2ac9ca6e0a2edaaadd0b1acda5a3cde6f822c86cc23d1" -> "sha256:d7e27874bb1c70c933bb83e2aec54a9423dbcad697a01d84017e0a93cf603234" [label=""];
  "sha256:d7e27874bb1c70c933bb83e2aec54a9423dbcad697a01d84017e0a93cf603234" -> "sha256:935c089576b3d5c2d2a71c4a59e3b417d9abb9e2b275566a271ef3f248b289c3" [label=""];
  "sha256:935c089576b3d5c2d2a71c4a59e3b417d9abb9e2b275566a271ef3f248b289c3" -> "sha256:c1f280461c9e5f4fa6a6acfd68b39ee38439c7c1cd5b3a3c2c9a0c4e631abd40" [label=""];
  "sha256:c1f280461c9e5f4fa6a6acfd68b39ee38439c7c1cd5b3a3c2c9a0c4e631abd40" -> "sha256:90acac7010912ad891c0733a4a22b71dfe030859fb227ac72fcee8d53868c122" [label=""];
  "sha256:90acac7010912ad891c0733a4a22b71dfe030859fb227ac72fcee8d53868c122" -> "sha256:42bed226b73a2f215f893fee6eb643b42dec0e35ba465eaaf5c40a24dd78f6c8" [label=""];
}

