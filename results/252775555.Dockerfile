[app/sources/252775555.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:de8bbf2a33efc0d33a0645a72a10068e705553f632914da1fb48e17f0ff91796" [label="/bin/sh -c mkdir -p ${ORAY_HOME}" shape="box"];
  "sha256:d175b06b9f70467a77b3e8677f5fdb0d977bb8375d72c43642f6210406f1f4c8" [label="/bin/sh -c mkdir -p /tmp/" shape="box"];
  "sha256:96ee9fb9109d9e579f636033efbce790eab0662052f66c7dc298e75a347fbeb0" [label="local://context" shape="ellipse"];
  "sha256:7aa33711994dbfe7c3076ae2f11d27f1aab1320600ae5100a5c2813d1235cc6b" [label="copy{src=/phddns.deb, dest=/tmp/hddns.deb}" shape="note"];
  "sha256:dfd36c1d22dac060e0b71208c5c4d40c71a18a10789c097d19d37c9f05a0e3c3" [label="/bin/sh -c dpkg -i /tmp/hddns.deb && rm /tmp/hddns.deb" shape="box"];
  "sha256:37b6a500791c5301c32dd3dbee0d9b757f255516a031a75f4cac9c420f520947" [label="/bin/sh -c apt-get update && apt-get install -y supervisor" shape="box"];
  "sha256:d2f58127c840d850606479c631fcde616d114971629f7f38157a7b0fa27a6021" [label="copy{src=/supervisord.conf, dest=/supervisord.conf}" shape="note"];
  "sha256:b5901e89ceb73d8a80b13a19c51d9b5481bbeb77cf6771f46993005a00ebe761" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:1ef6c12b6c71bce4e4b982d91eacb5016f6ca5c0f150de538e6025d9f8b495d7" [label="sha256:1ef6c12b6c71bce4e4b982d91eacb5016f6ca5c0f150de538e6025d9f8b495d7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:de8bbf2a33efc0d33a0645a72a10068e705553f632914da1fb48e17f0ff91796" [label=""];
  "sha256:de8bbf2a33efc0d33a0645a72a10068e705553f632914da1fb48e17f0ff91796" -> "sha256:d175b06b9f70467a77b3e8677f5fdb0d977bb8375d72c43642f6210406f1f4c8" [label=""];
  "sha256:d175b06b9f70467a77b3e8677f5fdb0d977bb8375d72c43642f6210406f1f4c8" -> "sha256:7aa33711994dbfe7c3076ae2f11d27f1aab1320600ae5100a5c2813d1235cc6b" [label=""];
  "sha256:96ee9fb9109d9e579f636033efbce790eab0662052f66c7dc298e75a347fbeb0" -> "sha256:7aa33711994dbfe7c3076ae2f11d27f1aab1320600ae5100a5c2813d1235cc6b" [label=""];
  "sha256:7aa33711994dbfe7c3076ae2f11d27f1aab1320600ae5100a5c2813d1235cc6b" -> "sha256:dfd36c1d22dac060e0b71208c5c4d40c71a18a10789c097d19d37c9f05a0e3c3" [label=""];
  "sha256:dfd36c1d22dac060e0b71208c5c4d40c71a18a10789c097d19d37c9f05a0e3c3" -> "sha256:37b6a500791c5301c32dd3dbee0d9b757f255516a031a75f4cac9c420f520947" [label=""];
  "sha256:37b6a500791c5301c32dd3dbee0d9b757f255516a031a75f4cac9c420f520947" -> "sha256:d2f58127c840d850606479c631fcde616d114971629f7f38157a7b0fa27a6021" [label=""];
  "sha256:96ee9fb9109d9e579f636033efbce790eab0662052f66c7dc298e75a347fbeb0" -> "sha256:d2f58127c840d850606479c631fcde616d114971629f7f38157a7b0fa27a6021" [label=""];
  "sha256:d2f58127c840d850606479c631fcde616d114971629f7f38157a7b0fa27a6021" -> "sha256:b5901e89ceb73d8a80b13a19c51d9b5481bbeb77cf6771f46993005a00ebe761" [label=""];
  "sha256:96ee9fb9109d9e579f636033efbce790eab0662052f66c7dc298e75a347fbeb0" -> "sha256:b5901e89ceb73d8a80b13a19c51d9b5481bbeb77cf6771f46993005a00ebe761" [label=""];
  "sha256:b5901e89ceb73d8a80b13a19c51d9b5481bbeb77cf6771f46993005a00ebe761" -> "sha256:1ef6c12b6c71bce4e4b982d91eacb5016f6ca5c0f150de538e6025d9f8b495d7" [label=""];
}

