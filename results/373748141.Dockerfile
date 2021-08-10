[app/sources/373748141.Dockerfile]
digraph {
  "sha256:908a0d81b245b025b79692f593ac686dd3b31cd2c488a2c5a740c383f5269b22" [label="docker-image://docker.io/library/openjdk:8-jdk@sha256:4c7bc9c7251af1d96ccfb80207576f3144994c17a3f0df3d4888a7bdb6df9de6" shape="ellipse"];
  "sha256:890e7218f5e5f932a3674b93c22d5baad9d11103cf222284d7dede47b170cf96" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     apt-transport-https     ca-certificates     curl     gnupg2     software-properties-common  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7f8fc342430dff6bd7dd00731ac28583b5e21b06ea2ed25b5bade02946293c09" [label="/bin/sh -c curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -" shape="box"];
  "sha256:8f34aaf2e66d33f9ddef0a44bea3090d7e4587c1c131d4f4a3cda2e651ecd124" [label="/bin/sh -c add-apt-repository    \"deb [arch=amd64] https://download.docker.com/linux/debian    $(lsb_release -cs)    stable\"" shape="box"];
  "sha256:5f54c75d60a6c9cb79cf7c7f0f094b2b739894021e86b227b4d2e3e0482a0872" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     docker-ce  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89e9103b69733a58120c17248a6e8bf34af41b64af63ec6f0526bded9de99c68" [label="/bin/sh -c mkdir -p /root/.docker  && echo \"{}\" > /root/.docker/config.json" shape="box"];
  "sha256:1f7ea230695909daf0252c04273942dcdb300312b31cb7f7e54bd133ceb91ee2" [label="sha256:1f7ea230695909daf0252c04273942dcdb300312b31cb7f7e54bd133ceb91ee2" shape="plaintext"];
  "sha256:908a0d81b245b025b79692f593ac686dd3b31cd2c488a2c5a740c383f5269b22" -> "sha256:890e7218f5e5f932a3674b93c22d5baad9d11103cf222284d7dede47b170cf96" [label=""];
  "sha256:890e7218f5e5f932a3674b93c22d5baad9d11103cf222284d7dede47b170cf96" -> "sha256:7f8fc342430dff6bd7dd00731ac28583b5e21b06ea2ed25b5bade02946293c09" [label=""];
  "sha256:7f8fc342430dff6bd7dd00731ac28583b5e21b06ea2ed25b5bade02946293c09" -> "sha256:8f34aaf2e66d33f9ddef0a44bea3090d7e4587c1c131d4f4a3cda2e651ecd124" [label=""];
  "sha256:8f34aaf2e66d33f9ddef0a44bea3090d7e4587c1c131d4f4a3cda2e651ecd124" -> "sha256:5f54c75d60a6c9cb79cf7c7f0f094b2b739894021e86b227b4d2e3e0482a0872" [label=""];
  "sha256:5f54c75d60a6c9cb79cf7c7f0f094b2b739894021e86b227b4d2e3e0482a0872" -> "sha256:89e9103b69733a58120c17248a6e8bf34af41b64af63ec6f0526bded9de99c68" [label=""];
  "sha256:89e9103b69733a58120c17248a6e8bf34af41b64af63ec6f0526bded9de99c68" -> "sha256:1f7ea230695909daf0252c04273942dcdb300312b31cb7f7e54bd133ceb91ee2" [label=""];
}

