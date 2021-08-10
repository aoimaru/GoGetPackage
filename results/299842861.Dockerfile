[app/sources/299842861.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label="mkdir{path=/root}" shape="note"];
  "sha256:84f7751e9f31e2ebd7da6279780d95ed2afb16a7d785add2ebf481a6b88728eb" [label="/bin/sh -c yum -y groupinstall \"Development Tools\" &&    yum -y install cmake make gcc gcc-c++    flex bison libpcap libpcap-devel    openssl-devel python-devel swig    zlib-devel perl    cyrus-sasl cyrus-sasl-devel cyrus-sasl-gssapi    git jq screen" shape="box"];
  "sha256:0895aec32f880f00b4f0226b0fac1691a85de56cb9c5bc7f704e29d95d74e4af" [label="local://context" shape="ellipse"];
  "sha256:8271e22b995ac9efc6c49225b7858f61b4ccdb39badf18e0aa6f971c2983fb84" [label="copy{src=/.screenrc, dest=/root}" shape="note"];
  "sha256:65213f18acac12874f0401c04ab6eb9cd3ac25ee968f92fdd11b0bbbf29bfe09" [label="/bin/sh -c curl -L https://www.bro.org/downloads/bro-2.5.5.tar.gz | tar xvz" shape="box"];
  "sha256:ca245928b5e552b799dabda0b305627382103653e573e22ee74e3adad618ea07" [label="mkdir{path=/root/bro-2.5.5}" shape="note"];
  "sha256:2351f8387385369be03303fb3d013340a86c1e65cffdc89ecbf2dc524815abad" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:1758a0792ff35277f61b83ed87f6beb515c1942aab3bd95188212bab199dea07" [label="/bin/sh -c make" shape="box"];
  "sha256:1d0a9f4a556abe355289d23cdc9d731eb5483b47155890d87952d679c7efc852" [label="/bin/sh -c make install" shape="box"];
  "sha256:ee48af1682c1e3fe82f5c8811d9dc3538a8b0118c574b3aba20bd5722073d0a2" [label="/bin/sh -c yum -y update &&     yum -y install epel-release &&     yum -y install python-pip &&     yum clean all &&     pip install --upgrade pip &&     pip install bro-pkg &&     bro-pkg autoconfig" shape="box"];
  "sha256:4949cbda59e411627386413797421a626efa6f07be39cf4d3172237df665ac73" [label="/bin/sh -c curl -L https://github.com/edenhill/librdkafka/archive/v0.11.5.tar.gz | tar xvz" shape="box"];
  "sha256:39afc16e0e6605d1d2138c202894c5cdf1fbdc55a324b357f2941306cb67ab44" [label="mkdir{path=/root/bro-2.5.5/librdkafka-0.11.5}" shape="note"];
  "sha256:00f05009a99010bbf2925504ad816199b3e7906b437e325b0a2b9e6397fdd1b2" [label="/bin/sh -c ./configure --enable-sasl" shape="box"];
  "sha256:6bb1b8b479f442b0f5433f973188698c69806911a6927ac1cc7b510b37699f69" [label="/bin/sh -c make" shape="box"];
  "sha256:99eb0121e7334a144a3b9fffcbe5d86b114b8392c04af4be8762f5085dfd8d52" [label="/bin/sh -c make install" shape="box"];
  "sha256:42450ea4487a8449be8c4781cd6b52cfadd141c9571b76c3d9eba7061fce3200" [label="mkdir{path=/root}" shape="note"];
  "sha256:4b216f221e58aa5e8b6b9c99dd0b5be9495ac1ca3c1e6cf0ddc55924015b3a9a" [label="sha256:4b216f221e58aa5e8b6b9c99dd0b5be9495ac1ca3c1e6cf0ddc55924015b3a9a" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label=""];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" -> "sha256:84f7751e9f31e2ebd7da6279780d95ed2afb16a7d785add2ebf481a6b88728eb" [label=""];
  "sha256:84f7751e9f31e2ebd7da6279780d95ed2afb16a7d785add2ebf481a6b88728eb" -> "sha256:8271e22b995ac9efc6c49225b7858f61b4ccdb39badf18e0aa6f971c2983fb84" [label=""];
  "sha256:0895aec32f880f00b4f0226b0fac1691a85de56cb9c5bc7f704e29d95d74e4af" -> "sha256:8271e22b995ac9efc6c49225b7858f61b4ccdb39badf18e0aa6f971c2983fb84" [label=""];
  "sha256:8271e22b995ac9efc6c49225b7858f61b4ccdb39badf18e0aa6f971c2983fb84" -> "sha256:65213f18acac12874f0401c04ab6eb9cd3ac25ee968f92fdd11b0bbbf29bfe09" [label=""];
  "sha256:65213f18acac12874f0401c04ab6eb9cd3ac25ee968f92fdd11b0bbbf29bfe09" -> "sha256:ca245928b5e552b799dabda0b305627382103653e573e22ee74e3adad618ea07" [label=""];
  "sha256:ca245928b5e552b799dabda0b305627382103653e573e22ee74e3adad618ea07" -> "sha256:2351f8387385369be03303fb3d013340a86c1e65cffdc89ecbf2dc524815abad" [label=""];
  "sha256:2351f8387385369be03303fb3d013340a86c1e65cffdc89ecbf2dc524815abad" -> "sha256:1758a0792ff35277f61b83ed87f6beb515c1942aab3bd95188212bab199dea07" [label=""];
  "sha256:1758a0792ff35277f61b83ed87f6beb515c1942aab3bd95188212bab199dea07" -> "sha256:1d0a9f4a556abe355289d23cdc9d731eb5483b47155890d87952d679c7efc852" [label=""];
  "sha256:1d0a9f4a556abe355289d23cdc9d731eb5483b47155890d87952d679c7efc852" -> "sha256:ee48af1682c1e3fe82f5c8811d9dc3538a8b0118c574b3aba20bd5722073d0a2" [label=""];
  "sha256:ee48af1682c1e3fe82f5c8811d9dc3538a8b0118c574b3aba20bd5722073d0a2" -> "sha256:4949cbda59e411627386413797421a626efa6f07be39cf4d3172237df665ac73" [label=""];
  "sha256:4949cbda59e411627386413797421a626efa6f07be39cf4d3172237df665ac73" -> "sha256:39afc16e0e6605d1d2138c202894c5cdf1fbdc55a324b357f2941306cb67ab44" [label=""];
  "sha256:39afc16e0e6605d1d2138c202894c5cdf1fbdc55a324b357f2941306cb67ab44" -> "sha256:00f05009a99010bbf2925504ad816199b3e7906b437e325b0a2b9e6397fdd1b2" [label=""];
  "sha256:00f05009a99010bbf2925504ad816199b3e7906b437e325b0a2b9e6397fdd1b2" -> "sha256:6bb1b8b479f442b0f5433f973188698c69806911a6927ac1cc7b510b37699f69" [label=""];
  "sha256:6bb1b8b479f442b0f5433f973188698c69806911a6927ac1cc7b510b37699f69" -> "sha256:99eb0121e7334a144a3b9fffcbe5d86b114b8392c04af4be8762f5085dfd8d52" [label=""];
  "sha256:99eb0121e7334a144a3b9fffcbe5d86b114b8392c04af4be8762f5085dfd8d52" -> "sha256:42450ea4487a8449be8c4781cd6b52cfadd141c9571b76c3d9eba7061fce3200" [label=""];
  "sha256:42450ea4487a8449be8c4781cd6b52cfadd141c9571b76c3d9eba7061fce3200" -> "sha256:4b216f221e58aa5e8b6b9c99dd0b5be9495ac1ca3c1e6cf0ddc55924015b3a9a" [label=""];
}

