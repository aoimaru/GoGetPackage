[app/sources/357274683.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:c13fa2081fc184076b2cc89472dfec29588249352f94ba8309b62a02feb60055" [label="/bin/sh -c echo \"UPDATE\" && yum -y update" shape="box"];
  "sha256:2f02dbedd6131d72fcbd28d924a281c4fadc65a5f1e287f67fc310f6ae26f029" [label="/bin/sh -c echo \"DEVTOOLS\" && yum -y groupinstall \"Development Tools\"" shape="box"];
  "sha256:a81239deb1c02d8c5fa1fff5f07e0c0e0c98c107d73d4ac3ff814eb9dd43f1cc" [label="/bin/sh -c echo \"EXTRAS\" && yum -y install       git       libpcap-devel       libvirt-devel       libnfnetlink-devel       libxml2-devel       rpm-build       dbus-devel" shape="box"];
  "sha256:64f8891589189fcfaef482236b8c5a661851e7d42b1bef7f29b907a982f8b3ff" [label="/bin/sh -c mkdir /packages && chown 777 /packages" shape="box"];
  "sha256:784025555ac1ad3846db60589d49b379eab1f5a71fa7c27dee1ca3ca93a09893" [label="local://context" shape="ellipse"];
  "sha256:8a8d365bc9aa8610d703938045a5c74463c4bf9831459c4bb2db7106985df69e" [label="copy{src=/build_hsflowd, dest=/root/build_hsflowd}" shape="note"];
  "sha256:e0953b6a5555a700f46a7fb5053944934283ee621beed6c6fa1b99bc3b8347dd" [label="sha256:e0953b6a5555a700f46a7fb5053944934283ee621beed6c6fa1b99bc3b8347dd" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:c13fa2081fc184076b2cc89472dfec29588249352f94ba8309b62a02feb60055" [label=""];
  "sha256:c13fa2081fc184076b2cc89472dfec29588249352f94ba8309b62a02feb60055" -> "sha256:2f02dbedd6131d72fcbd28d924a281c4fadc65a5f1e287f67fc310f6ae26f029" [label=""];
  "sha256:2f02dbedd6131d72fcbd28d924a281c4fadc65a5f1e287f67fc310f6ae26f029" -> "sha256:a81239deb1c02d8c5fa1fff5f07e0c0e0c98c107d73d4ac3ff814eb9dd43f1cc" [label=""];
  "sha256:a81239deb1c02d8c5fa1fff5f07e0c0e0c98c107d73d4ac3ff814eb9dd43f1cc" -> "sha256:64f8891589189fcfaef482236b8c5a661851e7d42b1bef7f29b907a982f8b3ff" [label=""];
  "sha256:64f8891589189fcfaef482236b8c5a661851e7d42b1bef7f29b907a982f8b3ff" -> "sha256:8a8d365bc9aa8610d703938045a5c74463c4bf9831459c4bb2db7106985df69e" [label=""];
  "sha256:784025555ac1ad3846db60589d49b379eab1f5a71fa7c27dee1ca3ca93a09893" -> "sha256:8a8d365bc9aa8610d703938045a5c74463c4bf9831459c4bb2db7106985df69e" [label=""];
  "sha256:8a8d365bc9aa8610d703938045a5c74463c4bf9831459c4bb2db7106985df69e" -> "sha256:e0953b6a5555a700f46a7fb5053944934283ee621beed6c6fa1b99bc3b8347dd" [label=""];
}

