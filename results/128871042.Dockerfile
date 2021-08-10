[app/sources/128871042.Dockerfile]
digraph {
  "sha256:9b759405a903a368e9fdf9d336e78ff46902555030326877791e06ed2a8acdcd" [label="docker-image://docker.io/stackbrew/centos:7" shape="ellipse"];
  "sha256:5e7a5f2b68364141c3a3099bbdf5836d9df9b79083f34bba865dd1674dbb16aa" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:2defe46fb000e8cc6d06a49e2e95e90458777c19243c58fa82fcacfb0e0f1f65" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:1c9d262b0a4b2969780d3f68025e2359ac539eacd39cf9003f03612a0f707ada" [label="/bin/sh -c yum -y install --enablerepo=epel salt-minion" shape="box"];
  "sha256:fd86b63871672b84c392aef90b878c09af54036360dd622e89afe40682757f51" [label="sha256:fd86b63871672b84c392aef90b878c09af54036360dd622e89afe40682757f51" shape="plaintext"];
  "sha256:9b759405a903a368e9fdf9d336e78ff46902555030326877791e06ed2a8acdcd" -> "sha256:5e7a5f2b68364141c3a3099bbdf5836d9df9b79083f34bba865dd1674dbb16aa" [label=""];
  "sha256:5e7a5f2b68364141c3a3099bbdf5836d9df9b79083f34bba865dd1674dbb16aa" -> "sha256:2defe46fb000e8cc6d06a49e2e95e90458777c19243c58fa82fcacfb0e0f1f65" [label=""];
  "sha256:2defe46fb000e8cc6d06a49e2e95e90458777c19243c58fa82fcacfb0e0f1f65" -> "sha256:1c9d262b0a4b2969780d3f68025e2359ac539eacd39cf9003f03612a0f707ada" [label=""];
  "sha256:1c9d262b0a4b2969780d3f68025e2359ac539eacd39cf9003f03612a0f707ada" -> "sha256:fd86b63871672b84c392aef90b878c09af54036360dd622e89afe40682757f51" [label=""];
}

