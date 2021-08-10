[app/sources/159770966.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:3d80ee51da6547718a7739ca4491383fbbc26da8092f9d682addbfb75b8ac4b1" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:a84938afb55b1e82d6a9ca5f7fff03d0a8543837074058e2f9c79bb5c6ce0ce0" [label="/bin/sh -c apt-get install -y openssh-server" shape="box"];
  "sha256:89a7651931b61d52a68ecf9d08342e8fbb17ccf3fec8de11c9deb1da3db30399" [label="/bin/sh -c /bin/sh -c 'echo root:root | chpasswd'" shape="box"];
  "sha256:3bc861714daf67f0caa2121f459f4dc3eec89a5b89c08cefe739fdb4270665ca" [label="sha256:3bc861714daf67f0caa2121f459f4dc3eec89a5b89c08cefe739fdb4270665ca" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:3d80ee51da6547718a7739ca4491383fbbc26da8092f9d682addbfb75b8ac4b1" [label=""];
  "sha256:3d80ee51da6547718a7739ca4491383fbbc26da8092f9d682addbfb75b8ac4b1" -> "sha256:a84938afb55b1e82d6a9ca5f7fff03d0a8543837074058e2f9c79bb5c6ce0ce0" [label=""];
  "sha256:a84938afb55b1e82d6a9ca5f7fff03d0a8543837074058e2f9c79bb5c6ce0ce0" -> "sha256:89a7651931b61d52a68ecf9d08342e8fbb17ccf3fec8de11c9deb1da3db30399" [label=""];
  "sha256:89a7651931b61d52a68ecf9d08342e8fbb17ccf3fec8de11c9deb1da3db30399" -> "sha256:3bc861714daf67f0caa2121f459f4dc3eec89a5b89c08cefe739fdb4270665ca" [label=""];
}

