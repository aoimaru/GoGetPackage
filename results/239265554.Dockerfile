[app/sources/239265554.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ad4e935f0fe6d3d38eefe279c14c1c13813811974ab44c0d2063e2c33ba476a4" [label="https://nodejs.org/dist/v7.8.0/node-v7.8.0-linux-x64.tar.gz" shape="ellipse"];
  "sha256:b765c5d535b388404d6ca8400a87e01ff1b382862e450c343c4b12f3f501c682" [label="copy{src=/node-v7.8.0-linux-x64.tar.gz, dest=/node.tar.gz}" shape="note"];
  "sha256:5187937201ca3c1385b21cf39603874682ad97d5c26910c6d6fec0e857ddbc32" [label="/bin/sh -c tar -xzf /node.tar.gz -C /usr/local --strip-components=1 && rm /node.tar.gz" shape="box"];
  "sha256:ccbc0696d3a54f8931c71cba41b622987cc51d3dfb0d06f6a7e7c6a70d55e3af" [label="https://yarnpkg.com/latest.tar.gz" shape="ellipse"];
  "sha256:efae9d227c41f4d1bfe0a0fa4236ea57ed59f4faad35092faddc5c5d809c539b" [label="copy{src=/latest.tar.gz, dest=/yarn.tar.gz}" shape="note"];
  "sha256:5cf00e8cd44d8576f1a2dd37a8c4cd7eb6849071c624c2b52fbc9abfabc897a6" [label="/bin/sh -c mkdir -p /yarn && tar -xzf /yarn.tar.gz -C /yarn --strip-components=1 && rm /yarn.tar.gz" shape="box"];
  "sha256:fedb3b8a7a239162267a357e5f48a90723f6027c1e3008243aa9f018626b4e3b" [label="/bin/sh -c mkdir /memorybot" shape="box"];
  "sha256:eabb2908c899045470d17d442830378d47c1fca5ff6bcedd778a20c45f058ea8" [label="mkdir{path=/memorybot}" shape="note"];
  "sha256:00fb76dcd3949c6ee5d3708a788a4d97150fd7d3b1d6ec393312cd530051f02e" [label="local://context" shape="ellipse"];
  "sha256:f96f411cdb32c0d30d1b5c263e3273300a6379a8dd9b3ac875128e976f1a6f52" [label="copy{src=/package.json, dest=/memorybot/}" shape="note"];
  "sha256:d0d7e1d1f46e435343df68c47c7e20f8b6db6faa2c9e35c8205cecbee62807bf" [label="/bin/sh -c /yarn/bin/yarn install --pure-lockfile" shape="box"];
  "sha256:54a80e4b85681012cd0e6365492d083c1021e94d24cc8dc063da2aa10f9e04f3" [label="copy{src=/lib, dest=/memorybot/lib/}" shape="note"];
  "sha256:97fac13b14c9468edde2031e1aab46aba3c054c121db7ea06ae0147b48ca6889" [label="copy{src=/server.js, dest=/memorybot/}" shape="note"];
  "sha256:72610edf403f9c990d03b363c7eb24a24eac86540cf5ae27bc4dcd41b13f8c0a" [label="sha256:72610edf403f9c990d03b363c7eb24a24eac86540cf5ae27bc4dcd41b13f8c0a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:b765c5d535b388404d6ca8400a87e01ff1b382862e450c343c4b12f3f501c682" [label=""];
  "sha256:ad4e935f0fe6d3d38eefe279c14c1c13813811974ab44c0d2063e2c33ba476a4" -> "sha256:b765c5d535b388404d6ca8400a87e01ff1b382862e450c343c4b12f3f501c682" [label=""];
  "sha256:b765c5d535b388404d6ca8400a87e01ff1b382862e450c343c4b12f3f501c682" -> "sha256:5187937201ca3c1385b21cf39603874682ad97d5c26910c6d6fec0e857ddbc32" [label=""];
  "sha256:5187937201ca3c1385b21cf39603874682ad97d5c26910c6d6fec0e857ddbc32" -> "sha256:efae9d227c41f4d1bfe0a0fa4236ea57ed59f4faad35092faddc5c5d809c539b" [label=""];
  "sha256:ccbc0696d3a54f8931c71cba41b622987cc51d3dfb0d06f6a7e7c6a70d55e3af" -> "sha256:efae9d227c41f4d1bfe0a0fa4236ea57ed59f4faad35092faddc5c5d809c539b" [label=""];
  "sha256:efae9d227c41f4d1bfe0a0fa4236ea57ed59f4faad35092faddc5c5d809c539b" -> "sha256:5cf00e8cd44d8576f1a2dd37a8c4cd7eb6849071c624c2b52fbc9abfabc897a6" [label=""];
  "sha256:5cf00e8cd44d8576f1a2dd37a8c4cd7eb6849071c624c2b52fbc9abfabc897a6" -> "sha256:fedb3b8a7a239162267a357e5f48a90723f6027c1e3008243aa9f018626b4e3b" [label=""];
  "sha256:fedb3b8a7a239162267a357e5f48a90723f6027c1e3008243aa9f018626b4e3b" -> "sha256:eabb2908c899045470d17d442830378d47c1fca5ff6bcedd778a20c45f058ea8" [label=""];
  "sha256:eabb2908c899045470d17d442830378d47c1fca5ff6bcedd778a20c45f058ea8" -> "sha256:f96f411cdb32c0d30d1b5c263e3273300a6379a8dd9b3ac875128e976f1a6f52" [label=""];
  "sha256:00fb76dcd3949c6ee5d3708a788a4d97150fd7d3b1d6ec393312cd530051f02e" -> "sha256:f96f411cdb32c0d30d1b5c263e3273300a6379a8dd9b3ac875128e976f1a6f52" [label=""];
  "sha256:f96f411cdb32c0d30d1b5c263e3273300a6379a8dd9b3ac875128e976f1a6f52" -> "sha256:d0d7e1d1f46e435343df68c47c7e20f8b6db6faa2c9e35c8205cecbee62807bf" [label=""];
  "sha256:d0d7e1d1f46e435343df68c47c7e20f8b6db6faa2c9e35c8205cecbee62807bf" -> "sha256:54a80e4b85681012cd0e6365492d083c1021e94d24cc8dc063da2aa10f9e04f3" [label=""];
  "sha256:00fb76dcd3949c6ee5d3708a788a4d97150fd7d3b1d6ec393312cd530051f02e" -> "sha256:54a80e4b85681012cd0e6365492d083c1021e94d24cc8dc063da2aa10f9e04f3" [label=""];
  "sha256:54a80e4b85681012cd0e6365492d083c1021e94d24cc8dc063da2aa10f9e04f3" -> "sha256:97fac13b14c9468edde2031e1aab46aba3c054c121db7ea06ae0147b48ca6889" [label=""];
  "sha256:00fb76dcd3949c6ee5d3708a788a4d97150fd7d3b1d6ec393312cd530051f02e" -> "sha256:97fac13b14c9468edde2031e1aab46aba3c054c121db7ea06ae0147b48ca6889" [label=""];
  "sha256:97fac13b14c9468edde2031e1aab46aba3c054c121db7ea06ae0147b48ca6889" -> "sha256:72610edf403f9c990d03b363c7eb24a24eac86540cf5ae27bc4dcd41b13f8c0a" [label=""];
}

