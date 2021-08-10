[app/sources/363881162.Dockerfile]
digraph {
  "sha256:c31b880b95621988d374001bbee165ecab592ca1e23781e2c0ca3c4d3f30cdaf" [label="docker-image://docker.io/library/ros:indigo-ros-core" shape="ellipse"];
  "sha256:9ae7fccadd6b7487431e0f559670cfb68459af51e0bf47de8f66836a0be1a595" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:a11ad3d5558abde07edcf1482f3dd39a08efc22ad892cd17b94526dc1136e20b" [label="/bin/sh -c apt-get -y install ros-indigo-image-pipeline" shape="box"];
  "sha256:de7d284af84762b19f2f80d1543f07259d8faae14d91e5d7668d3f493153452a" [label="/bin/sh -c export uid=${uid} gid=${gid} &&     mkdir -p /home/ros &&     echo \"ros:x:${uid}:${gid}:ros,,,:/home/ros:/bin/bash\" >> /etc/passwd &&     echo \"ros:x:${uid}:\" >> /etc/group &&     echo \"ros ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/ros &&     chmod 0440 /etc/sudoers.d/ros &&     chown ${uid}:${gid} -R /home/ros" shape="box"];
  "sha256:35b70b3963976334e2656c266c0f2e190ead00533144e15859894094f167c402" [label="sha256:35b70b3963976334e2656c266c0f2e190ead00533144e15859894094f167c402" shape="plaintext"];
  "sha256:c31b880b95621988d374001bbee165ecab592ca1e23781e2c0ca3c4d3f30cdaf" -> "sha256:9ae7fccadd6b7487431e0f559670cfb68459af51e0bf47de8f66836a0be1a595" [label=""];
  "sha256:9ae7fccadd6b7487431e0f559670cfb68459af51e0bf47de8f66836a0be1a595" -> "sha256:a11ad3d5558abde07edcf1482f3dd39a08efc22ad892cd17b94526dc1136e20b" [label=""];
  "sha256:a11ad3d5558abde07edcf1482f3dd39a08efc22ad892cd17b94526dc1136e20b" -> "sha256:de7d284af84762b19f2f80d1543f07259d8faae14d91e5d7668d3f493153452a" [label=""];
  "sha256:de7d284af84762b19f2f80d1543f07259d8faae14d91e5d7668d3f493153452a" -> "sha256:35b70b3963976334e2656c266c0f2e190ead00533144e15859894094f167c402" [label=""];
}

