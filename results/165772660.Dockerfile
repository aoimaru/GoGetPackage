[app/sources/165772660.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:598a166945468d707795c7434dd32f0baca9336a2de88d32d455a6ce663c8b05" [label="/bin/sh -c apk add --no-cache \tlibstdc++" shape="box"];
  "sha256:68af4b89f4eee64789c9bed8f6b53c0bcf3ca1fbc9fa563fdd6f8c74dac79cea" [label="/bin/sh -c apk add --no-cache \tca-certificates \tcurl \tgzip" shape="box"];
  "sha256:ddfa006ffb2271c464e67b1e19284fa6019513bcc0a85c9e3d12faabc416e088" [label="/bin/sh -c curl -sSL -o \"/tmp/now.gz\" \"https://github.com/zeit/now-cli/releases/download/${NOW_VERSION}/now-alpine.gz\" \t&& gzip -dv \"/tmp/now.gz\" \t&& mv /tmp/now /usr/bin/now \t&& chmod +x /usr/bin/now \t&& rm -rf \"/tmp/now.gz\"" shape="box"];
  "sha256:f1192e56b380ec8039762baf50cc3126126837774dad556d352455c97ab1a456" [label="copy{src=/usr/bin/now, dest=/usr/bin/now}" shape="note"];
  "sha256:c7ddbb9d5cb742f896739d30ebfab35ed012a4d6e3ce6a195d6511154fa3033c" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:2e8096e5cad7e7bd6dc01fda02ae928443e0c43480b4fd4aac7b370889fbe27f" [label="sha256:2e8096e5cad7e7bd6dc01fda02ae928443e0c43480b4fd4aac7b370889fbe27f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:598a166945468d707795c7434dd32f0baca9336a2de88d32d455a6ce663c8b05" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:68af4b89f4eee64789c9bed8f6b53c0bcf3ca1fbc9fa563fdd6f8c74dac79cea" [label=""];
  "sha256:68af4b89f4eee64789c9bed8f6b53c0bcf3ca1fbc9fa563fdd6f8c74dac79cea" -> "sha256:ddfa006ffb2271c464e67b1e19284fa6019513bcc0a85c9e3d12faabc416e088" [label=""];
  "sha256:598a166945468d707795c7434dd32f0baca9336a2de88d32d455a6ce663c8b05" -> "sha256:f1192e56b380ec8039762baf50cc3126126837774dad556d352455c97ab1a456" [label=""];
  "sha256:ddfa006ffb2271c464e67b1e19284fa6019513bcc0a85c9e3d12faabc416e088" -> "sha256:f1192e56b380ec8039762baf50cc3126126837774dad556d352455c97ab1a456" [label=""];
  "sha256:f1192e56b380ec8039762baf50cc3126126837774dad556d352455c97ab1a456" -> "sha256:c7ddbb9d5cb742f896739d30ebfab35ed012a4d6e3ce6a195d6511154fa3033c" [label=""];
  "sha256:ddfa006ffb2271c464e67b1e19284fa6019513bcc0a85c9e3d12faabc416e088" -> "sha256:c7ddbb9d5cb742f896739d30ebfab35ed012a4d6e3ce6a195d6511154fa3033c" [label=""];
  "sha256:c7ddbb9d5cb742f896739d30ebfab35ed012a4d6e3ce6a195d6511154fa3033c" -> "sha256:2e8096e5cad7e7bd6dc01fda02ae928443e0c43480b4fd4aac7b370889fbe27f" [label=""];
}

