[app/sources/282749603.Dockerfile]
digraph {
  "sha256:f9f81eeae58e0aaa73d81c1544ee46b99ca870031a3202e0311fed46cc89a35b" [label="docker-image://launcher.gcr.io/google/ubuntu16_04@sha256:281e570b1c254121ef9db4698554084a809d120aebfe14486c1014d0b6d4d3f5" shape="ellipse"];
  "sha256:1e25a94961ee28791172ca672ce1999707063f41c91dccc52da251bff4ef16f1" [label="/bin/sh -c apt-get update &&     apt-get -y install tar bzip2 gzip" shape="box"];
  "sha256:b7e2783cd378938cecad58544b50ae55132baa53a664e00af24ded1eac4b9fb6" [label="sha256:b7e2783cd378938cecad58544b50ae55132baa53a664e00af24ded1eac4b9fb6" shape="plaintext"];
  "sha256:f9f81eeae58e0aaa73d81c1544ee46b99ca870031a3202e0311fed46cc89a35b" -> "sha256:1e25a94961ee28791172ca672ce1999707063f41c91dccc52da251bff4ef16f1" [label=""];
  "sha256:1e25a94961ee28791172ca672ce1999707063f41c91dccc52da251bff4ef16f1" -> "sha256:b7e2783cd378938cecad58544b50ae55132baa53a664e00af24ded1eac4b9fb6" [label=""];
}

