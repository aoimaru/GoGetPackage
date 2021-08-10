[app/sources/222000646.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:c717f1a19e904e3cf436713869dfc73f693d7aa4fa96da3c0c4c6c3d4a378960" [label="/bin/sh -c apt-get update && \tapt-get install -y apt-utils &&     apt-get upgrade -y &&     apt-get install -y make software-properties-common python3 python3-dev python3-pip libcurl4-openssl-dev sed python3-setuptools vcftools bcftools tabix zlib1g-dev liblzma-dev libpq-dev libbz2-dev build-essential zlib1g-dev liblocal-lib-perl cpanminus curl unzip wget pkg-config cython3 python-pysam sudo &&     apt-get install -y libclass-dbi-mysql-perl libfile-copy-recursive-perl libarchive-extract-perl libarchive-zip-perl libwww-perl libcrypt-ssleay-perl libbio-perl-perl libcgi-pm-perl && \tadd-apt-repository ppa:webupd8team/java -y && \tapt-get update && \techo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \tapt-get install -y oracle-java8-installer && \tapt-get clean" shape="box"];
  "sha256:dc1a66deeda3e65460aaba04efecc442c84f960db91b2cd7f11c7d3ec1d40847" [label="local://context" shape="ellipse"];
  "sha256:50a7a46bb3be6d52f08b09b0c27ea1eafdfda13dc62ddff1b6dd1322ab021b07" [label="copy{src=/, dest=/pynnotator}" shape="note"];
  "sha256:c8ad7e6cdf599a319fd34c07dbc88143405bf5faa3dd13afea76ca42edb90a4e" [label="mkdir{path=/pynnotator}" shape="note"];
  "sha256:7b27030c63b3721f923fc597a5783496b98b1c481fd1b5d30cb47aa55d34159f" [label="/bin/sh -c python3.5 setup.py develop" shape="box"];
  "sha256:ee7ae9ab82384f2c64cf61f582c597cb4aca51b1dced625fc53b966706d26410" [label="/bin/sh -c pynnotator install" shape="box"];
  "sha256:82bd37645f7f9ed9789c34789460188aad2a53b3d7c52c2b8427b3dbccacb7ad" [label="sha256:82bd37645f7f9ed9789c34789460188aad2a53b3d7c52c2b8427b3dbccacb7ad" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:c717f1a19e904e3cf436713869dfc73f693d7aa4fa96da3c0c4c6c3d4a378960" [label=""];
  "sha256:c717f1a19e904e3cf436713869dfc73f693d7aa4fa96da3c0c4c6c3d4a378960" -> "sha256:50a7a46bb3be6d52f08b09b0c27ea1eafdfda13dc62ddff1b6dd1322ab021b07" [label=""];
  "sha256:dc1a66deeda3e65460aaba04efecc442c84f960db91b2cd7f11c7d3ec1d40847" -> "sha256:50a7a46bb3be6d52f08b09b0c27ea1eafdfda13dc62ddff1b6dd1322ab021b07" [label=""];
  "sha256:50a7a46bb3be6d52f08b09b0c27ea1eafdfda13dc62ddff1b6dd1322ab021b07" -> "sha256:c8ad7e6cdf599a319fd34c07dbc88143405bf5faa3dd13afea76ca42edb90a4e" [label=""];
  "sha256:c8ad7e6cdf599a319fd34c07dbc88143405bf5faa3dd13afea76ca42edb90a4e" -> "sha256:7b27030c63b3721f923fc597a5783496b98b1c481fd1b5d30cb47aa55d34159f" [label=""];
  "sha256:7b27030c63b3721f923fc597a5783496b98b1c481fd1b5d30cb47aa55d34159f" -> "sha256:ee7ae9ab82384f2c64cf61f582c597cb4aca51b1dced625fc53b966706d26410" [label=""];
  "sha256:ee7ae9ab82384f2c64cf61f582c597cb4aca51b1dced625fc53b966706d26410" -> "sha256:82bd37645f7f9ed9789c34789460188aad2a53b3d7c52c2b8427b3dbccacb7ad" [label=""];
}

