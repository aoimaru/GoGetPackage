[app/sources/463733626.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:66e0df4cf762005dcbf70e86433fa751334066e1aac814773a636f46d656b1e2" [label="/bin/sh -c dnf install -y arduino cmake make redhat-lsb-core git" shape="box"];
  "sha256:5518aa85fa784fe846c63e6baa7dc4bce0b3e3aebfdeca13318b6bcb0b18220f" [label="/bin/sh -c mkdir -p /root/Arduino/libraries" shape="box"];
  "sha256:86bcc3a75e1d4aef9dd7243773244887502354bc4783dde53bc766cbba82211f" [label="/bin/sh -c git clone https://github.com/arduino-libraries/Servo.git /root/Arduino/libraries/Servo" shape="box"];
  "sha256:93aad11d7a65af3aec6ece92cb336101eb90985bd4d281df5591f1400147db7e" [label="/bin/sh -c git clone https://github.com/arduino-libraries/Stepper.git /root/Arduino/libraries/Stepper" shape="box"];
  "sha256:135a956c19989371030984f6f957556c89db0866bf7f535b41a6358ed3d5bf87" [label="/bin/sh -c git clone https://github.com/arduino-libraries/Ethernet.git /root/Arduino/libraries/Ethernet" shape="box"];
  "sha256:7be4df84df4c8bf4cfa822b9fe09457d129c10715700dda2792b829415aaaac8" [label="local://context" shape="ellipse"];
  "sha256:26e5e4e4be8af364bf9ce1bbcd03bafca7e815457c842f0aac171ffc1ca32e06" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:9a4249312a8fce084ccc1e08cfbe63f8c86e49276b12a735dc53eab2d7d1cd21" [label="sha256:9a4249312a8fce084ccc1e08cfbe63f8c86e49276b12a735dc53eab2d7d1cd21" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:66e0df4cf762005dcbf70e86433fa751334066e1aac814773a636f46d656b1e2" [label=""];
  "sha256:66e0df4cf762005dcbf70e86433fa751334066e1aac814773a636f46d656b1e2" -> "sha256:5518aa85fa784fe846c63e6baa7dc4bce0b3e3aebfdeca13318b6bcb0b18220f" [label=""];
  "sha256:5518aa85fa784fe846c63e6baa7dc4bce0b3e3aebfdeca13318b6bcb0b18220f" -> "sha256:86bcc3a75e1d4aef9dd7243773244887502354bc4783dde53bc766cbba82211f" [label=""];
  "sha256:86bcc3a75e1d4aef9dd7243773244887502354bc4783dde53bc766cbba82211f" -> "sha256:93aad11d7a65af3aec6ece92cb336101eb90985bd4d281df5591f1400147db7e" [label=""];
  "sha256:93aad11d7a65af3aec6ece92cb336101eb90985bd4d281df5591f1400147db7e" -> "sha256:135a956c19989371030984f6f957556c89db0866bf7f535b41a6358ed3d5bf87" [label=""];
  "sha256:135a956c19989371030984f6f957556c89db0866bf7f535b41a6358ed3d5bf87" -> "sha256:26e5e4e4be8af364bf9ce1bbcd03bafca7e815457c842f0aac171ffc1ca32e06" [label=""];
  "sha256:7be4df84df4c8bf4cfa822b9fe09457d129c10715700dda2792b829415aaaac8" -> "sha256:26e5e4e4be8af364bf9ce1bbcd03bafca7e815457c842f0aac171ffc1ca32e06" [label=""];
  "sha256:26e5e4e4be8af364bf9ce1bbcd03bafca7e815457c842f0aac171ffc1ca32e06" -> "sha256:9a4249312a8fce084ccc1e08cfbe63f8c86e49276b12a735dc53eab2d7d1cd21" [label=""];
}

