[app/sources/175156129.Dockerfile]
digraph {
  "sha256:2abd4f62eeae3ae677f329f46e6bcb1e11e784f0dec02fc57058a8ee7638b4a5" [label="docker-image://docker.io/phusion/baseimage:0.9.17" shape="ellipse"];
  "sha256:5d5b5e4c764b57a07314b23971859c281aac9acd9e5e5d381d843a376200da18" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:5fb8792c7bac5f34fb0371a3b6003a5844942d6af4004b87dab0bf7af69f7322" [label="/bin/sh -c apt-get -y install git wget" shape="box"];
  "sha256:a18c516e11990d332ef3cdf3f84c388a012865da0a5c8ab4b342c3bf11cddb76" [label="/bin/sh -c rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:73dab14b2fa1fc50328edfafea2679a357407dc30a9c59c5b5dd289df5415abd" [label="sha256:73dab14b2fa1fc50328edfafea2679a357407dc30a9c59c5b5dd289df5415abd" shape="plaintext"];
  "sha256:2abd4f62eeae3ae677f329f46e6bcb1e11e784f0dec02fc57058a8ee7638b4a5" -> "sha256:5d5b5e4c764b57a07314b23971859c281aac9acd9e5e5d381d843a376200da18" [label=""];
  "sha256:5d5b5e4c764b57a07314b23971859c281aac9acd9e5e5d381d843a376200da18" -> "sha256:5fb8792c7bac5f34fb0371a3b6003a5844942d6af4004b87dab0bf7af69f7322" [label=""];
  "sha256:5fb8792c7bac5f34fb0371a3b6003a5844942d6af4004b87dab0bf7af69f7322" -> "sha256:a18c516e11990d332ef3cdf3f84c388a012865da0a5c8ab4b342c3bf11cddb76" [label=""];
  "sha256:a18c516e11990d332ef3cdf3f84c388a012865da0a5c8ab4b342c3bf11cddb76" -> "sha256:73dab14b2fa1fc50328edfafea2679a357407dc30a9c59c5b5dd289df5415abd" [label=""];
}

