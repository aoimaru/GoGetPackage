[app/sources/444865019.Dockerfile]
digraph {
  "sha256:bea22498e3610bfca4091cb8d95112052d7a823fc3a9618fa18419208bc94fa0" [label="docker-image://docker.io/arm64v8/python:3-slim" shape="ellipse"];
  "sha256:4222fb0d9258b836b852a539fb2dcd3d93108fabee07d3258973119fc59f9b2b" [label="local://context" shape="ellipse"];
  "sha256:0f9062bbb3be074a6a4fb8a09459f29c68139a8c77aa054d234de787c28efb42" [label="copy{src=/.qemu/qemu-aarch64-static, dest=/usr/bin/qemu-aarch64-static}" shape="note"];
  "sha256:2470f07248486de99dd012125eed69430fb93d448c6fdddd9ed02764980afa7f" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends                ca-certificates                expat                build-essential                libssl-dev                libffi-dev                libunwind-dev                libsnappy-dev                libbz2-dev     && pip install --no-cache-dir --upgrade \"pip<19\"     && pip install --no-cache-dir crossbar>=${CROSSBAR_VERSION}     && rm -rf ~/.cache     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:317cdd89273c6d18513e9d4708308b72ed5d13301d118682ea8f49eb39f8cbab" [label="/bin/sh -c pip install --no-cache-dir \"wsaccel>=0.6.2\"" shape="box"];
  "sha256:2c3c095d7df3e51c34e13b0ba7f32ee012da8d339182f66a9eee118f22415dd2" [label="/bin/sh -c crossbar version" shape="box"];
  "sha256:e7fa138eb9d9ce74d62435e76c9b2040676636786e2fb59eb45a969fa0bd82e8" [label="/bin/sh -c adduser --system --group --uid 242 --home /node crossbar" shape="box"];
  "sha256:3025f74ce80cdba2520b75623b308d0d54e7081d9e6f8125cea95aa6eb30adeb" [label="copy{src=/.node, dest=/node/}" shape="note"];
  "sha256:d263d45c2caccea816ad24da9ef3ec7456f03c456673c429e73a33791c1603ef" [label="/bin/sh -c chown -R crossbar:crossbar /node" shape="box"];
  "sha256:ba2c932e0e45a0a1f1b26b7f9202aeb729e9a219ceb227235c068f342af1c791" [label="mkdir{path=/node}" shape="note"];
  "sha256:062cc00ca4a83bf6fd01ee9caa86b49bfb91cb23f90ef6494b01197913cb3f80" [label="sha256:062cc00ca4a83bf6fd01ee9caa86b49bfb91cb23f90ef6494b01197913cb3f80" shape="plaintext"];
  "sha256:bea22498e3610bfca4091cb8d95112052d7a823fc3a9618fa18419208bc94fa0" -> "sha256:0f9062bbb3be074a6a4fb8a09459f29c68139a8c77aa054d234de787c28efb42" [label=""];
  "sha256:4222fb0d9258b836b852a539fb2dcd3d93108fabee07d3258973119fc59f9b2b" -> "sha256:0f9062bbb3be074a6a4fb8a09459f29c68139a8c77aa054d234de787c28efb42" [label=""];
  "sha256:0f9062bbb3be074a6a4fb8a09459f29c68139a8c77aa054d234de787c28efb42" -> "sha256:2470f07248486de99dd012125eed69430fb93d448c6fdddd9ed02764980afa7f" [label=""];
  "sha256:2470f07248486de99dd012125eed69430fb93d448c6fdddd9ed02764980afa7f" -> "sha256:317cdd89273c6d18513e9d4708308b72ed5d13301d118682ea8f49eb39f8cbab" [label=""];
  "sha256:317cdd89273c6d18513e9d4708308b72ed5d13301d118682ea8f49eb39f8cbab" -> "sha256:2c3c095d7df3e51c34e13b0ba7f32ee012da8d339182f66a9eee118f22415dd2" [label=""];
  "sha256:2c3c095d7df3e51c34e13b0ba7f32ee012da8d339182f66a9eee118f22415dd2" -> "sha256:e7fa138eb9d9ce74d62435e76c9b2040676636786e2fb59eb45a969fa0bd82e8" [label=""];
  "sha256:e7fa138eb9d9ce74d62435e76c9b2040676636786e2fb59eb45a969fa0bd82e8" -> "sha256:3025f74ce80cdba2520b75623b308d0d54e7081d9e6f8125cea95aa6eb30adeb" [label=""];
  "sha256:4222fb0d9258b836b852a539fb2dcd3d93108fabee07d3258973119fc59f9b2b" -> "sha256:3025f74ce80cdba2520b75623b308d0d54e7081d9e6f8125cea95aa6eb30adeb" [label=""];
  "sha256:3025f74ce80cdba2520b75623b308d0d54e7081d9e6f8125cea95aa6eb30adeb" -> "sha256:d263d45c2caccea816ad24da9ef3ec7456f03c456673c429e73a33791c1603ef" [label=""];
  "sha256:d263d45c2caccea816ad24da9ef3ec7456f03c456673c429e73a33791c1603ef" -> "sha256:ba2c932e0e45a0a1f1b26b7f9202aeb729e9a219ceb227235c068f342af1c791" [label=""];
  "sha256:ba2c932e0e45a0a1f1b26b7f9202aeb729e9a219ceb227235c068f342af1c791" -> "sha256:062cc00ca4a83bf6fd01ee9caa86b49bfb91cb23f90ef6494b01197913cb3f80" [label=""];
}

