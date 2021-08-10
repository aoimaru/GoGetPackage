[app/sources/314760168.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:96e5bc295ec95389b491f0acd393f74ace3525a04c4b5f22f88dde4b1edd6d47" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\twget         curl \t\tunzip \t\tgzip         nano \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b889310d2b23a0799a2dea7b5911c26ea0627aa49743d28e273946ed24faeeee" [label="mkdir{path=/usr/src/band}" shape="note"];
  "sha256:381801bf674768bdaac90e05259f42af37d11e8e318e1c254c1280e2f0127470" [label="local://context" shape="ellipse"];
  "sha256:d79cbe93cb7480347502db4d75a71f2c7f8af514eb27e046edcc0e8a46ccb0f3" [label="copy{src=/, dest=/usr/src/band/}" shape="note"];
  "sha256:a9ae8fc7a3afac66ddc78b97680b421ebbaea4eda136543e663c2d14ee4f6eb4" [label="/bin/sh -c pip install -U 'git+https://github.com/madiedinro/simple-clickhouse#egg=simplech'" shape="box"];
  "sha256:e914dabe005a9866f2d2cc26debe50e41f3fe4915641e1f8cb29a04dff8df577" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:d11e78a70994d31c9b88a672a69e921ff954adf7b0210af1087aee36df828cf7" [label="/bin/sh -c pip freeze" shape="box"];
  "sha256:6706e4c86be6f1751b67807822a3fd0951c667e7d6ed2e6b219a0ecfb6a48b3f" [label="sha256:6706e4c86be6f1751b67807822a3fd0951c667e7d6ed2e6b219a0ecfb6a48b3f" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:96e5bc295ec95389b491f0acd393f74ace3525a04c4b5f22f88dde4b1edd6d47" [label=""];
  "sha256:96e5bc295ec95389b491f0acd393f74ace3525a04c4b5f22f88dde4b1edd6d47" -> "sha256:b889310d2b23a0799a2dea7b5911c26ea0627aa49743d28e273946ed24faeeee" [label=""];
  "sha256:b889310d2b23a0799a2dea7b5911c26ea0627aa49743d28e273946ed24faeeee" -> "sha256:d79cbe93cb7480347502db4d75a71f2c7f8af514eb27e046edcc0e8a46ccb0f3" [label=""];
  "sha256:381801bf674768bdaac90e05259f42af37d11e8e318e1c254c1280e2f0127470" -> "sha256:d79cbe93cb7480347502db4d75a71f2c7f8af514eb27e046edcc0e8a46ccb0f3" [label=""];
  "sha256:d79cbe93cb7480347502db4d75a71f2c7f8af514eb27e046edcc0e8a46ccb0f3" -> "sha256:a9ae8fc7a3afac66ddc78b97680b421ebbaea4eda136543e663c2d14ee4f6eb4" [label=""];
  "sha256:a9ae8fc7a3afac66ddc78b97680b421ebbaea4eda136543e663c2d14ee4f6eb4" -> "sha256:e914dabe005a9866f2d2cc26debe50e41f3fe4915641e1f8cb29a04dff8df577" [label=""];
  "sha256:e914dabe005a9866f2d2cc26debe50e41f3fe4915641e1f8cb29a04dff8df577" -> "sha256:d11e78a70994d31c9b88a672a69e921ff954adf7b0210af1087aee36df828cf7" [label=""];
  "sha256:d11e78a70994d31c9b88a672a69e921ff954adf7b0210af1087aee36df828cf7" -> "sha256:6706e4c86be6f1751b67807822a3fd0951c667e7d6ed2e6b219a0ecfb6a48b3f" [label=""];
}

