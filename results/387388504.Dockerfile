[app/sources/387388504.Dockerfile]
digraph {
  "sha256:e23453742fb7824b91b5178c97d005033b23146efb8c730211af8ceb07fde285" [label="docker-image://docker.io/lariat/alpine-postgres:latest" shape="ellipse"];
  "sha256:a6430e5acc6ca7fac7b0c09c9ddb0c2dbbd579624079c0c57b93e2f81a31efeb" [label="local://context" shape="ellipse"];
  "sha256:24ec8f3ef541df19a3d44941ffb5c7c6221bf0a45522c5967010b7045954748b" [label="copy{src=/backup.sh, dest=/usr/local/bin/backup}" shape="note"];
  "sha256:cdc6c47061e7e02ee8ec027dcc9c029c56ebf96d7481993229e1935378102f86" [label="copy{src=/restore.sh, dest=/usr/local/bin/restore}" shape="note"];
  "sha256:541bce0fa3339125f4f5b88cd5b144dca905f274f4494c154ea96cabb9d068d4" [label="copy{src=/list-backups.sh, dest=/usr/local/bin/list-backups}" shape="note"];
  "sha256:7b9d7ac81578a20629f1b59b2975abe95a8db7e28226b49183ef889f3a991fc0" [label="/bin/sh -c chmod +x /usr/local/bin/restore" shape="box"];
  "sha256:26108028b4a3a9e40510847ddabf5ae1a8eaf1a63fb84e2931296fb5f4de73bd" [label="/bin/sh -c chmod +x /usr/local/bin/list-backups" shape="box"];
  "sha256:22c13f9d1d0e04127666f949684cb223f66380426d614c795da4014923adc541" [label="/bin/sh -c chmod +x /usr/local/bin/backup" shape="box"];
  "sha256:e5d14fda4201aa2aeb3bd4359babf67eb62deffcd75248c278e8161abadc1343" [label="sha256:e5d14fda4201aa2aeb3bd4359babf67eb62deffcd75248c278e8161abadc1343" shape="plaintext"];
  "sha256:e23453742fb7824b91b5178c97d005033b23146efb8c730211af8ceb07fde285" -> "sha256:24ec8f3ef541df19a3d44941ffb5c7c6221bf0a45522c5967010b7045954748b" [label=""];
  "sha256:a6430e5acc6ca7fac7b0c09c9ddb0c2dbbd579624079c0c57b93e2f81a31efeb" -> "sha256:24ec8f3ef541df19a3d44941ffb5c7c6221bf0a45522c5967010b7045954748b" [label=""];
  "sha256:24ec8f3ef541df19a3d44941ffb5c7c6221bf0a45522c5967010b7045954748b" -> "sha256:cdc6c47061e7e02ee8ec027dcc9c029c56ebf96d7481993229e1935378102f86" [label=""];
  "sha256:a6430e5acc6ca7fac7b0c09c9ddb0c2dbbd579624079c0c57b93e2f81a31efeb" -> "sha256:cdc6c47061e7e02ee8ec027dcc9c029c56ebf96d7481993229e1935378102f86" [label=""];
  "sha256:cdc6c47061e7e02ee8ec027dcc9c029c56ebf96d7481993229e1935378102f86" -> "sha256:541bce0fa3339125f4f5b88cd5b144dca905f274f4494c154ea96cabb9d068d4" [label=""];
  "sha256:a6430e5acc6ca7fac7b0c09c9ddb0c2dbbd579624079c0c57b93e2f81a31efeb" -> "sha256:541bce0fa3339125f4f5b88cd5b144dca905f274f4494c154ea96cabb9d068d4" [label=""];
  "sha256:541bce0fa3339125f4f5b88cd5b144dca905f274f4494c154ea96cabb9d068d4" -> "sha256:7b9d7ac81578a20629f1b59b2975abe95a8db7e28226b49183ef889f3a991fc0" [label=""];
  "sha256:7b9d7ac81578a20629f1b59b2975abe95a8db7e28226b49183ef889f3a991fc0" -> "sha256:26108028b4a3a9e40510847ddabf5ae1a8eaf1a63fb84e2931296fb5f4de73bd" [label=""];
  "sha256:26108028b4a3a9e40510847ddabf5ae1a8eaf1a63fb84e2931296fb5f4de73bd" -> "sha256:22c13f9d1d0e04127666f949684cb223f66380426d614c795da4014923adc541" [label=""];
  "sha256:22c13f9d1d0e04127666f949684cb223f66380426d614c795da4014923adc541" -> "sha256:e5d14fda4201aa2aeb3bd4359babf67eb62deffcd75248c278e8161abadc1343" [label=""];
}

