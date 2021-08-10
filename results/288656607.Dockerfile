[app/sources/288656607.Dockerfile]
digraph {
  "sha256:58b333f649c9f983e3c7880cbcd6a38f91b0b2d7997ba1770ac3ed80eb801248" [label="docker-image://mcr.microsoft.com/powershell:6.2.1-ubuntu-16.04@sha256:828aaedfbfbf6885800754618a99b7126f5dde4bb51d19a61a22f9a6044f70ee" shape="ellipse"];
  "sha256:84c462f8181647c49aef63c8f9fdd12951b73afdd9819413f30c18da960c3561" [label="/bin/sh -c mkdir -p /usr/local/share/powershell/Modules/Pode" shape="box"];
  "sha256:709da6c1d437e9d450b5417e10b1a05b00dc1c1f8f4f9d42fd700d91ab4fa5b4" [label="local://context" shape="ellipse"];
  "sha256:623f673c5e53aa224321648099c593c152ef5c34c877a71f1ba8d891a1b1bff4" [label="copy{src=/src, dest=/usr/local/share/powershell/Modules/Pode}" shape="note"];
  "sha256:a0ad1bf0f5314f8b44ac0ef2934fafd8002e958f948b3072aaef70e7f449241a" [label="sha256:a0ad1bf0f5314f8b44ac0ef2934fafd8002e958f948b3072aaef70e7f449241a" shape="plaintext"];
  "sha256:58b333f649c9f983e3c7880cbcd6a38f91b0b2d7997ba1770ac3ed80eb801248" -> "sha256:84c462f8181647c49aef63c8f9fdd12951b73afdd9819413f30c18da960c3561" [label=""];
  "sha256:84c462f8181647c49aef63c8f9fdd12951b73afdd9819413f30c18da960c3561" -> "sha256:623f673c5e53aa224321648099c593c152ef5c34c877a71f1ba8d891a1b1bff4" [label=""];
  "sha256:709da6c1d437e9d450b5417e10b1a05b00dc1c1f8f4f9d42fd700d91ab4fa5b4" -> "sha256:623f673c5e53aa224321648099c593c152ef5c34c877a71f1ba8d891a1b1bff4" [label=""];
  "sha256:623f673c5e53aa224321648099c593c152ef5c34c877a71f1ba8d891a1b1bff4" -> "sha256:a0ad1bf0f5314f8b44ac0ef2934fafd8002e958f948b3072aaef70e7f449241a" [label=""];
}

