[app/sources/418984391.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:7edbf3d6dbbe9202bea2d4d04857d5b090e34c8e57310d7255f279ebc626cee4" [label="local://context" shape="ellipse"];
  "sha256:6612dfa96798b766fae13d5ad7f1f7bd606c38eddf7154ab5ec1eeeb496d9414" [label="copy{src=/MarkLogic-9*.rpm, dest=/tmp/MarkLogic.rpm}" shape="note"];
  "sha256:4b8fafcb657ff76e4753ffc96444c5f54b85ec0e3b97dfab91b61d53fb102bc9" [label="copy{src=/initialize-ml.sh, dest=/etc/},copy{src=/marklogic.conf, dest=/etc/}" shape="note"];
  "sha256:7e94dcd91828599cdce51aece64855a3f7aac308cc8098ced28f3cb54b17abbc" [label="/bin/sh -c yum -y update     && yum -y install        glibc.i686        gdb.x86_64        redhat-lsb.x86_64        initscripts        sudo        /tmp/MarkLogic.rpm     && rm /tmp/MarkLogic.rpm     && yum clean all     && rm -rf /var/cache/yum     && useradd -ms /sbin/nologin -g root -G wheel ml     && chmod +x /etc/*.sh" shape="box"];
  "sha256:945a12edc3b30ef78015df6535d590b1e01a65c0a3dbbd95d9a998f93f5ba87c" [label="sha256:945a12edc3b30ef78015df6535d590b1e01a65c0a3dbbd95d9a998f93f5ba87c" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:6612dfa96798b766fae13d5ad7f1f7bd606c38eddf7154ab5ec1eeeb496d9414" [label=""];
  "sha256:7edbf3d6dbbe9202bea2d4d04857d5b090e34c8e57310d7255f279ebc626cee4" -> "sha256:6612dfa96798b766fae13d5ad7f1f7bd606c38eddf7154ab5ec1eeeb496d9414" [label=""];
  "sha256:6612dfa96798b766fae13d5ad7f1f7bd606c38eddf7154ab5ec1eeeb496d9414" -> "sha256:4b8fafcb657ff76e4753ffc96444c5f54b85ec0e3b97dfab91b61d53fb102bc9" [label=""];
  "sha256:7edbf3d6dbbe9202bea2d4d04857d5b090e34c8e57310d7255f279ebc626cee4" -> "sha256:4b8fafcb657ff76e4753ffc96444c5f54b85ec0e3b97dfab91b61d53fb102bc9" [label=""];
  "sha256:4b8fafcb657ff76e4753ffc96444c5f54b85ec0e3b97dfab91b61d53fb102bc9" -> "sha256:7e94dcd91828599cdce51aece64855a3f7aac308cc8098ced28f3cb54b17abbc" [label=""];
  "sha256:7e94dcd91828599cdce51aece64855a3f7aac308cc8098ced28f3cb54b17abbc" -> "sha256:945a12edc3b30ef78015df6535d590b1e01a65c0a3dbbd95d9a998f93f5ba87c" [label=""];
}

