[app/sources/441707832.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:02067807c4273811dd4b144ffdfe9c814054308b204213bf8e18d02c2826f8cc" [label="/bin/sh -c apt-get update &&     apt-get remove rpcbind &&     apt-get -y install mosquitto mosquitto-auth-plugin &&     apt-get clean" shape="box"];
  "sha256:3fcfb433ce7f127fe576dda8a96ca66292e8d12523096214608548b599f556e8" [label="local://context" shape="ellipse"];
  "sha256:a0e6199c69ac0a4b0a2215e577d52ffa34fc8938a38e83a10043bfdfcb5b09dc" [label="copy{src=/start.sh, dest=/root}" shape="note"];
  "sha256:4cfe1dbed2323aa6486fc39780d596a8d6564d7f0ca89eb62ed23f9cf6b7b557" [label="sha256:4cfe1dbed2323aa6486fc39780d596a8d6564d7f0ca89eb62ed23f9cf6b7b557" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:02067807c4273811dd4b144ffdfe9c814054308b204213bf8e18d02c2826f8cc" [label=""];
  "sha256:02067807c4273811dd4b144ffdfe9c814054308b204213bf8e18d02c2826f8cc" -> "sha256:a0e6199c69ac0a4b0a2215e577d52ffa34fc8938a38e83a10043bfdfcb5b09dc" [label=""];
  "sha256:3fcfb433ce7f127fe576dda8a96ca66292e8d12523096214608548b599f556e8" -> "sha256:a0e6199c69ac0a4b0a2215e577d52ffa34fc8938a38e83a10043bfdfcb5b09dc" [label=""];
  "sha256:a0e6199c69ac0a4b0a2215e577d52ffa34fc8938a38e83a10043bfdfcb5b09dc" -> "sha256:4cfe1dbed2323aa6486fc39780d596a8d6564d7f0ca89eb62ed23f9cf6b7b557" [label=""];
}

