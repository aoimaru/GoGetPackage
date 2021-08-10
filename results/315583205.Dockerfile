[app/sources/315583205.Dockerfile]
digraph {
  "sha256:c43d0893955e3a2a4d5caf240debfc2a97fad707c49d76d706d159b1002eefd1" [label="local://context" shape="ellipse"];
  "sha256:05fd0a72bcb29fcf5b920a9f362f69467557612aaf483397af05a3999be48ab7" [label="copy{src=/mixgen, dest=/usr/local/bin/}" shape="note"];
  "sha256:26c931da4eed129e2846fb6fd6b9a9acc1989466375c5214b49d3e87a81c8299" [label="sha256:26c931da4eed129e2846fb6fd6b9a9acc1989466375c5214b49d3e87a81c8299" shape="plaintext"];
  "sha256:c43d0893955e3a2a4d5caf240debfc2a97fad707c49d76d706d159b1002eefd1" -> "sha256:05fd0a72bcb29fcf5b920a9f362f69467557612aaf483397af05a3999be48ab7" [label=""];
  "sha256:05fd0a72bcb29fcf5b920a9f362f69467557612aaf483397af05a3999be48ab7" -> "sha256:26c931da4eed129e2846fb6fd6b9a9acc1989466375c5214b49d3e87a81c8299" [label=""];
}

