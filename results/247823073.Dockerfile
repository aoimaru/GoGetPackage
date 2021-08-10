[app/sources/247823073.Dockerfile]
digraph {
  "sha256:757d66a5f65ed99a38f4bf8418ed9b1268d84b1691ec640a2c204769af507343" [label="docker-image://docker.io/zachdeibert/mono-docker:latest" shape="ellipse"];
  "sha256:69f694e642b56db470a65440e1ad1f25629dce087c7a20bde22fef7afd43e042" [label="/bin/sh -c apt-get update && apt-get install -y monodevelop monodevelop-nunit && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:069b345e8f6c037081f991330dbf19844d9385a9952ab6a48325f3c4c90ac61e" [label="local://context" shape="ellipse"];
  "sha256:ae4309b9b47a57e779d104261b66fb8b156cecac52df980c502e9c917396fa24" [label="copy{src=/launch.sh, dest=/launch.sh}" shape="note"];
  "sha256:05275c006304329620069c0d969ab27593d278fb763d77aa11b3291ff47aed53" [label="sha256:05275c006304329620069c0d969ab27593d278fb763d77aa11b3291ff47aed53" shape="plaintext"];
  "sha256:757d66a5f65ed99a38f4bf8418ed9b1268d84b1691ec640a2c204769af507343" -> "sha256:69f694e642b56db470a65440e1ad1f25629dce087c7a20bde22fef7afd43e042" [label=""];
  "sha256:69f694e642b56db470a65440e1ad1f25629dce087c7a20bde22fef7afd43e042" -> "sha256:ae4309b9b47a57e779d104261b66fb8b156cecac52df980c502e9c917396fa24" [label=""];
  "sha256:069b345e8f6c037081f991330dbf19844d9385a9952ab6a48325f3c4c90ac61e" -> "sha256:ae4309b9b47a57e779d104261b66fb8b156cecac52df980c502e9c917396fa24" [label=""];
  "sha256:ae4309b9b47a57e779d104261b66fb8b156cecac52df980c502e9c917396fa24" -> "sha256:05275c006304329620069c0d969ab27593d278fb763d77aa11b3291ff47aed53" [label=""];
}

