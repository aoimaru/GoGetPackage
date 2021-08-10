[app/sources/152109264.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a15f59d94fe549f9b44eea1ea3bc3f30313b0608bdeefb1c148a8eb4662ce8a2" [label="/bin/sh -c apt-get install -y software-properties-common python-software-properties git" shape="box"];
  "sha256:1f3aebde3d9ec46d6861e780b7013549cc23da9c70395c255096ddd886a88873" [label="/bin/sh -c apt-add-repository -y ppa:ansible/ansible" shape="box"];
  "sha256:55cc351b5318bcf2ed87ef6c42147c94798a1e2d9ca8063b611d7052276dc14a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b4b298e60a09c8bf78f441119519a7f4fb9142c014916bb3bbc1b538ad97cf78" [label="/bin/sh -c apt-get install -y ansible" shape="box"];
  "sha256:64128ff2bdcc97b4543193ac8e9ad798aec350e6ef1eb309c4732bc4afe98a6f" [label="/bin/sh -c apt-get install -y unzip" shape="box"];
  "sha256:c2d27178386f7bead700dad81be2e4a5cc27444d64a611c4fd39f4065bac041c" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:ca199c4ef900bbb5664f6e5daff88f055be33ca040506806c40b4b554baa19d3" [label="sha256:ca199c4ef900bbb5664f6e5daff88f055be33ca040506806c40b4b554baa19d3" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" [label=""];
  "sha256:cb391c9dafaa74427d9826808cdcf69fef6acffdf46fefb58d5637d5e4589540" -> "sha256:a15f59d94fe549f9b44eea1ea3bc3f30313b0608bdeefb1c148a8eb4662ce8a2" [label=""];
  "sha256:a15f59d94fe549f9b44eea1ea3bc3f30313b0608bdeefb1c148a8eb4662ce8a2" -> "sha256:1f3aebde3d9ec46d6861e780b7013549cc23da9c70395c255096ddd886a88873" [label=""];
  "sha256:1f3aebde3d9ec46d6861e780b7013549cc23da9c70395c255096ddd886a88873" -> "sha256:55cc351b5318bcf2ed87ef6c42147c94798a1e2d9ca8063b611d7052276dc14a" [label=""];
  "sha256:55cc351b5318bcf2ed87ef6c42147c94798a1e2d9ca8063b611d7052276dc14a" -> "sha256:b4b298e60a09c8bf78f441119519a7f4fb9142c014916bb3bbc1b538ad97cf78" [label=""];
  "sha256:b4b298e60a09c8bf78f441119519a7f4fb9142c014916bb3bbc1b538ad97cf78" -> "sha256:64128ff2bdcc97b4543193ac8e9ad798aec350e6ef1eb309c4732bc4afe98a6f" [label=""];
  "sha256:64128ff2bdcc97b4543193ac8e9ad798aec350e6ef1eb309c4732bc4afe98a6f" -> "sha256:c2d27178386f7bead700dad81be2e4a5cc27444d64a611c4fd39f4065bac041c" [label=""];
  "sha256:c2d27178386f7bead700dad81be2e4a5cc27444d64a611c4fd39f4065bac041c" -> "sha256:ca199c4ef900bbb5664f6e5daff88f055be33ca040506806c40b4b554baa19d3" [label=""];
}

