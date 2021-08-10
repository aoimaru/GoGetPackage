[app/sources/363949045.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:1546888a1d50744c28fa9d59c6af09d019a1a29ed684b9798e3e2ae649c0e37d" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:78c2041022ca180b07b8aee28896bc123fb93924e002b1e7302e6f47ce3751bc" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:0cf16844029398986f418ac4b5b1f2bec77a3418def866fbb63cadbea9496f06" [label="/bin/sh -c yum install -y npm supervisor wget" shape="box"];
  "sha256:982494e22554f79d89e1d71a7da5a6ab35081c8afddf2a17f2a1fbc4a152c2e0" [label="/bin/sh -c yum install -y nodejs npm" shape="box"];
  "sha256:288a060b3c0e41a53a76299fab102be4c56909fb8803dac25880680efc07d9d3" [label="/bin/sh -c cd /opt; wget --no-cookies --no-check-certificate --header \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie\" \"http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jre-8u51-linux-x64.tar.gz\" ; tar xvf jre-8*.tar.gz ; alternatives --install /usr/bin/java java /opt/jre1.8*/bin/java 1" shape="box"];
  "sha256:e1895951d8d894e548b199236f8300fe671abaa010ce5f7568494dc5f628a585" [label="local://context" shape="ellipse"];
  "sha256:64f89256a42f90ae33ac7fd5248a8024f28a7dda273f22688143cba416404e9c" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:8a8428dc2e2bc8fd1fb2d6f4f99104dca846422061532f41adfcf24553ca9a10" [label="copy{src=/build, dest=/torflow/}" shape="note"];
  "sha256:93033eb1e8dd629c9a1f6b5b8f4ede489279d2c3bfa4e2859f665036cc06efa7" [label="/bin/sh -c npm install -g bower gulp;" shape="box"];
  "sha256:fe8a62003a4ef4a3bf4e5b2ae8d72d72cdcb948f2f9a0197853ffe0654e3c50e" [label="/bin/sh -c cd /torflow; npm install; cd public; bower install --allow-root; gulp deploy;" shape="box"];
  "sha256:1d94d45478f52b7c28a4b24f3b5333afc05a67874f86e7f0799d7e8a2573b3e9" [label="sha256:1d94d45478f52b7c28a4b24f3b5333afc05a67874f86e7f0799d7e8a2573b3e9" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:1546888a1d50744c28fa9d59c6af09d019a1a29ed684b9798e3e2ae649c0e37d" [label=""];
  "sha256:1546888a1d50744c28fa9d59c6af09d019a1a29ed684b9798e3e2ae649c0e37d" -> "sha256:78c2041022ca180b07b8aee28896bc123fb93924e002b1e7302e6f47ce3751bc" [label=""];
  "sha256:78c2041022ca180b07b8aee28896bc123fb93924e002b1e7302e6f47ce3751bc" -> "sha256:0cf16844029398986f418ac4b5b1f2bec77a3418def866fbb63cadbea9496f06" [label=""];
  "sha256:0cf16844029398986f418ac4b5b1f2bec77a3418def866fbb63cadbea9496f06" -> "sha256:982494e22554f79d89e1d71a7da5a6ab35081c8afddf2a17f2a1fbc4a152c2e0" [label=""];
  "sha256:982494e22554f79d89e1d71a7da5a6ab35081c8afddf2a17f2a1fbc4a152c2e0" -> "sha256:288a060b3c0e41a53a76299fab102be4c56909fb8803dac25880680efc07d9d3" [label=""];
  "sha256:288a060b3c0e41a53a76299fab102be4c56909fb8803dac25880680efc07d9d3" -> "sha256:64f89256a42f90ae33ac7fd5248a8024f28a7dda273f22688143cba416404e9c" [label=""];
  "sha256:e1895951d8d894e548b199236f8300fe671abaa010ce5f7568494dc5f628a585" -> "sha256:64f89256a42f90ae33ac7fd5248a8024f28a7dda273f22688143cba416404e9c" [label=""];
  "sha256:64f89256a42f90ae33ac7fd5248a8024f28a7dda273f22688143cba416404e9c" -> "sha256:8a8428dc2e2bc8fd1fb2d6f4f99104dca846422061532f41adfcf24553ca9a10" [label=""];
  "sha256:e1895951d8d894e548b199236f8300fe671abaa010ce5f7568494dc5f628a585" -> "sha256:8a8428dc2e2bc8fd1fb2d6f4f99104dca846422061532f41adfcf24553ca9a10" [label=""];
  "sha256:8a8428dc2e2bc8fd1fb2d6f4f99104dca846422061532f41adfcf24553ca9a10" -> "sha256:93033eb1e8dd629c9a1f6b5b8f4ede489279d2c3bfa4e2859f665036cc06efa7" [label=""];
  "sha256:93033eb1e8dd629c9a1f6b5b8f4ede489279d2c3bfa4e2859f665036cc06efa7" -> "sha256:fe8a62003a4ef4a3bf4e5b2ae8d72d72cdcb948f2f9a0197853ffe0654e3c50e" [label=""];
  "sha256:fe8a62003a4ef4a3bf4e5b2ae8d72d72cdcb948f2f9a0197853ffe0654e3c50e" -> "sha256:1d94d45478f52b7c28a4b24f3b5333afc05a67874f86e7f0799d7e8a2573b3e9" [label=""];
}

