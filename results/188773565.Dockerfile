[app/sources/188773565.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:dbd3462d0259bbafd06b10e4871331526dfaa96f23fe74c47358537d4e2883b7" [label="local://context" shape="ellipse"];
  "sha256:a354f7150bf471a83cff3662bfb21adb78750b2c33c72c4e907dbb287f2459d9" [label="copy{src=/requirements.txt, dest=/opt/atomicapp/}" shape="note"];
  "sha256:9176696e3eeb9e83796a77f8eaa59a2380fd14a920a898808eec8656770fe0c2" [label="copy{src=/test-requirements.txt, dest=/opt/atomicapp/}" shape="note"];
  "sha256:cffaa9ded8a6f79e9b9626dc2a36ba787127f5676c46277ec13a2cdc25d0c36b" [label="mkdir{path=/opt/atomicapp}" shape="note"];
  "sha256:baa043ce381c76e88c05c7443e844246cfd344762ac586297b58e35a27eb139f" [label="/bin/sh -c yum install -y epel-release &&     yum install -y --setopt=tsflags=nodocs $(sed s/^/python-/ requirements.txt) &&     yum install -y --setopt=tsflags=nodocs $(sed s/^/python-/ test-requirements.txt) &&     yum clean all" shape="box"];
  "sha256:4af52e595fd6358fcbd2ff8d44bd1cc389f75d5fb0e40400abcde129e026df64" [label="copy{src=/, dest=/opt/atomicapp}" shape="note"];
  "sha256:8c1dc2614aadfb3520a84d5ebb93f1765ac3d655d657344d9bdf0a4396183df5" [label="sha256:8c1dc2614aadfb3520a84d5ebb93f1765ac3d655d657344d9bdf0a4396183df5" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:a354f7150bf471a83cff3662bfb21adb78750b2c33c72c4e907dbb287f2459d9" [label=""];
  "sha256:dbd3462d0259bbafd06b10e4871331526dfaa96f23fe74c47358537d4e2883b7" -> "sha256:a354f7150bf471a83cff3662bfb21adb78750b2c33c72c4e907dbb287f2459d9" [label=""];
  "sha256:a354f7150bf471a83cff3662bfb21adb78750b2c33c72c4e907dbb287f2459d9" -> "sha256:9176696e3eeb9e83796a77f8eaa59a2380fd14a920a898808eec8656770fe0c2" [label=""];
  "sha256:dbd3462d0259bbafd06b10e4871331526dfaa96f23fe74c47358537d4e2883b7" -> "sha256:9176696e3eeb9e83796a77f8eaa59a2380fd14a920a898808eec8656770fe0c2" [label=""];
  "sha256:9176696e3eeb9e83796a77f8eaa59a2380fd14a920a898808eec8656770fe0c2" -> "sha256:cffaa9ded8a6f79e9b9626dc2a36ba787127f5676c46277ec13a2cdc25d0c36b" [label=""];
  "sha256:cffaa9ded8a6f79e9b9626dc2a36ba787127f5676c46277ec13a2cdc25d0c36b" -> "sha256:baa043ce381c76e88c05c7443e844246cfd344762ac586297b58e35a27eb139f" [label=""];
  "sha256:baa043ce381c76e88c05c7443e844246cfd344762ac586297b58e35a27eb139f" -> "sha256:4af52e595fd6358fcbd2ff8d44bd1cc389f75d5fb0e40400abcde129e026df64" [label=""];
  "sha256:dbd3462d0259bbafd06b10e4871331526dfaa96f23fe74c47358537d4e2883b7" -> "sha256:4af52e595fd6358fcbd2ff8d44bd1cc389f75d5fb0e40400abcde129e026df64" [label=""];
  "sha256:4af52e595fd6358fcbd2ff8d44bd1cc389f75d5fb0e40400abcde129e026df64" -> "sha256:8c1dc2614aadfb3520a84d5ebb93f1765ac3d655d657344d9bdf0a4396183df5" [label=""];
}

