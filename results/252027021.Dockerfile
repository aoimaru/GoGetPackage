[app/sources/252027021.Dockerfile]
digraph {
  "sha256:1e83a7436af1ff1f76eb504fdaecaec328cb3010fd7843a5ed9bfca808346438" [label="docker-image://docker.io/tvial/docker-mailserver:latest" shape="ellipse"];
  "sha256:8ec45b76f95bb82a67f2179a7a28e2eafb0e8bd900fdecb90b0d6c1cd749cab1" [label="/bin/sh -c apt-get update -qq && apt-get install -y --no-install-recommends sudo cpanminus make git &&  apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* &&  adduser --home /var/opt/gpgit --disabled-password --disabled-login --gecos \"\" gpgit &&  mkdir -p /tmp/keys" shape="box"];
  "sha256:3bd1cbdfc8067233f7adcaef8b55b2bf5e00835e47bffcdd5a561e87e8febedc" [label="local://context" shape="ellipse"];
  "sha256:2b78abc537418a3d15338493715e6013c842660c09d45dfafb28061cee1dc9ca" [label="copy{src=/bin/*, dest=/tmp/}" shape="note"];
  "sha256:7b074dcf41d710e8ec208fb34154993d0fe7265db59350766954792cf8f79f14" [label="copy{src=/keys/*, dest=/tmp/keys/}" shape="note"];
  "sha256:32cd4bb790137809adfb27853c83d39fd4377c7ab5681b5678356f266f832dfa" [label="/bin/sh -c mkdir -p /var/opt/gpgit/.gnupg &&   chown gpgit:gpgit /var/opt/gpgit/.gnupg && chmod 700 /var/opt/gpgit/.gnupg &&   chmod 755 /tmp/trust_keys.sh" shape="box"];
  "sha256:ca0c7430d686faed95e1d45f1e43ebcb6b087614499968d10c769513aacc6183" [label="/bin/bash -c for key in $(ls /tmp/keys); do /tmp/trust_keys.sh ${key}; done" shape="box"];
  "sha256:de2ada4c59b614b40e69763c3a1cfea9ab6cfacb9013e3e20134038ae52cdbf0" [label="/bin/sh -c cpanm Mail::GnuPG &&   rm -rf /tmp/*" shape="box"];
  "sha256:a66de3ee3f88b84280d5f33a12f20a348e288f7bd00cd22cf6e0deddfe5d1f18" [label="mkdir{path=/opt}" shape="note"];
  "sha256:a552471aa93f7e095c2d064ed87a8733af49d77273bbd05197994fa2f224f4dd" [label="/bin/sh -c git clone https://gitlab.com/ConorIA/gpgit.git /opt/gpgit &&    lnno=$(( $(grep -n \"127.0.0.1:10025 inet\" /etc/postfix/master.cf | cut -d : -f 1) + 1 )) &&     sed -i \"${lnno}s/.*/  -o content_filter=gpgit-pipe/\" /etc/postfix/master.cf &&     echo \"\" >> /etc/postfix/master.cf &&    echo \"gpgit-pipe   unix    -   n      n       -       -       pipe\" >> /etc/postfix/master.cf &&    echo \"  flags=Rq user=gpgit argv=/opt/gpgit/gpgit_postfix.sh -oi -f \\${sender} \\${recipient}\" >> /etc/postfix/master.cf" shape="box"];
  "sha256:a90af8cf0060f1477d592c2612a498afe5d74edb36ac76de65ad147cb2f713f4" [label="copy{src=/bin/gpgit_postfix.sh, dest=/opt/gpgit/gpgit_postfix.sh}" shape="note"];
  "sha256:0439506c5896db7b842c6502703c7831d42b8db40a8ed8524f7bce88456e021d" [label="/bin/sh -c chmod 755 /opt/gpgit/gpgit_postfix.sh &&    if [ \"${SIGNING_KEY}\" != \"unset\"  ]; then       sed -i \"s/GPGIT_ARGS=''/GPGIT_ARGS\\=\\'--encrypt-mode pgpmime-sign --sign-key $SIGNING_KEY --sign-pass $PASSPHRASE\\'/g\" /opt/gpgit/gpgit_postfix.sh;     fi" shape="box"];
  "sha256:16f4005e7e160472769a2f69123172cfcae923179c58e96836eafa157be8e933" [label="sha256:16f4005e7e160472769a2f69123172cfcae923179c58e96836eafa157be8e933" shape="plaintext"];
  "sha256:1e83a7436af1ff1f76eb504fdaecaec328cb3010fd7843a5ed9bfca808346438" -> "sha256:8ec45b76f95bb82a67f2179a7a28e2eafb0e8bd900fdecb90b0d6c1cd749cab1" [label=""];
  "sha256:8ec45b76f95bb82a67f2179a7a28e2eafb0e8bd900fdecb90b0d6c1cd749cab1" -> "sha256:2b78abc537418a3d15338493715e6013c842660c09d45dfafb28061cee1dc9ca" [label=""];
  "sha256:3bd1cbdfc8067233f7adcaef8b55b2bf5e00835e47bffcdd5a561e87e8febedc" -> "sha256:2b78abc537418a3d15338493715e6013c842660c09d45dfafb28061cee1dc9ca" [label=""];
  "sha256:2b78abc537418a3d15338493715e6013c842660c09d45dfafb28061cee1dc9ca" -> "sha256:7b074dcf41d710e8ec208fb34154993d0fe7265db59350766954792cf8f79f14" [label=""];
  "sha256:3bd1cbdfc8067233f7adcaef8b55b2bf5e00835e47bffcdd5a561e87e8febedc" -> "sha256:7b074dcf41d710e8ec208fb34154993d0fe7265db59350766954792cf8f79f14" [label=""];
  "sha256:7b074dcf41d710e8ec208fb34154993d0fe7265db59350766954792cf8f79f14" -> "sha256:32cd4bb790137809adfb27853c83d39fd4377c7ab5681b5678356f266f832dfa" [label=""];
  "sha256:32cd4bb790137809adfb27853c83d39fd4377c7ab5681b5678356f266f832dfa" -> "sha256:ca0c7430d686faed95e1d45f1e43ebcb6b087614499968d10c769513aacc6183" [label=""];
  "sha256:ca0c7430d686faed95e1d45f1e43ebcb6b087614499968d10c769513aacc6183" -> "sha256:de2ada4c59b614b40e69763c3a1cfea9ab6cfacb9013e3e20134038ae52cdbf0" [label=""];
  "sha256:de2ada4c59b614b40e69763c3a1cfea9ab6cfacb9013e3e20134038ae52cdbf0" -> "sha256:a66de3ee3f88b84280d5f33a12f20a348e288f7bd00cd22cf6e0deddfe5d1f18" [label=""];
  "sha256:a66de3ee3f88b84280d5f33a12f20a348e288f7bd00cd22cf6e0deddfe5d1f18" -> "sha256:a552471aa93f7e095c2d064ed87a8733af49d77273bbd05197994fa2f224f4dd" [label=""];
  "sha256:a552471aa93f7e095c2d064ed87a8733af49d77273bbd05197994fa2f224f4dd" -> "sha256:a90af8cf0060f1477d592c2612a498afe5d74edb36ac76de65ad147cb2f713f4" [label=""];
  "sha256:3bd1cbdfc8067233f7adcaef8b55b2bf5e00835e47bffcdd5a561e87e8febedc" -> "sha256:a90af8cf0060f1477d592c2612a498afe5d74edb36ac76de65ad147cb2f713f4" [label=""];
  "sha256:a90af8cf0060f1477d592c2612a498afe5d74edb36ac76de65ad147cb2f713f4" -> "sha256:0439506c5896db7b842c6502703c7831d42b8db40a8ed8524f7bce88456e021d" [label=""];
  "sha256:0439506c5896db7b842c6502703c7831d42b8db40a8ed8524f7bce88456e021d" -> "sha256:16f4005e7e160472769a2f69123172cfcae923179c58e96836eafa157be8e933" [label=""];
}

