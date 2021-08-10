[app/sources/276953394.Dockerfile]
digraph {
  "sha256:bf66af8ab1b27c30ea818d0cf7ca11c8e108187b125b167ba54b955eeea628e9" [label="local://context" shape="ellipse"];
  "sha256:4b393fecb41be3fbf8daa7d850cb689d8d07806a31067771fc3a9efbcb939782" [label="docker-image://docker.io/library/minimal-ubuntu:latest" shape="ellipse"];
  "sha256:d90cf5a1ddfafbb5e0c83a44f17ffeca02eca059ba4104f9be5cc9c09ba4ec18" [label="/bin/sh -c apt install -y ntp krb5-config krb5-user" shape="box"];
  "sha256:21b4f362493e56edb5f3bb6416674138786fa94c433faa642fd243959039ac48" [label="/bin/sh -c apt install -y openssh-client" shape="box"];
  "sha256:1be5b103bf00c0aa01920b7d13950fde06253754c56613e182fec37de71ba099" [label="copy{src=/nodes/machine/index.html, dest=/}" shape="note"];
  "sha256:4e44964d6a8e144673a7b4d78414c389c673d4ca8ece86a47b38525cf1c27348" [label="copy{src=/services/krb5/client/krb5.conf, dest=/etc/krb5.conf}" shape="note"];
  "sha256:a2b94a401828b356065e649a2bd49f936e61f0637b1cc35e0110e3e2461a741d" [label="copy{src=/services/ssh/client/ssh_config, dest=/etc/ssh/ssh_config}" shape="note"];
  "sha256:a8fca8022cdccbb57e46ff2e52af913c8055dfcaf52f2c4897426d73227d3dce" [label="copy{src=/nodes/machine/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:ef584850be8e8ee1c829c0d53c16b225bcb1c3ea7adc88266b8fb0808817a664" [label="sha256:ef584850be8e8ee1c829c0d53c16b225bcb1c3ea7adc88266b8fb0808817a664" shape="plaintext"];
  "sha256:4b393fecb41be3fbf8daa7d850cb689d8d07806a31067771fc3a9efbcb939782" -> "sha256:d90cf5a1ddfafbb5e0c83a44f17ffeca02eca059ba4104f9be5cc9c09ba4ec18" [label=""];
  "sha256:d90cf5a1ddfafbb5e0c83a44f17ffeca02eca059ba4104f9be5cc9c09ba4ec18" -> "sha256:21b4f362493e56edb5f3bb6416674138786fa94c433faa642fd243959039ac48" [label=""];
  "sha256:21b4f362493e56edb5f3bb6416674138786fa94c433faa642fd243959039ac48" -> "sha256:1be5b103bf00c0aa01920b7d13950fde06253754c56613e182fec37de71ba099" [label=""];
  "sha256:bf66af8ab1b27c30ea818d0cf7ca11c8e108187b125b167ba54b955eeea628e9" -> "sha256:1be5b103bf00c0aa01920b7d13950fde06253754c56613e182fec37de71ba099" [label=""];
  "sha256:1be5b103bf00c0aa01920b7d13950fde06253754c56613e182fec37de71ba099" -> "sha256:4e44964d6a8e144673a7b4d78414c389c673d4ca8ece86a47b38525cf1c27348" [label=""];
  "sha256:bf66af8ab1b27c30ea818d0cf7ca11c8e108187b125b167ba54b955eeea628e9" -> "sha256:4e44964d6a8e144673a7b4d78414c389c673d4ca8ece86a47b38525cf1c27348" [label=""];
  "sha256:4e44964d6a8e144673a7b4d78414c389c673d4ca8ece86a47b38525cf1c27348" -> "sha256:a2b94a401828b356065e649a2bd49f936e61f0637b1cc35e0110e3e2461a741d" [label=""];
  "sha256:bf66af8ab1b27c30ea818d0cf7ca11c8e108187b125b167ba54b955eeea628e9" -> "sha256:a2b94a401828b356065e649a2bd49f936e61f0637b1cc35e0110e3e2461a741d" [label=""];
  "sha256:a2b94a401828b356065e649a2bd49f936e61f0637b1cc35e0110e3e2461a741d" -> "sha256:a8fca8022cdccbb57e46ff2e52af913c8055dfcaf52f2c4897426d73227d3dce" [label=""];
  "sha256:bf66af8ab1b27c30ea818d0cf7ca11c8e108187b125b167ba54b955eeea628e9" -> "sha256:a8fca8022cdccbb57e46ff2e52af913c8055dfcaf52f2c4897426d73227d3dce" [label=""];
  "sha256:a8fca8022cdccbb57e46ff2e52af913c8055dfcaf52f2c4897426d73227d3dce" -> "sha256:ef584850be8e8ee1c829c0d53c16b225bcb1c3ea7adc88266b8fb0808817a664" [label=""];
}

