[app/sources/393678811.Dockerfile]
digraph {
  "sha256:7c382658f66929b17a82b840e96088835a9a47a9df2cd37e86d2b13229b1f2a3" [label="docker-image://docker.io/library/node:lts@sha256:cd98882c1093f758d09cf6821dc8f96b241073b38e8ed294ca1f9e484743858f" shape="ellipse"];
  "sha256:0cbdde9d05ca3885475f20d62d2c82737c6f3cca42e41889cf53877a52ec393e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:53cd2acfc82a1e9780d13a1edfaa4720d40c86fbd174173643b148b5e44a62f2" [label="/bin/sh -c apt-get install -y p7zip-full" shape="box"];
  "sha256:f4064674b3208f873cbdfbc36788c361b696db9887da97fc7b25432a1d227d6e" [label="mkdir{path=/app}" shape="note"];
  "sha256:0f1bedc8d3a4edbe57ff2783498b0aa89d0ca5abb92154db9bae767797d974b2" [label="local://context" shape="ellipse"];
  "sha256:25f2cbdf39f12d0c5b22197d1163fbefff4a93d6fbf054b39ad9abb2c0feeb00" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:e02138ca6a0041238119681280cd2a67bf6b0910a7f7e92fdb504a7fa996aa9b" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:9d64cad5764b16b8989a23c7c408afaa60814f98d8ee8a857995475a3d93c668" [label="sha256:9d64cad5764b16b8989a23c7c408afaa60814f98d8ee8a857995475a3d93c668" shape="plaintext"];
  "sha256:7c382658f66929b17a82b840e96088835a9a47a9df2cd37e86d2b13229b1f2a3" -> "sha256:0cbdde9d05ca3885475f20d62d2c82737c6f3cca42e41889cf53877a52ec393e" [label=""];
  "sha256:0cbdde9d05ca3885475f20d62d2c82737c6f3cca42e41889cf53877a52ec393e" -> "sha256:53cd2acfc82a1e9780d13a1edfaa4720d40c86fbd174173643b148b5e44a62f2" [label=""];
  "sha256:53cd2acfc82a1e9780d13a1edfaa4720d40c86fbd174173643b148b5e44a62f2" -> "sha256:f4064674b3208f873cbdfbc36788c361b696db9887da97fc7b25432a1d227d6e" [label=""];
  "sha256:f4064674b3208f873cbdfbc36788c361b696db9887da97fc7b25432a1d227d6e" -> "sha256:25f2cbdf39f12d0c5b22197d1163fbefff4a93d6fbf054b39ad9abb2c0feeb00" [label=""];
  "sha256:0f1bedc8d3a4edbe57ff2783498b0aa89d0ca5abb92154db9bae767797d974b2" -> "sha256:25f2cbdf39f12d0c5b22197d1163fbefff4a93d6fbf054b39ad9abb2c0feeb00" [label=""];
  "sha256:25f2cbdf39f12d0c5b22197d1163fbefff4a93d6fbf054b39ad9abb2c0feeb00" -> "sha256:e02138ca6a0041238119681280cd2a67bf6b0910a7f7e92fdb504a7fa996aa9b" [label=""];
  "sha256:e02138ca6a0041238119681280cd2a67bf6b0910a7f7e92fdb504a7fa996aa9b" -> "sha256:9d64cad5764b16b8989a23c7c408afaa60814f98d8ee8a857995475a3d93c668" [label=""];
}

