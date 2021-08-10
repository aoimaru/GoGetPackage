[app/sources/235098827.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:bc54a042bab05238f816f33d033589b588d3d36e9d5d26200f07ad1adc05a082" [label="/bin/sh -c echo \"deb http://${DEBIAN_REPO_HOST}/debian sid main\" > /etc/apt/sources.list" shape="box"];
  "sha256:f5044cb0afce5db20a389e2361196dc0dcf6ebc5cfd31e241f3a3abd12c32577" [label="/bin/sh -c echo \"deb-src http://${DEBIAN_REPO_HOST}/debian sid main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:75d2c5e484082de0f6fa6e0b3f8c70ccd0d1f3a3ee19ae196c212142c3b61721" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update || true" shape="box"];
  "sha256:a4de65b300c3dead04aa08cc483118a7898e02d8f66a0370b275bcadcf00a763" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing     apt-utils     git-core     build-essential     devscripts     make     exuberant-ctags     valgrind     autoconf     automake     dh-autoreconf     cpanminus     libtool     zlib1g     zlib1g-dev     libpcre3     libpcre3-dbg     libpcre3-dev     libmagic-dev     libjansson-dev     librdkafka-dev     libgeoip1     libgeoip-dev     libperl-dev     python     mercurial     vim     bind9-host     procps     telnet     tcpflow     ngrep     wget     jq     curl" shape="box"];
  "sha256:de5bfbc4f9eac7fe5bac56a7516540ced6c72eccd9ef25e74d840335e05157f1" [label="/bin/sh -c mkdir -p /build" shape="box"];
  "sha256:5b7e7c863e963982854c744b68249b38cd601ff55e171fdde0f2da69a000d5a0" [label="mkdir{path=/build}" shape="note"];
  "sha256:c007805d47a107ddace381b5be6f0532e480bf4bfc64b873a7e3c3a3acb81991" [label="/bin/sh -c git clone ${GIT_LOCATION}" shape="box"];
  "sha256:1be77ec4498f0909cafd3255b335639b19c5fdee6b618b379cfe508fedb01e2b" [label="/bin/sh -c cd nginx-json-log && git checkout ${GIT_BRANCH}" shape="box"];
  "sha256:7f8b2104c8de2b2e1a2b0adc7eb2760c05ded70fc8ca9297385f8c0f08adb70e" [label="/bin/sh -c hg clone http://hg.nginx.org/nginx" shape="box"];
  "sha256:dbaeb0a7fcfe618826959e151099cc0754b4a6b3bb629b67ec2796f5e604c0d7" [label="mkdir{path=/build/nginx}" shape="note"];
  "sha256:5ac3748cfaee31090780e32115ef3a49b1793dc292f019517dd37c78e6bb49c5" [label="/bin/sh -c ./auto/configure --add-module=/build/nginx-json-log --with-debug --with-http_perl_module --with-http_geoip_module --with-mail  --with-stream --with-ld-opt=\"-Wl,-E\"" shape="box"];
  "sha256:0c7377db6ae80734a99f661f65370826a8a418f3e8e120d942188a2463340588" [label="/bin/sh -c make install" shape="box"];
  "sha256:21948bd38b9dc68626eb22be4440f993dabbfdc279c5e4d64540ca2c8754293a" [label="/bin/sh -c git clone https://github.com/openresty/test-nginx.git" shape="box"];
  "sha256:74de1afb238987725bfdcb253894a198d09ac7f15e818cbbf0783a9dbbf219e6" [label="/bin/sh -c cd test-nginx/ && cpanm . && cpanm install JSON" shape="box"];
  "sha256:a35d1d8dc0f0d3e298a92289d2986e1f66acbef1c0dd3bb26ec72178211c6b23" [label="/bin/sh -c cd /build/nginx-json-log && ctags -R src/ ../nginx/src/" shape="box"];
  "sha256:dd8d3f227084cc606d6b232c2ab5b8aa8a2537dab955617ed439a23dd2761292" [label="local://context" shape="ellipse"];
  "sha256:c9908439ffe4ef3dd01ef67593981a764f58b65fe696082ee7f690f74b0903ab" [label="copy{src=/nginx.conf, dest=/usr/local/nginx/conf/nginx.conf}" shape="note"];
  "sha256:988258073677f3729c5bd72c0156d8ec242708aa0659c38f187f09ff6f1c10d1" [label="copy{src=/vimrc, dest=/etc/vim/vimrc}" shape="note"];
  "sha256:da405d3fdbb8815c07279b771b333c0068b486a0c26cd8d9899376eee4cdba66" [label="sha256:da405d3fdbb8815c07279b771b333c0068b486a0c26cd8d9899376eee4cdba66" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:bc54a042bab05238f816f33d033589b588d3d36e9d5d26200f07ad1adc05a082" [label=""];
  "sha256:bc54a042bab05238f816f33d033589b588d3d36e9d5d26200f07ad1adc05a082" -> "sha256:f5044cb0afce5db20a389e2361196dc0dcf6ebc5cfd31e241f3a3abd12c32577" [label=""];
  "sha256:f5044cb0afce5db20a389e2361196dc0dcf6ebc5cfd31e241f3a3abd12c32577" -> "sha256:75d2c5e484082de0f6fa6e0b3f8c70ccd0d1f3a3ee19ae196c212142c3b61721" [label=""];
  "sha256:75d2c5e484082de0f6fa6e0b3f8c70ccd0d1f3a3ee19ae196c212142c3b61721" -> "sha256:a4de65b300c3dead04aa08cc483118a7898e02d8f66a0370b275bcadcf00a763" [label=""];
  "sha256:a4de65b300c3dead04aa08cc483118a7898e02d8f66a0370b275bcadcf00a763" -> "sha256:de5bfbc4f9eac7fe5bac56a7516540ced6c72eccd9ef25e74d840335e05157f1" [label=""];
  "sha256:de5bfbc4f9eac7fe5bac56a7516540ced6c72eccd9ef25e74d840335e05157f1" -> "sha256:5b7e7c863e963982854c744b68249b38cd601ff55e171fdde0f2da69a000d5a0" [label=""];
  "sha256:5b7e7c863e963982854c744b68249b38cd601ff55e171fdde0f2da69a000d5a0" -> "sha256:c007805d47a107ddace381b5be6f0532e480bf4bfc64b873a7e3c3a3acb81991" [label=""];
  "sha256:c007805d47a107ddace381b5be6f0532e480bf4bfc64b873a7e3c3a3acb81991" -> "sha256:1be77ec4498f0909cafd3255b335639b19c5fdee6b618b379cfe508fedb01e2b" [label=""];
  "sha256:1be77ec4498f0909cafd3255b335639b19c5fdee6b618b379cfe508fedb01e2b" -> "sha256:7f8b2104c8de2b2e1a2b0adc7eb2760c05ded70fc8ca9297385f8c0f08adb70e" [label=""];
  "sha256:7f8b2104c8de2b2e1a2b0adc7eb2760c05ded70fc8ca9297385f8c0f08adb70e" -> "sha256:dbaeb0a7fcfe618826959e151099cc0754b4a6b3bb629b67ec2796f5e604c0d7" [label=""];
  "sha256:dbaeb0a7fcfe618826959e151099cc0754b4a6b3bb629b67ec2796f5e604c0d7" -> "sha256:5ac3748cfaee31090780e32115ef3a49b1793dc292f019517dd37c78e6bb49c5" [label=""];
  "sha256:5ac3748cfaee31090780e32115ef3a49b1793dc292f019517dd37c78e6bb49c5" -> "sha256:0c7377db6ae80734a99f661f65370826a8a418f3e8e120d942188a2463340588" [label=""];
  "sha256:0c7377db6ae80734a99f661f65370826a8a418f3e8e120d942188a2463340588" -> "sha256:21948bd38b9dc68626eb22be4440f993dabbfdc279c5e4d64540ca2c8754293a" [label=""];
  "sha256:21948bd38b9dc68626eb22be4440f993dabbfdc279c5e4d64540ca2c8754293a" -> "sha256:74de1afb238987725bfdcb253894a198d09ac7f15e818cbbf0783a9dbbf219e6" [label=""];
  "sha256:74de1afb238987725bfdcb253894a198d09ac7f15e818cbbf0783a9dbbf219e6" -> "sha256:a35d1d8dc0f0d3e298a92289d2986e1f66acbef1c0dd3bb26ec72178211c6b23" [label=""];
  "sha256:a35d1d8dc0f0d3e298a92289d2986e1f66acbef1c0dd3bb26ec72178211c6b23" -> "sha256:c9908439ffe4ef3dd01ef67593981a764f58b65fe696082ee7f690f74b0903ab" [label=""];
  "sha256:dd8d3f227084cc606d6b232c2ab5b8aa8a2537dab955617ed439a23dd2761292" -> "sha256:c9908439ffe4ef3dd01ef67593981a764f58b65fe696082ee7f690f74b0903ab" [label=""];
  "sha256:c9908439ffe4ef3dd01ef67593981a764f58b65fe696082ee7f690f74b0903ab" -> "sha256:988258073677f3729c5bd72c0156d8ec242708aa0659c38f187f09ff6f1c10d1" [label=""];
  "sha256:dd8d3f227084cc606d6b232c2ab5b8aa8a2537dab955617ed439a23dd2761292" -> "sha256:988258073677f3729c5bd72c0156d8ec242708aa0659c38f187f09ff6f1c10d1" [label=""];
  "sha256:988258073677f3729c5bd72c0156d8ec242708aa0659c38f187f09ff6f1c10d1" -> "sha256:da405d3fdbb8815c07279b771b333c0068b486a0c26cd8d9899376eee4cdba66" [label=""];
}

