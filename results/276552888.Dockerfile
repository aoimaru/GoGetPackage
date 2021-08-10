[app/sources/276552888.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:5952b79636f159abc0612688197cdc247792d0641ee7e0284335ed6538f5ac06" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends gcc binutils clang make libmpich-dev mpich libgomp1 libomp5 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a9513e7b61aaa93a97c6241b62db4204eb94cfa65b2327d7ad32f16eac88b6e6" [label="/bin/sh -c apt-get update &&     apt-get install -y curl libgmp-dev z3 libtinfo-dev &&     curl -sSL https://get.haskellstack.org/ | sh &&     stack --version &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7e6048543d3b565d08dbec9c8f71550c733c9b5d0e5bc912fa44bdfbad0b5607" [label="/bin/sh -c mkdir -p /work/bin" shape="box"];
  "sha256:1838e71f8e99f409ac79ab2e748212b53b5d7839bff4e0c0935e71bb9dd7bbee" [label="mkdir{path=/work}" shape="note"];
  "sha256:01b594dd59e0ba1d83b9d378ddd9b96d9c2a87e3496af8cc96311873e4f4721b" [label="local://context" shape="ellipse"];
  "sha256:15b0f58096924fcd3433228b610e37e6b6d197481cf37afefff8c1aa5cab9314" [label="copy{src=/stack.yaml, dest=/work/}" shape="note"];
  "sha256:a703ab0c476c2321ba0dc1ebd6c4b7bb0641fa5387fa68176e1c9168d5ae68cb" [label="/bin/sh -c stack setup" shape="box"];
  "sha256:1ec942a05bcfb6ccc022ec20b233687658ad0d666b2a2fdf89dd57590a04a5ec" [label="copy{src=/package.yaml, dest=/work/}" shape="note"];
  "sha256:eac8bb90fa093fedac440f8654ac91c357cd2c2262e5e7031037aaf96bbfa942" [label="/bin/sh -c stack build --only-dependencies" shape="box"];
  "sha256:283e27f42943386730a4683eaf9f877c3ae6f9bea8822184123a484d68ce1da4" [label="copy{src=/, dest=/work/}" shape="note"];
  "sha256:bf7199fdb48e9b4a9d041a219c1529f5c0f6902b18f4a6b15c4b4c3f1b3071ea" [label="/bin/sh -c stack install --local-bin-path ./bin" shape="box"];
  "sha256:2d99166bae2da4de2adbbc4cd175f4383e02e6c976eb80949fd13fdd5b966820" [label="copy{src=/work/bin/formura, dest=/usr/local/bin/}" shape="note"];
  "sha256:17074d19c856d6e16b2a2a8ccd637995f80dae4a8ce824c285648d9594c2c70e" [label="/bin/sh -c mkdir /work && useradd -ms /bin/bash formura" shape="box"];
  "sha256:b4039d67b9abf629df5e9fba592138717d264765017015be058ee7a1802afc1a" [label="mkdir{path=/work}" shape="note"];
  "sha256:7f2bf6be4fc19a8db34b82f1e5dc60cd2cc4121058bdaf3d4dc6c3e705059537" [label="sha256:7f2bf6be4fc19a8db34b82f1e5dc60cd2cc4121058bdaf3d4dc6c3e705059537" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:5952b79636f159abc0612688197cdc247792d0641ee7e0284335ed6538f5ac06" [label=""];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:a9513e7b61aaa93a97c6241b62db4204eb94cfa65b2327d7ad32f16eac88b6e6" [label=""];
  "sha256:a9513e7b61aaa93a97c6241b62db4204eb94cfa65b2327d7ad32f16eac88b6e6" -> "sha256:7e6048543d3b565d08dbec9c8f71550c733c9b5d0e5bc912fa44bdfbad0b5607" [label=""];
  "sha256:7e6048543d3b565d08dbec9c8f71550c733c9b5d0e5bc912fa44bdfbad0b5607" -> "sha256:1838e71f8e99f409ac79ab2e748212b53b5d7839bff4e0c0935e71bb9dd7bbee" [label=""];
  "sha256:1838e71f8e99f409ac79ab2e748212b53b5d7839bff4e0c0935e71bb9dd7bbee" -> "sha256:15b0f58096924fcd3433228b610e37e6b6d197481cf37afefff8c1aa5cab9314" [label=""];
  "sha256:01b594dd59e0ba1d83b9d378ddd9b96d9c2a87e3496af8cc96311873e4f4721b" -> "sha256:15b0f58096924fcd3433228b610e37e6b6d197481cf37afefff8c1aa5cab9314" [label=""];
  "sha256:15b0f58096924fcd3433228b610e37e6b6d197481cf37afefff8c1aa5cab9314" -> "sha256:a703ab0c476c2321ba0dc1ebd6c4b7bb0641fa5387fa68176e1c9168d5ae68cb" [label=""];
  "sha256:a703ab0c476c2321ba0dc1ebd6c4b7bb0641fa5387fa68176e1c9168d5ae68cb" -> "sha256:1ec942a05bcfb6ccc022ec20b233687658ad0d666b2a2fdf89dd57590a04a5ec" [label=""];
  "sha256:01b594dd59e0ba1d83b9d378ddd9b96d9c2a87e3496af8cc96311873e4f4721b" -> "sha256:1ec942a05bcfb6ccc022ec20b233687658ad0d666b2a2fdf89dd57590a04a5ec" [label=""];
  "sha256:1ec942a05bcfb6ccc022ec20b233687658ad0d666b2a2fdf89dd57590a04a5ec" -> "sha256:eac8bb90fa093fedac440f8654ac91c357cd2c2262e5e7031037aaf96bbfa942" [label=""];
  "sha256:eac8bb90fa093fedac440f8654ac91c357cd2c2262e5e7031037aaf96bbfa942" -> "sha256:283e27f42943386730a4683eaf9f877c3ae6f9bea8822184123a484d68ce1da4" [label=""];
  "sha256:01b594dd59e0ba1d83b9d378ddd9b96d9c2a87e3496af8cc96311873e4f4721b" -> "sha256:283e27f42943386730a4683eaf9f877c3ae6f9bea8822184123a484d68ce1da4" [label=""];
  "sha256:283e27f42943386730a4683eaf9f877c3ae6f9bea8822184123a484d68ce1da4" -> "sha256:bf7199fdb48e9b4a9d041a219c1529f5c0f6902b18f4a6b15c4b4c3f1b3071ea" [label=""];
  "sha256:5952b79636f159abc0612688197cdc247792d0641ee7e0284335ed6538f5ac06" -> "sha256:2d99166bae2da4de2adbbc4cd175f4383e02e6c976eb80949fd13fdd5b966820" [label=""];
  "sha256:bf7199fdb48e9b4a9d041a219c1529f5c0f6902b18f4a6b15c4b4c3f1b3071ea" -> "sha256:2d99166bae2da4de2adbbc4cd175f4383e02e6c976eb80949fd13fdd5b966820" [label=""];
  "sha256:2d99166bae2da4de2adbbc4cd175f4383e02e6c976eb80949fd13fdd5b966820" -> "sha256:17074d19c856d6e16b2a2a8ccd637995f80dae4a8ce824c285648d9594c2c70e" [label=""];
  "sha256:17074d19c856d6e16b2a2a8ccd637995f80dae4a8ce824c285648d9594c2c70e" -> "sha256:b4039d67b9abf629df5e9fba592138717d264765017015be058ee7a1802afc1a" [label=""];
  "sha256:b4039d67b9abf629df5e9fba592138717d264765017015be058ee7a1802afc1a" -> "sha256:7f2bf6be4fc19a8db34b82f1e5dc60cd2cc4121058bdaf3d4dc6c3e705059537" [label=""];
}

