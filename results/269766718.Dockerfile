[app/sources/269766718.Dockerfile]
digraph {
  "sha256:3f2c66df078e241b52509feaa034822e24c397cad2eb95bbe42f9db3ea5b65a3" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label="/bin/sh -c yum -y install hostname centos-release-gluster && yum -y install glusterfs-server && yum clean all" shape="box"];
  "sha256:b80a6a8fc19237e33e8ac2ee9d141bb3095ef66019e922ba3c107d7c9185e08b" [label="copy{src=/glusterd.vol, dest=/etc/glusterfs/}" shape="note"];
  "sha256:df4bc7f61ad9163452ddc6394ed496fa3355afcb8e6aacf603166ada96859ddc" [label="copy{src=/run_gluster.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:a6e969c249b4c831c9bf23cb0d647529499d264b9cb910b4c6bbdd8d567d14e6" [label="copy{src=/index.html, dest=/vol/}" shape="note"];
  "sha256:4eef8162c3e940405324eb42346ec4b12032ecb791e17f9d236348407cadfb1e" [label="/bin/sh -c chmod 644 /vol/index.html" shape="box"];
  "sha256:3e5ac235508c4a5c7a7bd17c5baeebc1f48b20518d6469f502c558a74cc7e3a2" [label="sha256:3e5ac235508c4a5c7a7bd17c5baeebc1f48b20518d6469f502c558a74cc7e3a2" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label=""];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" -> "sha256:b80a6a8fc19237e33e8ac2ee9d141bb3095ef66019e922ba3c107d7c9185e08b" [label=""];
  "sha256:3f2c66df078e241b52509feaa034822e24c397cad2eb95bbe42f9db3ea5b65a3" -> "sha256:b80a6a8fc19237e33e8ac2ee9d141bb3095ef66019e922ba3c107d7c9185e08b" [label=""];
  "sha256:b80a6a8fc19237e33e8ac2ee9d141bb3095ef66019e922ba3c107d7c9185e08b" -> "sha256:df4bc7f61ad9163452ddc6394ed496fa3355afcb8e6aacf603166ada96859ddc" [label=""];
  "sha256:3f2c66df078e241b52509feaa034822e24c397cad2eb95bbe42f9db3ea5b65a3" -> "sha256:df4bc7f61ad9163452ddc6394ed496fa3355afcb8e6aacf603166ada96859ddc" [label=""];
  "sha256:df4bc7f61ad9163452ddc6394ed496fa3355afcb8e6aacf603166ada96859ddc" -> "sha256:a6e969c249b4c831c9bf23cb0d647529499d264b9cb910b4c6bbdd8d567d14e6" [label=""];
  "sha256:3f2c66df078e241b52509feaa034822e24c397cad2eb95bbe42f9db3ea5b65a3" -> "sha256:a6e969c249b4c831c9bf23cb0d647529499d264b9cb910b4c6bbdd8d567d14e6" [label=""];
  "sha256:a6e969c249b4c831c9bf23cb0d647529499d264b9cb910b4c6bbdd8d567d14e6" -> "sha256:4eef8162c3e940405324eb42346ec4b12032ecb791e17f9d236348407cadfb1e" [label=""];
  "sha256:4eef8162c3e940405324eb42346ec4b12032ecb791e17f9d236348407cadfb1e" -> "sha256:3e5ac235508c4a5c7a7bd17c5baeebc1f48b20518d6469f502c558a74cc7e3a2" [label=""];
}

