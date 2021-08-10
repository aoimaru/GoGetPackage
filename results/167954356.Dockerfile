[app/sources/167954356.Dockerfile]
digraph {
  "sha256:593aa99738f2f7f6647b6d64fea4f7385c141258dc2612684b5c088bb9a19afb" [label="docker-image://docker.io/spotify/kafka:latest" shape="ellipse"];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" [label="local://context" shape="ellipse"];
  "sha256:23b6edbdd22c854556ca0b50cd5eebad47856bef09ca60aa84a97d3d96b4273d" [label="copy{src=/kafka-0.7.2.jar, dest=/kafka-0.7.2.jar}" shape="note"];
  "sha256:0740f750d04a24ce293a04c0e7c1fa403d85eb9a3c8adbfd15a6c53a436f944f" [label="copy{src=/zkclient-0.1.jar, dest=/zkclient-0.1.jar}" shape="note"];
  "sha256:731e1c6a769c462ea0b14f61c976948e8a976849c06f4b674b9e3b10f3a11609" [label="copy{src=/consumer.properties, dest=/consumer.properties}" shape="note"];
  "sha256:46528b557e5e76d588912011a2912eb818fd310193b7dcf94e8f610f1a48b1ef" [label="copy{src=/producer.properties, dest=/producer.properties}" shape="note"];
  "sha256:ca820204a23ccc17e3bace708bd01f3e55e3211905ef062ff341d65d14eb6420" [label="copy{src=/start_proxy.sh, dest=/start_proxy.sh}" shape="note"];
  "sha256:b2c1f15d5f83a33fdcb78239650364e57ce5359ca635bd3626d65730a5e0458f" [label="copy{src=/kafkaproxy.conf, dest=/etc/supervisor/conf.d/kafkaproxy.conf}" shape="note"];
  "sha256:f347554c116f4c495f453e734b24b22cfb385d372f1500b4c609abd03fe66c90" [label="https://archive.apache.org/dist/kafka/0.8.1/kafka_2.8.0-0.8.1.tgz" shape="ellipse"];
  "sha256:7d1b123d4bbaadf802884145f48b8750cc46e58b6908a332297900d254298994" [label="copy{src=/kafka_2.8.0-0.8.1.tgz, dest=/}" shape="note"];
  "sha256:82de308737d9fd4bc00639d9a7be4261491a953d0f6a4bcd3be8362dd1072413" [label="/bin/sh -c cd / && tar xzf kafka_2.8.0-0.8.1.tgz" shape="box"];
  "sha256:66a04df05ddfe4c6a42344d55426713fbfda2dd7805313e7562dc9623bcde436" [label="sha256:66a04df05ddfe4c6a42344d55426713fbfda2dd7805313e7562dc9623bcde436" shape="plaintext"];
  "sha256:593aa99738f2f7f6647b6d64fea4f7385c141258dc2612684b5c088bb9a19afb" -> "sha256:23b6edbdd22c854556ca0b50cd5eebad47856bef09ca60aa84a97d3d96b4273d" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:23b6edbdd22c854556ca0b50cd5eebad47856bef09ca60aa84a97d3d96b4273d" [label=""];
  "sha256:23b6edbdd22c854556ca0b50cd5eebad47856bef09ca60aa84a97d3d96b4273d" -> "sha256:0740f750d04a24ce293a04c0e7c1fa403d85eb9a3c8adbfd15a6c53a436f944f" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:0740f750d04a24ce293a04c0e7c1fa403d85eb9a3c8adbfd15a6c53a436f944f" [label=""];
  "sha256:0740f750d04a24ce293a04c0e7c1fa403d85eb9a3c8adbfd15a6c53a436f944f" -> "sha256:731e1c6a769c462ea0b14f61c976948e8a976849c06f4b674b9e3b10f3a11609" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:731e1c6a769c462ea0b14f61c976948e8a976849c06f4b674b9e3b10f3a11609" [label=""];
  "sha256:731e1c6a769c462ea0b14f61c976948e8a976849c06f4b674b9e3b10f3a11609" -> "sha256:46528b557e5e76d588912011a2912eb818fd310193b7dcf94e8f610f1a48b1ef" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:46528b557e5e76d588912011a2912eb818fd310193b7dcf94e8f610f1a48b1ef" [label=""];
  "sha256:46528b557e5e76d588912011a2912eb818fd310193b7dcf94e8f610f1a48b1ef" -> "sha256:ca820204a23ccc17e3bace708bd01f3e55e3211905ef062ff341d65d14eb6420" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:ca820204a23ccc17e3bace708bd01f3e55e3211905ef062ff341d65d14eb6420" [label=""];
  "sha256:ca820204a23ccc17e3bace708bd01f3e55e3211905ef062ff341d65d14eb6420" -> "sha256:b2c1f15d5f83a33fdcb78239650364e57ce5359ca635bd3626d65730a5e0458f" [label=""];
  "sha256:32ac73dbe8cbec52abceb717fcbb3da72aa5c3e9dfa04611060b356650fa1c68" -> "sha256:b2c1f15d5f83a33fdcb78239650364e57ce5359ca635bd3626d65730a5e0458f" [label=""];
  "sha256:b2c1f15d5f83a33fdcb78239650364e57ce5359ca635bd3626d65730a5e0458f" -> "sha256:7d1b123d4bbaadf802884145f48b8750cc46e58b6908a332297900d254298994" [label=""];
  "sha256:f347554c116f4c495f453e734b24b22cfb385d372f1500b4c609abd03fe66c90" -> "sha256:7d1b123d4bbaadf802884145f48b8750cc46e58b6908a332297900d254298994" [label=""];
  "sha256:7d1b123d4bbaadf802884145f48b8750cc46e58b6908a332297900d254298994" -> "sha256:82de308737d9fd4bc00639d9a7be4261491a953d0f6a4bcd3be8362dd1072413" [label=""];
  "sha256:82de308737d9fd4bc00639d9a7be4261491a953d0f6a4bcd3be8362dd1072413" -> "sha256:66a04df05ddfe4c6a42344d55426713fbfda2dd7805313e7562dc9623bcde436" [label=""];
}

