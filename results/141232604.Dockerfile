[app/sources/141232604.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:0a2b0f1fdc077ee630a0f9b259f457c94cfdfb17ce780c0b60f047a00ab87b7a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:20efa908ac2415da7b0b4b77bbfc71b308b09983f96512f0ebaa4bc89eede23d" [label="/bin/sh -c git clone https://github.com/google/citest.git && cd citest && pip install -r requirements.txt" shape="box"];
  "sha256:e28285ab991ef0c9d2c0920b2e04fd335e01e458b78815c9db37699a0d2e8e47" [label="local://context" shape="ellipse"];
  "sha256:0aa73f802e99b45e40058585935d361ead59a7eee8ee91df5640301695b7e1a5" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:321ab0644bc6df16fa8407825b50f29595579bc19a7f0ed8cd89636f94bbb91a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:dfcdd471d09c7ad04cf1470226b44fcbae01376a77f2fb1eca1d9472515c569f" [label="https://downloads.dcos.io/binaries/cli/linux/x86-64/dcos-1.8/dcos" shape="ellipse"];
  "sha256:ea7fdca4550eaae1b9cc80ccf9296db0777ffee5635332d1837a5e1252e9f002" [label="copy{src=/dcos, dest=/usr/src/app/bin/dcos}" shape="note"];
  "sha256:3e75ebef9098e3afd89d39e7204925d6e7956b56c0724b97106a45e981c45e96" [label="/bin/sh -c chmod +x /usr/src/app/bin/dcos" shape="box"];
  "sha256:ff1c9152b44775f886d96847fef0c10a26b55a135d9313862b11d4f52f0b7987" [label="sha256:ff1c9152b44775f886d96847fef0c10a26b55a135d9313862b11d4f52f0b7987" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:0a2b0f1fdc077ee630a0f9b259f457c94cfdfb17ce780c0b60f047a00ab87b7a" [label=""];
  "sha256:0a2b0f1fdc077ee630a0f9b259f457c94cfdfb17ce780c0b60f047a00ab87b7a" -> "sha256:20efa908ac2415da7b0b4b77bbfc71b308b09983f96512f0ebaa4bc89eede23d" [label=""];
  "sha256:20efa908ac2415da7b0b4b77bbfc71b308b09983f96512f0ebaa4bc89eede23d" -> "sha256:0aa73f802e99b45e40058585935d361ead59a7eee8ee91df5640301695b7e1a5" [label=""];
  "sha256:e28285ab991ef0c9d2c0920b2e04fd335e01e458b78815c9db37699a0d2e8e47" -> "sha256:0aa73f802e99b45e40058585935d361ead59a7eee8ee91df5640301695b7e1a5" [label=""];
  "sha256:0aa73f802e99b45e40058585935d361ead59a7eee8ee91df5640301695b7e1a5" -> "sha256:321ab0644bc6df16fa8407825b50f29595579bc19a7f0ed8cd89636f94bbb91a" [label=""];
  "sha256:321ab0644bc6df16fa8407825b50f29595579bc19a7f0ed8cd89636f94bbb91a" -> "sha256:ea7fdca4550eaae1b9cc80ccf9296db0777ffee5635332d1837a5e1252e9f002" [label=""];
  "sha256:dfcdd471d09c7ad04cf1470226b44fcbae01376a77f2fb1eca1d9472515c569f" -> "sha256:ea7fdca4550eaae1b9cc80ccf9296db0777ffee5635332d1837a5e1252e9f002" [label=""];
  "sha256:ea7fdca4550eaae1b9cc80ccf9296db0777ffee5635332d1837a5e1252e9f002" -> "sha256:3e75ebef9098e3afd89d39e7204925d6e7956b56c0724b97106a45e981c45e96" [label=""];
  "sha256:3e75ebef9098e3afd89d39e7204925d6e7956b56c0724b97106a45e981c45e96" -> "sha256:ff1c9152b44775f886d96847fef0c10a26b55a135d9313862b11d4f52f0b7987" [label=""];
}

