[app/sources/252787482.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f6cc3860a6a41522bc6a622b6641acc5012c98b6813328bd44757a990d2c782e" [label="local://context" shape="ellipse"];
  "sha256:7c2b7cfbb292130de257a90429d92bee0818694dd400f6ff1d45fc975cec11f1" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:ff1f7ac976e187844818766ff05deb7eba038f5cd08710ee3b1e8e7b725e8cb6" [label="/bin/sh -c /app/bin/install.sh" shape="box"];
  "sha256:3e30a7fd6b5066d81ca6175f1f3354b53c024d70497c3773c27aa0d620fac648" [label="sha256:3e30a7fd6b5066d81ca6175f1f3354b53c024d70497c3773c27aa0d620fac648" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:7c2b7cfbb292130de257a90429d92bee0818694dd400f6ff1d45fc975cec11f1" [label=""];
  "sha256:f6cc3860a6a41522bc6a622b6641acc5012c98b6813328bd44757a990d2c782e" -> "sha256:7c2b7cfbb292130de257a90429d92bee0818694dd400f6ff1d45fc975cec11f1" [label=""];
  "sha256:7c2b7cfbb292130de257a90429d92bee0818694dd400f6ff1d45fc975cec11f1" -> "sha256:ff1f7ac976e187844818766ff05deb7eba038f5cd08710ee3b1e8e7b725e8cb6" [label=""];
  "sha256:ff1f7ac976e187844818766ff05deb7eba038f5cd08710ee3b1e8e7b725e8cb6" -> "sha256:3e30a7fd6b5066d81ca6175f1f3354b53c024d70497c3773c27aa0d620fac648" [label=""];
}

