[app/sources/256707184.Dockerfile]
digraph {
  "sha256:af12350e82347228985cd64aa5ab4b2aadc493e496f835c150215d49faa8b45a" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" [label="/bin/sh -c apt-get update && apt-get install -y         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:586a8d54a276c7014a1a6f21a046f5f44acf7f8e84b6f88cb66ada210c25c11b" [label="copy{src=/tensorflow-*.whl, dest=/}" shape="note"];
  "sha256:30482a0ca68675db61f3d78296256d54e3456919de2272a336f5ee8f470d759a" [label="/bin/sh -c pip install /tensorflow-*.whl" shape="box"];
  "sha256:00bbda13c4dcde90b299d455925fbefabe29eaabb12e89440101a4864864d648" [label="/bin/sh -c rm -f /tensorflow-*.whl" shape="box"];
  "sha256:28d7d129bbf35a7337e3a8fe18a1798a99cfb03b4d9559b368b6525c2c875c68" [label="copy{src=/, dest=/var/tf_dist_test}" shape="note"];
  "sha256:b8617ec1fb277c266ac81ff6517f14462f425b825934bda0971170b9e5988a40" [label="sha256:b8617ec1fb277c266ac81ff6517f14462f425b825934bda0971170b9e5988a40" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" [label=""];
  "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" -> "sha256:586a8d54a276c7014a1a6f21a046f5f44acf7f8e84b6f88cb66ada210c25c11b" [label=""];
  "sha256:af12350e82347228985cd64aa5ab4b2aadc493e496f835c150215d49faa8b45a" -> "sha256:586a8d54a276c7014a1a6f21a046f5f44acf7f8e84b6f88cb66ada210c25c11b" [label=""];
  "sha256:586a8d54a276c7014a1a6f21a046f5f44acf7f8e84b6f88cb66ada210c25c11b" -> "sha256:30482a0ca68675db61f3d78296256d54e3456919de2272a336f5ee8f470d759a" [label=""];
  "sha256:30482a0ca68675db61f3d78296256d54e3456919de2272a336f5ee8f470d759a" -> "sha256:00bbda13c4dcde90b299d455925fbefabe29eaabb12e89440101a4864864d648" [label=""];
  "sha256:00bbda13c4dcde90b299d455925fbefabe29eaabb12e89440101a4864864d648" -> "sha256:28d7d129bbf35a7337e3a8fe18a1798a99cfb03b4d9559b368b6525c2c875c68" [label=""];
  "sha256:af12350e82347228985cd64aa5ab4b2aadc493e496f835c150215d49faa8b45a" -> "sha256:28d7d129bbf35a7337e3a8fe18a1798a99cfb03b4d9559b368b6525c2c875c68" [label=""];
  "sha256:28d7d129bbf35a7337e3a8fe18a1798a99cfb03b4d9559b368b6525c2c875c68" -> "sha256:b8617ec1fb277c266ac81ff6517f14462f425b825934bda0971170b9e5988a40" [label=""];
}

