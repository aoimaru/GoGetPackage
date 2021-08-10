[app/sources/252801281.Dockerfile]
digraph {
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" [label="docker-image://docker.io/library/maven:3-jdk-8" shape="ellipse"];
  "sha256:61e668b9dd94314e6b392a18b4776613c90a94d0f7508d6402a20ca0898e3655" [label="/bin/sh -c systemctl disable firewalld" shape="box"];
  "sha256:97d94cfa4ce1455e1bad2297c6c9fec39c43734f69adc43cd4abeec7700efe96" [label="/bin/sh -c apt-get -y update; apt-get -y install git-all" shape="box"];
  "sha256:fb6cc625bd983b2fee7729da5926f13e158d318e3d4cc551aa28bb758e25fdf5" [label="local://context" shape="ellipse"];
  "sha256:86b3be8c3d67cbfdb3ff350818b6c3a8cbe10e111535aa01f063534133df6002" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:9afeac86cfe6ef24c9282489e5d7153e18cb883ac9d80df423b450eb9863efad" [label="/bin/sh -c chmod -v +x /entrypoint.sh" shape="box"];
  "sha256:09e09890953eb4dae15b30e9d26e07e2797d774e3fa8ac8fbf9be2118e41713d" [label="sha256:09e09890953eb4dae15b30e9d26e07e2797d774e3fa8ac8fbf9be2118e41713d" shape="plaintext"];
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" -> "sha256:61e668b9dd94314e6b392a18b4776613c90a94d0f7508d6402a20ca0898e3655" [label=""];
  "sha256:61e668b9dd94314e6b392a18b4776613c90a94d0f7508d6402a20ca0898e3655" -> "sha256:97d94cfa4ce1455e1bad2297c6c9fec39c43734f69adc43cd4abeec7700efe96" [label=""];
  "sha256:97d94cfa4ce1455e1bad2297c6c9fec39c43734f69adc43cd4abeec7700efe96" -> "sha256:86b3be8c3d67cbfdb3ff350818b6c3a8cbe10e111535aa01f063534133df6002" [label=""];
  "sha256:fb6cc625bd983b2fee7729da5926f13e158d318e3d4cc551aa28bb758e25fdf5" -> "sha256:86b3be8c3d67cbfdb3ff350818b6c3a8cbe10e111535aa01f063534133df6002" [label=""];
  "sha256:86b3be8c3d67cbfdb3ff350818b6c3a8cbe10e111535aa01f063534133df6002" -> "sha256:9afeac86cfe6ef24c9282489e5d7153e18cb883ac9d80df423b450eb9863efad" [label=""];
  "sha256:9afeac86cfe6ef24c9282489e5d7153e18cb883ac9d80df423b450eb9863efad" -> "sha256:09e09890953eb4dae15b30e9d26e07e2797d774e3fa8ac8fbf9be2118e41713d" [label=""];
}

