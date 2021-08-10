[app/sources/291180917.Dockerfile]
digraph {
  "sha256:47ff061fbaf63db453d0f835c1b83cd331bfec43fe567b16a245e34f29e3b79a" [label="docker-image://docker.io/circleci/mariadb:10.2.16-bionic@sha256:b3d7905035c1cd9ee7f09c679f15b9449bc3c5db1160df31fc73d293cf70ee8b" shape="ellipse"];
  "sha256:39b09eda5141c2f59f9e41c592ef37c4425d68785bb0da781342b1bbf5fee10b" [label="/bin/sh -c echo '\\n[mysqld]\\ndatadir = /dev/shm/mysql\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:adf74c49b3c67b1d39733d7559ae4855a07e447ff7f2ce61926881e6064aba81" [label="sha256:adf74c49b3c67b1d39733d7559ae4855a07e447ff7f2ce61926881e6064aba81" shape="plaintext"];
  "sha256:47ff061fbaf63db453d0f835c1b83cd331bfec43fe567b16a245e34f29e3b79a" -> "sha256:39b09eda5141c2f59f9e41c592ef37c4425d68785bb0da781342b1bbf5fee10b" [label=""];
  "sha256:39b09eda5141c2f59f9e41c592ef37c4425d68785bb0da781342b1bbf5fee10b" -> "sha256:adf74c49b3c67b1d39733d7559ae4855a07e447ff7f2ce61926881e6064aba81" [label=""];
}

