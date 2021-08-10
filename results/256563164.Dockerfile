[app/sources/256563164.Dockerfile]
digraph {
  "sha256:65b0bd2d84911f488899789970e8ef502ced579967b492ebe340dd8e53061df5" [label="docker-image://docker.io/microsoft/vsts-agent:ubuntu-16.04-docker-17.12.0-ce" shape="ellipse"];
  "sha256:f6be8586081486c6f3843b057876914f4663b066eac285806d92fb64dfca7993" [label="/bin/sh -c set -x  && curl -fSL https://github.com/Microsoft/vsts-agent/releases/download/v2.116.1/vsts-agent-ubuntu.16.04-x64-2.116.1.tar.gz -o agent.tgz  && mkdir agent  && cd agent  && tar -xz --no-same-owner -f ../agent.tgz  && cd ..  && rm agent.tgz" shape="box"];
  "sha256:b4e1e4c8a58ec7c720b1e9ae84f840fa4781c27e99b6bcf67af8ac42d6283d88" [label="local://context" shape="ellipse"];
  "sha256:cef491d887f8cd7a76349ccd0ec0e6479a36a6f6c14e18f8a8b97436ef4e398d" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:19ba4c20a7d31eaef65f8095ad5c2679c7050a1b30462f4794b2e00211ababe0" [label="/bin/sh -c chmod +x start.sh" shape="box"];
  "sha256:50fd66fb35c65d1f24c067169d8a600445d2d801250d92204f1f93ef51dc67a4" [label="sha256:50fd66fb35c65d1f24c067169d8a600445d2d801250d92204f1f93ef51dc67a4" shape="plaintext"];
  "sha256:65b0bd2d84911f488899789970e8ef502ced579967b492ebe340dd8e53061df5" -> "sha256:f6be8586081486c6f3843b057876914f4663b066eac285806d92fb64dfca7993" [label=""];
  "sha256:f6be8586081486c6f3843b057876914f4663b066eac285806d92fb64dfca7993" -> "sha256:cef491d887f8cd7a76349ccd0ec0e6479a36a6f6c14e18f8a8b97436ef4e398d" [label=""];
  "sha256:b4e1e4c8a58ec7c720b1e9ae84f840fa4781c27e99b6bcf67af8ac42d6283d88" -> "sha256:cef491d887f8cd7a76349ccd0ec0e6479a36a6f6c14e18f8a8b97436ef4e398d" [label=""];
  "sha256:cef491d887f8cd7a76349ccd0ec0e6479a36a6f6c14e18f8a8b97436ef4e398d" -> "sha256:19ba4c20a7d31eaef65f8095ad5c2679c7050a1b30462f4794b2e00211ababe0" [label=""];
  "sha256:19ba4c20a7d31eaef65f8095ad5c2679c7050a1b30462f4794b2e00211ababe0" -> "sha256:50fd66fb35c65d1f24c067169d8a600445d2d801250d92204f1f93ef51dc67a4" [label=""];
}

