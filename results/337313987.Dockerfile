[app/sources/337313987.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:edd6c2be2d36ee99fa171aeb15443656726dbf9896ef1a7ae1f455a8e4c6fa1c" [label="/bin/sh -c apt-get update && apt-get install -y build-essential sudo git wget zip genisoimage bc squashfs-tools xorriso tar klibc-utils iproute2 dosfstools rsync unzip findutils iputils-ping grep" shape="box"];
  "sha256:015fd48553c5eca0070bb3e8381dd34e80db7eddb130ba41496813f202b88679" [label="/bin/sh -c wget -O isorespin.sh \"https://drive.google.com/uc?export=download&id=0B99O3A0dDe67S053UE8zN3NwM2c\"" shape="box"];
  "sha256:50f4623efbad9bccfef73ddaa84e79f40fba4a409f41d6d51fe2b88421b58464" [label="/bin/sh -c mkdir /docker-input" shape="box"];
  "sha256:b09a33a89d14641746a4d24d053db0857e07c542bb7d330bee60ef8619d3077c" [label="/bin/sh -c mkdir /docker-output" shape="box"];
  "sha256:652fd262eb072f560cd23b0fee137333729cf5d8494ad7f5a5d6cda62b0dad82" [label="/bin/sh -c mkdir /services" shape="box"];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" [label="local://context" shape="ellipse"];
  "sha256:92fd8a8ffe8d821fc19d0dfc301596087f410b87637f736020fdef5b3316cb36" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:d25359e1459a67a33078dbf0134c4d89eb2c645e56b55c40e24ded636cd4ed4d" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:2cb90eba9af2dd019a446878177584b2616c626e7fffcddefaad75718768789f" [label="copy{src=/wrapper-network.sh, dest=/}" shape="note"];
  "sha256:7105f3207d1ef5e6546e38a77d0b4b8b795555c24b5b5c8b05a32994dc92da27" [label="copy{src=/wrapper-nvidia.sh, dest=/}" shape="note"];
  "sha256:79fc8dfedd1b636e3b84f4387b28c6d4e6e240483c9696604398caa149aefd9e" [label="copy{src=/services/gpuoff.service, dest=/services/}" shape="note"];
  "sha256:9a6b27d5b6a753af6195396eb8b17e51bb3f36ed97df831663629619d688c265" [label="/bin/sh -c chmod +x docker-entrypoint.sh" shape="box"];
  "sha256:3e9d5a8e53de3f63871fff781e907b104ed9d5f707379012f74df25ba91ad052" [label="/bin/sh -c chmod +x build.sh" shape="box"];
  "sha256:93be07bbf4e9de8ecbe32a07821fafdea17c084d5819c99a0d119cf15453e33b" [label="/bin/sh -c chmod +x wrapper-network.sh" shape="box"];
  "sha256:9710c03056c189e91eef433d7dbbbf62f83ea64f0124332c83cb03f2a49ee4a3" [label="/bin/sh -c chmod +x wrapper-nvidia.sh" shape="box"];
  "sha256:086100b0935c85a29116727ccbf5dadb1130a3a53e9184b2be20fc1b9b61037b" [label="sha256:086100b0935c85a29116727ccbf5dadb1130a3a53e9184b2be20fc1b9b61037b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:edd6c2be2d36ee99fa171aeb15443656726dbf9896ef1a7ae1f455a8e4c6fa1c" [label=""];
  "sha256:edd6c2be2d36ee99fa171aeb15443656726dbf9896ef1a7ae1f455a8e4c6fa1c" -> "sha256:015fd48553c5eca0070bb3e8381dd34e80db7eddb130ba41496813f202b88679" [label=""];
  "sha256:015fd48553c5eca0070bb3e8381dd34e80db7eddb130ba41496813f202b88679" -> "sha256:50f4623efbad9bccfef73ddaa84e79f40fba4a409f41d6d51fe2b88421b58464" [label=""];
  "sha256:50f4623efbad9bccfef73ddaa84e79f40fba4a409f41d6d51fe2b88421b58464" -> "sha256:b09a33a89d14641746a4d24d053db0857e07c542bb7d330bee60ef8619d3077c" [label=""];
  "sha256:b09a33a89d14641746a4d24d053db0857e07c542bb7d330bee60ef8619d3077c" -> "sha256:652fd262eb072f560cd23b0fee137333729cf5d8494ad7f5a5d6cda62b0dad82" [label=""];
  "sha256:652fd262eb072f560cd23b0fee137333729cf5d8494ad7f5a5d6cda62b0dad82" -> "sha256:92fd8a8ffe8d821fc19d0dfc301596087f410b87637f736020fdef5b3316cb36" [label=""];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" -> "sha256:92fd8a8ffe8d821fc19d0dfc301596087f410b87637f736020fdef5b3316cb36" [label=""];
  "sha256:92fd8a8ffe8d821fc19d0dfc301596087f410b87637f736020fdef5b3316cb36" -> "sha256:d25359e1459a67a33078dbf0134c4d89eb2c645e56b55c40e24ded636cd4ed4d" [label=""];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" -> "sha256:d25359e1459a67a33078dbf0134c4d89eb2c645e56b55c40e24ded636cd4ed4d" [label=""];
  "sha256:d25359e1459a67a33078dbf0134c4d89eb2c645e56b55c40e24ded636cd4ed4d" -> "sha256:2cb90eba9af2dd019a446878177584b2616c626e7fffcddefaad75718768789f" [label=""];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" -> "sha256:2cb90eba9af2dd019a446878177584b2616c626e7fffcddefaad75718768789f" [label=""];
  "sha256:2cb90eba9af2dd019a446878177584b2616c626e7fffcddefaad75718768789f" -> "sha256:7105f3207d1ef5e6546e38a77d0b4b8b795555c24b5b5c8b05a32994dc92da27" [label=""];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" -> "sha256:7105f3207d1ef5e6546e38a77d0b4b8b795555c24b5b5c8b05a32994dc92da27" [label=""];
  "sha256:7105f3207d1ef5e6546e38a77d0b4b8b795555c24b5b5c8b05a32994dc92da27" -> "sha256:79fc8dfedd1b636e3b84f4387b28c6d4e6e240483c9696604398caa149aefd9e" [label=""];
  "sha256:f5ece958c45d4f1d00a98b71464f32272e8b7f49e1def44033e711cd71bcb50d" -> "sha256:79fc8dfedd1b636e3b84f4387b28c6d4e6e240483c9696604398caa149aefd9e" [label=""];
  "sha256:79fc8dfedd1b636e3b84f4387b28c6d4e6e240483c9696604398caa149aefd9e" -> "sha256:9a6b27d5b6a753af6195396eb8b17e51bb3f36ed97df831663629619d688c265" [label=""];
  "sha256:9a6b27d5b6a753af6195396eb8b17e51bb3f36ed97df831663629619d688c265" -> "sha256:3e9d5a8e53de3f63871fff781e907b104ed9d5f707379012f74df25ba91ad052" [label=""];
  "sha256:3e9d5a8e53de3f63871fff781e907b104ed9d5f707379012f74df25ba91ad052" -> "sha256:93be07bbf4e9de8ecbe32a07821fafdea17c084d5819c99a0d119cf15453e33b" [label=""];
  "sha256:93be07bbf4e9de8ecbe32a07821fafdea17c084d5819c99a0d119cf15453e33b" -> "sha256:9710c03056c189e91eef433d7dbbbf62f83ea64f0124332c83cb03f2a49ee4a3" [label=""];
  "sha256:9710c03056c189e91eef433d7dbbbf62f83ea64f0124332c83cb03f2a49ee4a3" -> "sha256:086100b0935c85a29116727ccbf5dadb1130a3a53e9184b2be20fc1b9b61037b" [label=""];
}

