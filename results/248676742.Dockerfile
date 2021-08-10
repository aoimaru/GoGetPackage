[app/sources/248676742.Dockerfile]
digraph {
  "sha256:7f9ee69be9fe9d8323082d0469ebd77e84c354a9258154f19d1757a3d25fe483" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6c73691950335902c470f9ebc7feb81dff8a6ffd8016e1815f95d6aeec93ad73" [label="/bin/sh -c apt-get -y update && apt-get install -y bind9  bind9utils bind9-doc curl dnsutils supervisor vim" shape="box"];
  "sha256:4706f4d052d615de5a7beee8c91aa585b3b01f9507d6799343b9ad1496f936fb" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:c8b676cdaa40aa511577e30ec636c71406be01e8179b9da007a7b9856a0df06a" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:d57007eb609b4e250784306ea31effbea7fb04cafd472dea5f4f4068eb24bf64" [label="copy{src=/google.internal.db, dest=/etc/bind/zones/google.internal.db}" shape="note"];
  "sha256:4ffb9fdf711db191b3fc57b03dea5f92df9868bcd2641298db6260a84c5d005d" [label="copy{src=/named.conf.local, dest=/etc/bind/named.conf.local}" shape="note"];
  "sha256:7b9ce2298c1c2417c84ecfd906333a8678bc9a537bb51e0e700751b92c414a0c" [label="copy{src=/named.conf.options, dest=/etc/bind/named.conf.options}" shape="note"];
  "sha256:9c3446053e15d322e10a5cfc22f1e7ab0db8cef4a39830ba6ebc22c8087c23aa" [label="sha256:9c3446053e15d322e10a5cfc22f1e7ab0db8cef4a39830ba6ebc22c8087c23aa" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6c73691950335902c470f9ebc7feb81dff8a6ffd8016e1815f95d6aeec93ad73" [label=""];
  "sha256:6c73691950335902c470f9ebc7feb81dff8a6ffd8016e1815f95d6aeec93ad73" -> "sha256:4706f4d052d615de5a7beee8c91aa585b3b01f9507d6799343b9ad1496f936fb" [label=""];
  "sha256:4706f4d052d615de5a7beee8c91aa585b3b01f9507d6799343b9ad1496f936fb" -> "sha256:c8b676cdaa40aa511577e30ec636c71406be01e8179b9da007a7b9856a0df06a" [label=""];
  "sha256:7f9ee69be9fe9d8323082d0469ebd77e84c354a9258154f19d1757a3d25fe483" -> "sha256:c8b676cdaa40aa511577e30ec636c71406be01e8179b9da007a7b9856a0df06a" [label=""];
  "sha256:c8b676cdaa40aa511577e30ec636c71406be01e8179b9da007a7b9856a0df06a" -> "sha256:d57007eb609b4e250784306ea31effbea7fb04cafd472dea5f4f4068eb24bf64" [label=""];
  "sha256:7f9ee69be9fe9d8323082d0469ebd77e84c354a9258154f19d1757a3d25fe483" -> "sha256:d57007eb609b4e250784306ea31effbea7fb04cafd472dea5f4f4068eb24bf64" [label=""];
  "sha256:d57007eb609b4e250784306ea31effbea7fb04cafd472dea5f4f4068eb24bf64" -> "sha256:4ffb9fdf711db191b3fc57b03dea5f92df9868bcd2641298db6260a84c5d005d" [label=""];
  "sha256:7f9ee69be9fe9d8323082d0469ebd77e84c354a9258154f19d1757a3d25fe483" -> "sha256:4ffb9fdf711db191b3fc57b03dea5f92df9868bcd2641298db6260a84c5d005d" [label=""];
  "sha256:4ffb9fdf711db191b3fc57b03dea5f92df9868bcd2641298db6260a84c5d005d" -> "sha256:7b9ce2298c1c2417c84ecfd906333a8678bc9a537bb51e0e700751b92c414a0c" [label=""];
  "sha256:7f9ee69be9fe9d8323082d0469ebd77e84c354a9258154f19d1757a3d25fe483" -> "sha256:7b9ce2298c1c2417c84ecfd906333a8678bc9a537bb51e0e700751b92c414a0c" [label=""];
  "sha256:7b9ce2298c1c2417c84ecfd906333a8678bc9a537bb51e0e700751b92c414a0c" -> "sha256:9c3446053e15d322e10a5cfc22f1e7ab0db8cef4a39830ba6ebc22c8087c23aa" [label=""];
}

