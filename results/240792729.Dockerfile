[app/sources/240792729.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:c0b655901fba704ae174240e7691c2c203b30cd43836384378621592243d4054" [label="/bin/sh -c yum --setopt=tsflags=nodocs -q -y update; yum clean all;" shape="box"];
  "sha256:64960e7321f6a6f22a120308183f5afe70d9d6d4e1a5917aab504b5e71103e9f" [label="/bin/sh -c yum --setopt=tsflags=nodocs -q -y install epel-release &&     yum --setopt=tsflags=nodocs -q -y install heketi &&     yum -y autoremove &&     yum -y clean all" shape="box"];
  "sha256:46075198e6817263079678e8e90f79e94d37d6586a7161169abb62a84be95e22" [label="sha256:46075198e6817263079678e8e90f79e94d37d6586a7161169abb62a84be95e22" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:c0b655901fba704ae174240e7691c2c203b30cd43836384378621592243d4054" [label=""];
  "sha256:c0b655901fba704ae174240e7691c2c203b30cd43836384378621592243d4054" -> "sha256:64960e7321f6a6f22a120308183f5afe70d9d6d4e1a5917aab504b5e71103e9f" [label=""];
  "sha256:64960e7321f6a6f22a120308183f5afe70d9d6d4e1a5917aab504b5e71103e9f" -> "sha256:46075198e6817263079678e8e90f79e94d37d6586a7161169abb62a84be95e22" [label=""];
}

