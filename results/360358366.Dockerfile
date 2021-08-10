[app/sources/360358366.Dockerfile]
digraph {
  "sha256:01a75b3a0de78fe3fbfb15286ee1647ea92327e2cd886146664492423302466b" [label="docker-image://docker.io/nvidia/cuda:10.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:c5dfd0b07afb5ed5bbafc354c7b9a15308853d48ef406987a5ef37d8d8d4f473" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:0001e973c1fc6e295e32a46fd86a969e4c4d6332c11b41f6c3a67a29e8b6152d" [label="/bin/sh -c apt-get update && apt-get -y install sudo" shape="box"];
  "sha256:78e9f9f2fff44543744fcceb478de1944143e3cc6d3722bf19e1dcf82f544d04" [label="local://context" shape="ellipse"];
  "sha256:b4b8d8de0eb7f2cbbd70f49a4d422eaea71ff2e5025a103ffb3c63d55c1b6218" [label="copy{src=/install/ubuntu_cudnn.sh, dest=/work/}" shape="note"];
  "sha256:8b8495497f7a4b60a2267556e0851522f61a848ea966b25c9bdacf5b23dbb3fc" [label="/bin/sh -c /work/ubuntu_cudnn.sh" shape="box"];
  "sha256:67275754029b0ccf693a613454f974d1efa3f2ced623943110302d85cfea4e4b" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:8f3b9346be4df5856cd5678daf16ad70ba5c8eba30cee4d80849099d25c24cab" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:d23f0488453d541bba5eb556f19490d265bd3e91af36c4a06753679807419ba1" [label="copy{src=/install/ubuntu_runas_sudo.sh, dest=/work/}" shape="note"];
  "sha256:038c158980d306816d0b3f4901e4c5d674004a30bca23486e5da0adbda12a744" [label="/bin/sh -c /work/ubuntu_runas_sudo.sh" shape="box"];
  "sha256:3934e054e8925600eda8c5095f13179e8b80dd5a3fe4b676a2ee95a0ebaef995" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:acce3bd1b31e9384f947db7dfd5184f9bf7df29921d7742283b492052eb3aeed" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:a29dcecd76b38a6ab20234b7c8b1b395e1873484ef5946bef5633e63938b8684" [label="sha256:a29dcecd76b38a6ab20234b7c8b1b395e1873484ef5946bef5633e63938b8684" shape="plaintext"];
  "sha256:01a75b3a0de78fe3fbfb15286ee1647ea92327e2cd886146664492423302466b" -> "sha256:c5dfd0b07afb5ed5bbafc354c7b9a15308853d48ef406987a5ef37d8d8d4f473" [label=""];
  "sha256:c5dfd0b07afb5ed5bbafc354c7b9a15308853d48ef406987a5ef37d8d8d4f473" -> "sha256:0001e973c1fc6e295e32a46fd86a969e4c4d6332c11b41f6c3a67a29e8b6152d" [label=""];
  "sha256:0001e973c1fc6e295e32a46fd86a969e4c4d6332c11b41f6c3a67a29e8b6152d" -> "sha256:b4b8d8de0eb7f2cbbd70f49a4d422eaea71ff2e5025a103ffb3c63d55c1b6218" [label=""];
  "sha256:78e9f9f2fff44543744fcceb478de1944143e3cc6d3722bf19e1dcf82f544d04" -> "sha256:b4b8d8de0eb7f2cbbd70f49a4d422eaea71ff2e5025a103ffb3c63d55c1b6218" [label=""];
  "sha256:b4b8d8de0eb7f2cbbd70f49a4d422eaea71ff2e5025a103ffb3c63d55c1b6218" -> "sha256:8b8495497f7a4b60a2267556e0851522f61a848ea966b25c9bdacf5b23dbb3fc" [label=""];
  "sha256:8b8495497f7a4b60a2267556e0851522f61a848ea966b25c9bdacf5b23dbb3fc" -> "sha256:67275754029b0ccf693a613454f974d1efa3f2ced623943110302d85cfea4e4b" [label=""];
  "sha256:78e9f9f2fff44543744fcceb478de1944143e3cc6d3722bf19e1dcf82f544d04" -> "sha256:67275754029b0ccf693a613454f974d1efa3f2ced623943110302d85cfea4e4b" [label=""];
  "sha256:67275754029b0ccf693a613454f974d1efa3f2ced623943110302d85cfea4e4b" -> "sha256:8f3b9346be4df5856cd5678daf16ad70ba5c8eba30cee4d80849099d25c24cab" [label=""];
  "sha256:8f3b9346be4df5856cd5678daf16ad70ba5c8eba30cee4d80849099d25c24cab" -> "sha256:d23f0488453d541bba5eb556f19490d265bd3e91af36c4a06753679807419ba1" [label=""];
  "sha256:78e9f9f2fff44543744fcceb478de1944143e3cc6d3722bf19e1dcf82f544d04" -> "sha256:d23f0488453d541bba5eb556f19490d265bd3e91af36c4a06753679807419ba1" [label=""];
  "sha256:d23f0488453d541bba5eb556f19490d265bd3e91af36c4a06753679807419ba1" -> "sha256:038c158980d306816d0b3f4901e4c5d674004a30bca23486e5da0adbda12a744" [label=""];
  "sha256:038c158980d306816d0b3f4901e4c5d674004a30bca23486e5da0adbda12a744" -> "sha256:3934e054e8925600eda8c5095f13179e8b80dd5a3fe4b676a2ee95a0ebaef995" [label=""];
  "sha256:78e9f9f2fff44543744fcceb478de1944143e3cc6d3722bf19e1dcf82f544d04" -> "sha256:3934e054e8925600eda8c5095f13179e8b80dd5a3fe4b676a2ee95a0ebaef995" [label=""];
  "sha256:3934e054e8925600eda8c5095f13179e8b80dd5a3fe4b676a2ee95a0ebaef995" -> "sha256:acce3bd1b31e9384f947db7dfd5184f9bf7df29921d7742283b492052eb3aeed" [label=""];
  "sha256:acce3bd1b31e9384f947db7dfd5184f9bf7df29921d7742283b492052eb3aeed" -> "sha256:a29dcecd76b38a6ab20234b7c8b1b395e1873484ef5946bef5633e63938b8684" [label=""];
}

