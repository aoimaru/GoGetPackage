[app/sources/316282006.Dockerfile]
digraph {
  "sha256:df4c3a75487c89724c2ea2aa6ae1cff379825760568c185e79295815de08b961" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:19805b81473b19d23d0b902720f4c6e3bddd35bc6abcbb650a065e44491378d1" [label="/bin/sh -c apt-get update && apt-get install -y gcc-arm-none-eabi libnewlib-arm-none-eabi python python-pip gcc g++" shape="box"];
  "sha256:276fa8448a33217bf6126acfcf1cee377b57e0bf5e82a5d9bd87c4c7afe047cb" [label="/bin/sh -c pip install pycrypto==2.6.1" shape="box"];
  "sha256:64886ca3996d88ab340d42879c3423f437e355ff1a037e87c58a4dd15faba8db" [label="copy{src=/, dest=/panda}" shape="note"];
  "sha256:0806fd2b0277173d06b1ce94546f99d274ec35aa4293a016e72ade3d0f2d95b3" [label="mkdir{path=/panda}" shape="note"];
  "sha256:a073d3c8b4eb96ddfc7b283ad0799551e72363ecbcc79f5f224e2ec0708a7f0e" [label="sha256:a073d3c8b4eb96ddfc7b283ad0799551e72363ecbcc79f5f224e2ec0708a7f0e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:19805b81473b19d23d0b902720f4c6e3bddd35bc6abcbb650a065e44491378d1" [label=""];
  "sha256:19805b81473b19d23d0b902720f4c6e3bddd35bc6abcbb650a065e44491378d1" -> "sha256:276fa8448a33217bf6126acfcf1cee377b57e0bf5e82a5d9bd87c4c7afe047cb" [label=""];
  "sha256:276fa8448a33217bf6126acfcf1cee377b57e0bf5e82a5d9bd87c4c7afe047cb" -> "sha256:64886ca3996d88ab340d42879c3423f437e355ff1a037e87c58a4dd15faba8db" [label=""];
  "sha256:df4c3a75487c89724c2ea2aa6ae1cff379825760568c185e79295815de08b961" -> "sha256:64886ca3996d88ab340d42879c3423f437e355ff1a037e87c58a4dd15faba8db" [label=""];
  "sha256:64886ca3996d88ab340d42879c3423f437e355ff1a037e87c58a4dd15faba8db" -> "sha256:0806fd2b0277173d06b1ce94546f99d274ec35aa4293a016e72ade3d0f2d95b3" [label=""];
  "sha256:0806fd2b0277173d06b1ce94546f99d274ec35aa4293a016e72ade3d0f2d95b3" -> "sha256:a073d3c8b4eb96ddfc7b283ad0799551e72363ecbcc79f5f224e2ec0708a7f0e" [label=""];
}

