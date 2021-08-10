[app/sources/206150503.Dockerfile]
digraph {
  "sha256:44e19c4502e94d36d44eedc122dfde42ebd394ce587d2644702bdcc93b34b4fe" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:057d074bcb6777d9c10fc8a42b768a4cf75c0bef02c55454d92c6d6a36c698ea" [label="https://download-cdn.resilio.com/2.6.3/linux-x64/resilio-sync_x64.tar.gz" shape="ellipse"];
  "sha256:5921ed13c9b69ecc132f0c75cf339a04b12fce98fcb330be79b26a4dc21ab0c3" [label="copy{src=/resilio-sync_x64.tar.gz, dest=/tmp/sync.tgz}" shape="note"];
  "sha256:60a4518616d463b7fc41989a1ea1d05c5cd276b9bca725d702cc0a7d80db8021" [label="/bin/sh -c tar -xf /tmp/sync.tgz -C /usr/bin rslsync && rm -f /tmp/sync.tgz" shape="box"];
  "sha256:46658e473226db822f0a81dc0cf85cd3af9260c32c5a8134a826b126ab879d2b" [label="copy{src=/sync.conf.default, dest=/etc/}" shape="note"];
  "sha256:3b09c7f9e6c37cd70602ff6cfcc4f1e1afab73e1090855def7399ec7ea6933b5" [label="copy{src=/run_sync, dest=/usr/bin/}" shape="note"];
  "sha256:c58cbb46c22e04cc311ea4ddb636a417efc05c42b8642cbc530bc6b5ee903280" [label="sha256:c58cbb46c22e04cc311ea4ddb636a417efc05c42b8642cbc530bc6b5ee903280" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:5921ed13c9b69ecc132f0c75cf339a04b12fce98fcb330be79b26a4dc21ab0c3" [label=""];
  "sha256:057d074bcb6777d9c10fc8a42b768a4cf75c0bef02c55454d92c6d6a36c698ea" -> "sha256:5921ed13c9b69ecc132f0c75cf339a04b12fce98fcb330be79b26a4dc21ab0c3" [label=""];
  "sha256:5921ed13c9b69ecc132f0c75cf339a04b12fce98fcb330be79b26a4dc21ab0c3" -> "sha256:60a4518616d463b7fc41989a1ea1d05c5cd276b9bca725d702cc0a7d80db8021" [label=""];
  "sha256:60a4518616d463b7fc41989a1ea1d05c5cd276b9bca725d702cc0a7d80db8021" -> "sha256:46658e473226db822f0a81dc0cf85cd3af9260c32c5a8134a826b126ab879d2b" [label=""];
  "sha256:44e19c4502e94d36d44eedc122dfde42ebd394ce587d2644702bdcc93b34b4fe" -> "sha256:46658e473226db822f0a81dc0cf85cd3af9260c32c5a8134a826b126ab879d2b" [label=""];
  "sha256:46658e473226db822f0a81dc0cf85cd3af9260c32c5a8134a826b126ab879d2b" -> "sha256:3b09c7f9e6c37cd70602ff6cfcc4f1e1afab73e1090855def7399ec7ea6933b5" [label=""];
  "sha256:44e19c4502e94d36d44eedc122dfde42ebd394ce587d2644702bdcc93b34b4fe" -> "sha256:3b09c7f9e6c37cd70602ff6cfcc4f1e1afab73e1090855def7399ec7ea6933b5" [label=""];
  "sha256:3b09c7f9e6c37cd70602ff6cfcc4f1e1afab73e1090855def7399ec7ea6933b5" -> "sha256:c58cbb46c22e04cc311ea4ddb636a417efc05c42b8642cbc530bc6b5ee903280" [label=""];
}

