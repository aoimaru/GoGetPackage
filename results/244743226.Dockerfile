[app/sources/244743226.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ce5dbf854477eaa536c97071ae275ca5b8545209597777a88086b8f070fb7899" [label="/bin/sh -c apt-get update && apt-get install -y apt-utils python3 python3-pip git xvfb" shape="box"];
  "sha256:37ef661635d642a71c23ecf566140b1dde6bc3c89414110c3aa3e89566d6b585" [label="/bin/sh -c pip3 install git+https://github.com/UIA-CAIR/DeepRTS.git" shape="box"];
  "sha256:c3c3384076fd1738f24c119800e7f7a3c83638b78219d59369334d843ab46480" [label="/bin/sh -c Xvfb :99 -ac &" shape="box"];
  "sha256:831630043d31bfddc50adc497253dd6d62d78b7e95d7c68dc69829ba82b10309" [label="/bin/sh -c python3 -m pyDeepRTS" shape="box"];
  "sha256:f063da4035c694ef3938cb93a178ba240db01d61ca27075921838b257033039a" [label="sha256:f063da4035c694ef3938cb93a178ba240db01d61ca27075921838b257033039a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:ce5dbf854477eaa536c97071ae275ca5b8545209597777a88086b8f070fb7899" [label=""];
  "sha256:ce5dbf854477eaa536c97071ae275ca5b8545209597777a88086b8f070fb7899" -> "sha256:37ef661635d642a71c23ecf566140b1dde6bc3c89414110c3aa3e89566d6b585" [label=""];
  "sha256:37ef661635d642a71c23ecf566140b1dde6bc3c89414110c3aa3e89566d6b585" -> "sha256:c3c3384076fd1738f24c119800e7f7a3c83638b78219d59369334d843ab46480" [label=""];
  "sha256:c3c3384076fd1738f24c119800e7f7a3c83638b78219d59369334d843ab46480" -> "sha256:831630043d31bfddc50adc497253dd6d62d78b7e95d7c68dc69829ba82b10309" [label=""];
  "sha256:831630043d31bfddc50adc497253dd6d62d78b7e95d7c68dc69829ba82b10309" -> "sha256:f063da4035c694ef3938cb93a178ba240db01d61ca27075921838b257033039a" [label=""];
}
