[app/sources/234805611.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:abbb240bcaa6731deba85182f6194e57221313a83bbf8af4f01ca818a80bfe3a" [label="/bin/sh -c apk update && apk add openjdk8-jre-base py3-pip &&     pip3 install pytest pexpect requests" shape="box"];
  "sha256:e1dc86bae73b105747a52c4c7a9552959de3da2394f0e1d87fa9e7c800c8970b" [label="mkdir{path=/opt/corenlp}" shape="note"];
  "sha256:cdc1206d4c4a735dd5530436ee8b7a5437f1de557cfbd030a16be274a50cddf6" [label="/bin/sh -c apk update &&     apk add git wget openjdk8-jre-base py2-pip py2-curl &&     pip install setuptools" shape="box"];
  "sha256:623afd24dbdf811e46cd253c5d3b2f336df1e10e57df0ea881c41d0eba5baf5e" [label="mkdir{path=/opt}" shape="note"];
  "sha256:af1974d849d0c1f65c0985df61fb05d0aa3cd2adb416f7925c3cc19953732378" [label="/bin/sh -c git clone https://github.com/arne-cl/grepurl.git" shape="box"];
  "sha256:b385630571d0dfdfdcbe80120b0da12be53d3dc1c91259daccd63f21cdc322e6" [label="mkdir{path=/opt/grepurl}" shape="note"];
  "sha256:a7f9c4b6e4709fbac45bd74065bfac2c242c8cddde7f807a10da4d1176bc8c1e" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:c49d7fe90c143523623228e6e74cdd2fcf4e229f0ba2eb65ac2a05d49159be5a" [label="mkdir{path=/opt}" shape="note"];
  "sha256:0f19e1c02d4aa3cff1447d690fd6665b08a316ced0e3728fd8edaddaa64264ee" [label="/bin/sh -c wget $(grepurl -r 'zip$' -a http://stanfordnlp.github.io/CoreNLP/) &&     unzip stanford-corenlp-full-*.zip &&     mv $(ls -d stanford-corenlp-full-*/) corenlp && rm *.zip" shape="box"];
  "sha256:5c332afaf827e0ec9acf84167b9ede4db34129b40a14a17cd13e56f33469e3cf" [label="mkdir{path=/opt/corenlp}" shape="note"];
  "sha256:30cbfa0303ed42e6f7113ac294bc33e2ba07bf7e4aa91d136058c986c3c89090" [label="/bin/sh -c wget $(grepurl -r 'english.*jar$' -a http://stanfordnlp.github.io/CoreNLP | head -n 1)" shape="box"];
  "sha256:7f0adfcd09c1269d9c5f98cfe563eddc5b256888dfd7a889f57d491bf602df90" [label="copy{src=/opt/corenlp, dest=/opt/corenlp/}" shape="note"];
  "sha256:21091c156c794ed8747bb03c8537f3e27c4b9990187a9ff37d925c1301c6c9c2" [label="local://context" shape="ellipse"];
  "sha256:fa9b0d9362129ebc14ee3b893ea78a581ae8fcbaedec72d6eb60dfc1a9e55c80" [label="copy{src=/test_api.py, dest=/opt/corenlp/}" shape="note"];
  "sha256:07e42b9cd92de36d1092c89d51666d0d422b0b27c91550be56c5c10b8244194b" [label="sha256:07e42b9cd92de36d1092c89d51666d0d422b0b27c91550be56c5c10b8244194b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:abbb240bcaa6731deba85182f6194e57221313a83bbf8af4f01ca818a80bfe3a" [label=""];
  "sha256:abbb240bcaa6731deba85182f6194e57221313a83bbf8af4f01ca818a80bfe3a" -> "sha256:e1dc86bae73b105747a52c4c7a9552959de3da2394f0e1d87fa9e7c800c8970b" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:cdc1206d4c4a735dd5530436ee8b7a5437f1de557cfbd030a16be274a50cddf6" [label=""];
  "sha256:cdc1206d4c4a735dd5530436ee8b7a5437f1de557cfbd030a16be274a50cddf6" -> "sha256:623afd24dbdf811e46cd253c5d3b2f336df1e10e57df0ea881c41d0eba5baf5e" [label=""];
  "sha256:623afd24dbdf811e46cd253c5d3b2f336df1e10e57df0ea881c41d0eba5baf5e" -> "sha256:af1974d849d0c1f65c0985df61fb05d0aa3cd2adb416f7925c3cc19953732378" [label=""];
  "sha256:af1974d849d0c1f65c0985df61fb05d0aa3cd2adb416f7925c3cc19953732378" -> "sha256:b385630571d0dfdfdcbe80120b0da12be53d3dc1c91259daccd63f21cdc322e6" [label=""];
  "sha256:b385630571d0dfdfdcbe80120b0da12be53d3dc1c91259daccd63f21cdc322e6" -> "sha256:a7f9c4b6e4709fbac45bd74065bfac2c242c8cddde7f807a10da4d1176bc8c1e" [label=""];
  "sha256:a7f9c4b6e4709fbac45bd74065bfac2c242c8cddde7f807a10da4d1176bc8c1e" -> "sha256:c49d7fe90c143523623228e6e74cdd2fcf4e229f0ba2eb65ac2a05d49159be5a" [label=""];
  "sha256:c49d7fe90c143523623228e6e74cdd2fcf4e229f0ba2eb65ac2a05d49159be5a" -> "sha256:0f19e1c02d4aa3cff1447d690fd6665b08a316ced0e3728fd8edaddaa64264ee" [label=""];
  "sha256:0f19e1c02d4aa3cff1447d690fd6665b08a316ced0e3728fd8edaddaa64264ee" -> "sha256:5c332afaf827e0ec9acf84167b9ede4db34129b40a14a17cd13e56f33469e3cf" [label=""];
  "sha256:5c332afaf827e0ec9acf84167b9ede4db34129b40a14a17cd13e56f33469e3cf" -> "sha256:30cbfa0303ed42e6f7113ac294bc33e2ba07bf7e4aa91d136058c986c3c89090" [label=""];
  "sha256:e1dc86bae73b105747a52c4c7a9552959de3da2394f0e1d87fa9e7c800c8970b" -> "sha256:7f0adfcd09c1269d9c5f98cfe563eddc5b256888dfd7a889f57d491bf602df90" [label=""];
  "sha256:30cbfa0303ed42e6f7113ac294bc33e2ba07bf7e4aa91d136058c986c3c89090" -> "sha256:7f0adfcd09c1269d9c5f98cfe563eddc5b256888dfd7a889f57d491bf602df90" [label=""];
  "sha256:7f0adfcd09c1269d9c5f98cfe563eddc5b256888dfd7a889f57d491bf602df90" -> "sha256:fa9b0d9362129ebc14ee3b893ea78a581ae8fcbaedec72d6eb60dfc1a9e55c80" [label=""];
  "sha256:21091c156c794ed8747bb03c8537f3e27c4b9990187a9ff37d925c1301c6c9c2" -> "sha256:fa9b0d9362129ebc14ee3b893ea78a581ae8fcbaedec72d6eb60dfc1a9e55c80" [label=""];
  "sha256:fa9b0d9362129ebc14ee3b893ea78a581ae8fcbaedec72d6eb60dfc1a9e55c80" -> "sha256:07e42b9cd92de36d1092c89d51666d0d422b0b27c91550be56c5c10b8244194b" [label=""];
}

