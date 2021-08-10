[app/sources/195519265.Dockerfile]
digraph {
  "sha256:5289030c9742f7083195fbfd75236056cd5924aefb56bbc422ee2a7b4ab122ad" [label="docker-image://docker.io/kalilinux/kali-linux-docker:latest" shape="ellipse"];
  "sha256:e9a70d5c829ae9dbf6d58508c72fb122b48f3d5bd92bd8b936714fa88aa0ceb5" [label="/bin/sh -c echo \"deb http://http.kali.org/kali kali-rolling main contrib non-free\" > /etc/apt/sources.list && echo \"deb-src http://http.kali.org/kali kali-rolling main contrib non-free\" >> /etc/apt/sources.list" shape="box"];
  "sha256:4a5fec145acc42f59e8d48006b35f5720de48ee266c94b3caf58d13947bd75f6" [label="/bin/sh -c apt-get -y update && apt-get -y dist-upgrade && apt-get clean" shape="box"];
  "sha256:f227a2901cb6b95e705a5dcf4e01ebf47e4948f8ae471cd2317c7ae95d8ca48b" [label="/bin/sh -c apt-get install -y git-core gnupg flex bison gperf build-essential zip curl libncurses5-dev zlib1g-dev libncurses5-dev gcc-multilib g++-multilib sudo parted kpartx debootstrap pixz qemu-user-static abootimg cgpt vboot-kernel-utils libesd0-dev bc lzma lzop automake autoconf m4 dosfstools rsync u-boot-tools nano schedtool git e2fsprogs device-tree-compiler ccache dos2unix binfmt-support" shape="box"];
  "sha256:b6dc5fd2f5c8f7203bbc875d748de28d8801d3ec31e30f1c46857ba84aa81c7f" [label="/bin/sh -c mkdir -p ${KALI_WORKSPACE}" shape="box"];
  "sha256:b7e9cb424f28bad43ce429fca54cec4d2b0782cf4e4521735c94f660ae7b7caf" [label="local://context" shape="ellipse"];
  "sha256:51fda8fe1f924f1c3cd0f3a34944dca6047fd60b0aecce1d83e734f17aba8134" [label="copy{src=/, dest=/root/nethunter-fs}" shape="note"];
  "sha256:59b12e7ec64bc3c7158fd01dae1e7c226038fdcce4dff15dbddb2649ae20b0dd" [label="mkdir{path=/root/nethunter-fs}" shape="note"];
  "sha256:e27450e2bc8207c25981c7d3d3afbad4c659a7a883aa74c18b0866c8cb12f3bb" [label="sha256:e27450e2bc8207c25981c7d3d3afbad4c659a7a883aa74c18b0866c8cb12f3bb" shape="plaintext"];
  "sha256:5289030c9742f7083195fbfd75236056cd5924aefb56bbc422ee2a7b4ab122ad" -> "sha256:e9a70d5c829ae9dbf6d58508c72fb122b48f3d5bd92bd8b936714fa88aa0ceb5" [label=""];
  "sha256:e9a70d5c829ae9dbf6d58508c72fb122b48f3d5bd92bd8b936714fa88aa0ceb5" -> "sha256:4a5fec145acc42f59e8d48006b35f5720de48ee266c94b3caf58d13947bd75f6" [label=""];
  "sha256:4a5fec145acc42f59e8d48006b35f5720de48ee266c94b3caf58d13947bd75f6" -> "sha256:f227a2901cb6b95e705a5dcf4e01ebf47e4948f8ae471cd2317c7ae95d8ca48b" [label=""];
  "sha256:f227a2901cb6b95e705a5dcf4e01ebf47e4948f8ae471cd2317c7ae95d8ca48b" -> "sha256:b6dc5fd2f5c8f7203bbc875d748de28d8801d3ec31e30f1c46857ba84aa81c7f" [label=""];
  "sha256:b6dc5fd2f5c8f7203bbc875d748de28d8801d3ec31e30f1c46857ba84aa81c7f" -> "sha256:51fda8fe1f924f1c3cd0f3a34944dca6047fd60b0aecce1d83e734f17aba8134" [label=""];
  "sha256:b7e9cb424f28bad43ce429fca54cec4d2b0782cf4e4521735c94f660ae7b7caf" -> "sha256:51fda8fe1f924f1c3cd0f3a34944dca6047fd60b0aecce1d83e734f17aba8134" [label=""];
  "sha256:51fda8fe1f924f1c3cd0f3a34944dca6047fd60b0aecce1d83e734f17aba8134" -> "sha256:59b12e7ec64bc3c7158fd01dae1e7c226038fdcce4dff15dbddb2649ae20b0dd" [label=""];
  "sha256:59b12e7ec64bc3c7158fd01dae1e7c226038fdcce4dff15dbddb2649ae20b0dd" -> "sha256:e27450e2bc8207c25981c7d3d3afbad4c659a7a883aa74c18b0866c8cb12f3bb" [label=""];
}

