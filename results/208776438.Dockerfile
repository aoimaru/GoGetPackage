[app/sources/208776438.Dockerfile]
digraph {
  "sha256:c8af05d5af82b81c616b27276a316a435ce4319b94f570ff7be2780a3f0ed2b3" [label="local://context" shape="ellipse"];
  "sha256:d73d6d8671e6b1f5e0cb42a702e0d2738d6e58a05b01ba5e95ea070628e4b203" [label="docker-image://docker.io/library/node:4.6.1-slim" shape="ellipse"];
  "sha256:c27dd27bd739daabbaa649145108d9f2695f41ddf4cc476f4ac6bbf605f93e22" [label="/bin/sh -c cd /usr/local && curl -sL \"http://www.factorio.com/get-download/${FACTORIO_VERSION}/headless/linux64\" | tar xzv && printf '#!/bin/sh\\n/usr/local/factorio/bin/x64/factorio $@\\n' > /usr/local/bin/factorio && chmod +x /usr/local/bin/factorio" shape="box"];
  "sha256:b7fc3b91c179ddd76b71c9084aaca7e5723e64884f231f011b35fac21d80c203" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:b374e55795ece11f48ad96b723a88571f70ba1111ce6323d890ae4750602af5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:382d3006598071569dbe71714efa3e9fd59369e1023e481126c4e7f24e9c5529" [label="/bin/sh -c npm install --silent --production" shape="box"];
  "sha256:ea07f764e4dd55aca116e079324ac68ce222f51770bc7f8eab11dad1c65999cf" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ebb4bfc531d7e1b4b0932cedb0090de4754f03baabc95f3e21650f7b6c943df2" [label="sha256:ebb4bfc531d7e1b4b0932cedb0090de4754f03baabc95f3e21650f7b6c943df2" shape="plaintext"];
  "sha256:d73d6d8671e6b1f5e0cb42a702e0d2738d6e58a05b01ba5e95ea070628e4b203" -> "sha256:c27dd27bd739daabbaa649145108d9f2695f41ddf4cc476f4ac6bbf605f93e22" [label=""];
  "sha256:c27dd27bd739daabbaa649145108d9f2695f41ddf4cc476f4ac6bbf605f93e22" -> "sha256:b7fc3b91c179ddd76b71c9084aaca7e5723e64884f231f011b35fac21d80c203" [label=""];
  "sha256:c8af05d5af82b81c616b27276a316a435ce4319b94f570ff7be2780a3f0ed2b3" -> "sha256:b7fc3b91c179ddd76b71c9084aaca7e5723e64884f231f011b35fac21d80c203" [label=""];
  "sha256:b7fc3b91c179ddd76b71c9084aaca7e5723e64884f231f011b35fac21d80c203" -> "sha256:b374e55795ece11f48ad96b723a88571f70ba1111ce6323d890ae4750602af5a" [label=""];
  "sha256:b374e55795ece11f48ad96b723a88571f70ba1111ce6323d890ae4750602af5a" -> "sha256:382d3006598071569dbe71714efa3e9fd59369e1023e481126c4e7f24e9c5529" [label=""];
  "sha256:382d3006598071569dbe71714efa3e9fd59369e1023e481126c4e7f24e9c5529" -> "sha256:ea07f764e4dd55aca116e079324ac68ce222f51770bc7f8eab11dad1c65999cf" [label=""];
  "sha256:c8af05d5af82b81c616b27276a316a435ce4319b94f570ff7be2780a3f0ed2b3" -> "sha256:ea07f764e4dd55aca116e079324ac68ce222f51770bc7f8eab11dad1c65999cf" [label=""];
  "sha256:ea07f764e4dd55aca116e079324ac68ce222f51770bc7f8eab11dad1c65999cf" -> "sha256:ebb4bfc531d7e1b4b0932cedb0090de4754f03baabc95f3e21650f7b6c943df2" [label=""];
}

