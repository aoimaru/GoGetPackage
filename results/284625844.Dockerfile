[app/sources/284625844.Dockerfile]
digraph {
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" [label="docker-image://docker.io/library/php:7.0-cli" shape="ellipse"];
  "sha256:8a73a4994e955426f73837bb083e4445d5d20f4f78513ab0201151d35dc4f8bf" [label="/bin/sh -c curl -sS https://getcomposer.org/installer |     php -- --install-dir=/usr/bin/ --filename=composer     && apt-get update     && apt-get install -y zlib1g-dev     && docker-php-ext-install zip" shape="box"];
  "sha256:92c03caea93c9ef4d6240c103df08dcd7bf91d0df506df60305913ca1c07a72a" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:c3995041e7330aac88fc45337c09e635d2132ae8ff4356ac60be0e2be2aa6714" [label="local://context" shape="ellipse"];
  "sha256:4566b750f027c236c043c5a41e04d43e66baa4bf4b544978dad646f5af7e6faa" [label="copy{src=/entry_point.sh, dest=/opt/bin/entry_point.sh}" shape="note"];
  "sha256:7b094966e0d137d441b1279dbe85babf8e44773a38e7bcfa4795cd202a0ed448" [label="/bin/sh -c chmod +x /opt/bin/entry_point.sh" shape="box"];
  "sha256:a17d1a5a48705021a800e980fdf48f41b8b12df369bee260a51058842f57e86d" [label="sha256:a17d1a5a48705021a800e980fdf48f41b8b12df369bee260a51058842f57e86d" shape="plaintext"];
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" -> "sha256:8a73a4994e955426f73837bb083e4445d5d20f4f78513ab0201151d35dc4f8bf" [label=""];
  "sha256:8a73a4994e955426f73837bb083e4445d5d20f4f78513ab0201151d35dc4f8bf" -> "sha256:92c03caea93c9ef4d6240c103df08dcd7bf91d0df506df60305913ca1c07a72a" [label=""];
  "sha256:92c03caea93c9ef4d6240c103df08dcd7bf91d0df506df60305913ca1c07a72a" -> "sha256:4566b750f027c236c043c5a41e04d43e66baa4bf4b544978dad646f5af7e6faa" [label=""];
  "sha256:c3995041e7330aac88fc45337c09e635d2132ae8ff4356ac60be0e2be2aa6714" -> "sha256:4566b750f027c236c043c5a41e04d43e66baa4bf4b544978dad646f5af7e6faa" [label=""];
  "sha256:4566b750f027c236c043c5a41e04d43e66baa4bf4b544978dad646f5af7e6faa" -> "sha256:7b094966e0d137d441b1279dbe85babf8e44773a38e7bcfa4795cd202a0ed448" [label=""];
  "sha256:7b094966e0d137d441b1279dbe85babf8e44773a38e7bcfa4795cd202a0ed448" -> "sha256:a17d1a5a48705021a800e980fdf48f41b8b12df369bee260a51058842f57e86d" [label=""];
}

