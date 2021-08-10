[app/sources/297438481.Dockerfile]
digraph {
  "sha256:27256a2fbde2e19c29a950b70e09ebb8787e6e77e3a1b51cec7af0ad04997e13" [label="docker-image://docker.io/cyb3rward0g/helk-spark-base:2.4.3" shape="ellipse"];
  "sha256:bfbc44d7de3072e9193a4283ac9f8b81cba8bb61c398b9fe6b3c4ee9acd35cfc" [label="local://context" shape="ellipse"];
  "sha256:59ab2d01d7d8d1f956dd3ad1b165a76d6fc35c8ec7081819e899f14e722bcb4d" [label="copy{src=/scripts/spark-worker-entrypoint.sh, dest=/sbin}" shape="note"];
  "sha256:9b63084e9ea7e46b681cf3e8c6a8844b63663292dab5260ea6135816677aa7a6" [label="copy{src=/spark-defaults.conf, dest=/conf/}" shape="note"];
  "sha256:d0445a74b7800f0b00ef2be648b62640c1dbfd8c04d2455c3d81d88a8a4b1355" [label="mkdir{path=/sbin}" shape="note"];
  "sha256:a6d37c65137191730bbb9f74249a45a09a6e918d368c8d9314ee87c193094409" [label="sha256:a6d37c65137191730bbb9f74249a45a09a6e918d368c8d9314ee87c193094409" shape="plaintext"];
  "sha256:27256a2fbde2e19c29a950b70e09ebb8787e6e77e3a1b51cec7af0ad04997e13" -> "sha256:59ab2d01d7d8d1f956dd3ad1b165a76d6fc35c8ec7081819e899f14e722bcb4d" [label=""];
  "sha256:bfbc44d7de3072e9193a4283ac9f8b81cba8bb61c398b9fe6b3c4ee9acd35cfc" -> "sha256:59ab2d01d7d8d1f956dd3ad1b165a76d6fc35c8ec7081819e899f14e722bcb4d" [label=""];
  "sha256:59ab2d01d7d8d1f956dd3ad1b165a76d6fc35c8ec7081819e899f14e722bcb4d" -> "sha256:9b63084e9ea7e46b681cf3e8c6a8844b63663292dab5260ea6135816677aa7a6" [label=""];
  "sha256:bfbc44d7de3072e9193a4283ac9f8b81cba8bb61c398b9fe6b3c4ee9acd35cfc" -> "sha256:9b63084e9ea7e46b681cf3e8c6a8844b63663292dab5260ea6135816677aa7a6" [label=""];
  "sha256:9b63084e9ea7e46b681cf3e8c6a8844b63663292dab5260ea6135816677aa7a6" -> "sha256:d0445a74b7800f0b00ef2be648b62640c1dbfd8c04d2455c3d81d88a8a4b1355" [label=""];
  "sha256:d0445a74b7800f0b00ef2be648b62640c1dbfd8c04d2455c3d81d88a8a4b1355" -> "sha256:a6d37c65137191730bbb9f74249a45a09a6e918d368c8d9314ee87c193094409" [label=""];
}

