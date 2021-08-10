[app/sources/208773030.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c7138a427588397947280ce19a8addfc1ae27490fa366d76d46a912c5be84736" [label="/bin/sh -c apt-get update && apt-get -y upgrade &&     apt-get -y install curl libappindicator1 fuse libgconf-2-4 psmisc" shape="box"];
  "sha256:25b435de3babf11f3b9fa7b3546819c79511c5defd70e10367c527802fb94783" [label="/bin/sh -c curl -O https://prerelease.keybase.io/keybase_amd64.deb" shape="box"];
  "sha256:9416655fe910d543e37156d0d8bb76c157e4017a763cf2d9b4828af0b40589c5" [label="/bin/sh -c dpkg -i keybase_amd64.deb" shape="box"];
  "sha256:433f538e938a35e759d212a00428b47603eb86dd3fe18459096d1bb49a6feba0" [label="/bin/sh -c apt-get install -f" shape="box"];
  "sha256:67def84ecf8a7dcc8d3109355b82a0e2005a870480c2dd6e7918551dd7f92b9b" [label="/bin/sh -c useradd -m dev" shape="box"];
  "sha256:49742a658b94af047ae09f64e7e04885f5dc1336250d9fd23dd8ca15aed24ee9" [label="mkdir{path=/home/dev}" shape="note"];
  "sha256:b3c7a59198a40c3aa690652d7a68d5a3c6013d195d636310ed7a8933983c901e" [label="sha256:b3c7a59198a40c3aa690652d7a68d5a3c6013d195d636310ed7a8933983c901e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c7138a427588397947280ce19a8addfc1ae27490fa366d76d46a912c5be84736" [label=""];
  "sha256:c7138a427588397947280ce19a8addfc1ae27490fa366d76d46a912c5be84736" -> "sha256:25b435de3babf11f3b9fa7b3546819c79511c5defd70e10367c527802fb94783" [label=""];
  "sha256:25b435de3babf11f3b9fa7b3546819c79511c5defd70e10367c527802fb94783" -> "sha256:9416655fe910d543e37156d0d8bb76c157e4017a763cf2d9b4828af0b40589c5" [label=""];
  "sha256:9416655fe910d543e37156d0d8bb76c157e4017a763cf2d9b4828af0b40589c5" -> "sha256:433f538e938a35e759d212a00428b47603eb86dd3fe18459096d1bb49a6feba0" [label=""];
  "sha256:433f538e938a35e759d212a00428b47603eb86dd3fe18459096d1bb49a6feba0" -> "sha256:67def84ecf8a7dcc8d3109355b82a0e2005a870480c2dd6e7918551dd7f92b9b" [label=""];
  "sha256:67def84ecf8a7dcc8d3109355b82a0e2005a870480c2dd6e7918551dd7f92b9b" -> "sha256:49742a658b94af047ae09f64e7e04885f5dc1336250d9fd23dd8ca15aed24ee9" [label=""];
  "sha256:49742a658b94af047ae09f64e7e04885f5dc1336250d9fd23dd8ca15aed24ee9" -> "sha256:b3c7a59198a40c3aa690652d7a68d5a3c6013d195d636310ed7a8933983c901e" [label=""];
}

