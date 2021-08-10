[app/sources/348080118.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:2893d7149e254c73468a3525f10e253680c5fa6ecb448bb9dce0c5e90fa05850" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:3368ebeda45dea83fa0f02c88ad5ec52a243a2161c85eac3bf3d5910e858e4ca" [label="/bin/sh -c apt-get install -yq libpcre3 libpcre3-dbg libpcre3-dev build-essential autoconf automake libtool libpcap-dev libnet1-dev libyaml-0-2 libyaml-dev zlib1g zlib1g-dev libmagic-dev libcap-ng-dev libjansson-dev pkg-config libgeoip-dev libnetfilter-queue-dev" shape="box"];
  "sha256:e4b49cdbc367eb7e666744b90b368507c34a78f09e0faa5add16f63523b34d16" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:cc19e95b159c9caa95f0874aef5ed4d23958a681f9c2f61d1f631f0147cc9b1c" [label="/bin/sh -c wget http://www.openinfosecfoundation.org/download/$PROG-$VERS.tar.gz" shape="box"];
  "sha256:4954121d16868376581ce2cd1ea2152a59fa74ffeaf863d2174d7d7611262de9" [label="/bin/sh -c tar -xvzf $PROG-$VERS.tar.gz" shape="box"];
  "sha256:ec74a951ce4199a0768d6de9bc6abca7fc1e442a727613d69044d314370f3a77" [label="mkdir{path=/home/opennsm/suricata-1.4.5}" shape="note"];
  "sha256:e04c3c7e3a958d838f6cc93c9eb5be790b45a89109e57d1bb1c9cda755571060" [label="/bin/sh -c ./configure --enable-nfqueue --enable-geoip --prefix=$PREFIX --enable-profiling --enable-debug --enable-debug-validation --enable-unittests --sysconfdir=/etc --localstatedir=/var && make" shape="box"];
  "sha256:8b49059e497d3f0527c5596136c73798809a4143d9e80fdfb98c65f4d8cecbaa" [label="/bin/sh -c make install && make install-full" shape="box"];
  "sha256:ad5fa4d0982497398f41d1caaf1efb852e65c116abf10621860e35043ad6f0d4" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:5763f39168a518f7784e5728755e2a39a4ca82ea3dd2a3aeaaf38debf24474d7" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:6d49a6ce2ed18a0d5948b787d3af68e613d72a9fc57014125b0a0dcfe0736fbe" [label="sha256:6d49a6ce2ed18a0d5948b787d3af68e613d72a9fc57014125b0a0dcfe0736fbe" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:2893d7149e254c73468a3525f10e253680c5fa6ecb448bb9dce0c5e90fa05850" [label=""];
  "sha256:2893d7149e254c73468a3525f10e253680c5fa6ecb448bb9dce0c5e90fa05850" -> "sha256:3368ebeda45dea83fa0f02c88ad5ec52a243a2161c85eac3bf3d5910e858e4ca" [label=""];
  "sha256:3368ebeda45dea83fa0f02c88ad5ec52a243a2161c85eac3bf3d5910e858e4ca" -> "sha256:e4b49cdbc367eb7e666744b90b368507c34a78f09e0faa5add16f63523b34d16" [label=""];
  "sha256:e4b49cdbc367eb7e666744b90b368507c34a78f09e0faa5add16f63523b34d16" -> "sha256:cc19e95b159c9caa95f0874aef5ed4d23958a681f9c2f61d1f631f0147cc9b1c" [label=""];
  "sha256:cc19e95b159c9caa95f0874aef5ed4d23958a681f9c2f61d1f631f0147cc9b1c" -> "sha256:4954121d16868376581ce2cd1ea2152a59fa74ffeaf863d2174d7d7611262de9" [label=""];
  "sha256:4954121d16868376581ce2cd1ea2152a59fa74ffeaf863d2174d7d7611262de9" -> "sha256:ec74a951ce4199a0768d6de9bc6abca7fc1e442a727613d69044d314370f3a77" [label=""];
  "sha256:ec74a951ce4199a0768d6de9bc6abca7fc1e442a727613d69044d314370f3a77" -> "sha256:e04c3c7e3a958d838f6cc93c9eb5be790b45a89109e57d1bb1c9cda755571060" [label=""];
  "sha256:e04c3c7e3a958d838f6cc93c9eb5be790b45a89109e57d1bb1c9cda755571060" -> "sha256:8b49059e497d3f0527c5596136c73798809a4143d9e80fdfb98c65f4d8cecbaa" [label=""];
  "sha256:8b49059e497d3f0527c5596136c73798809a4143d9e80fdfb98c65f4d8cecbaa" -> "sha256:ad5fa4d0982497398f41d1caaf1efb852e65c116abf10621860e35043ad6f0d4" [label=""];
  "sha256:ad5fa4d0982497398f41d1caaf1efb852e65c116abf10621860e35043ad6f0d4" -> "sha256:5763f39168a518f7784e5728755e2a39a4ca82ea3dd2a3aeaaf38debf24474d7" [label=""];
  "sha256:5763f39168a518f7784e5728755e2a39a4ca82ea3dd2a3aeaaf38debf24474d7" -> "sha256:6d49a6ce2ed18a0d5948b787d3af68e613d72a9fc57014125b0a0dcfe0736fbe" [label=""];
}

