[app/sources/234451734.Dockerfile]
digraph {
  "sha256:3daf1f5750e4416aef27dba2779a87224a677b0bb84ba53c3480d7504ff18242" [label="local://context" shape="ellipse"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:3145dadc63dc2834f617807cdcfd33be310703fc8dd5fb85fa4a34ab63e13d3a" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y libzmq3                       libpqxx-4.0                       libgoogle-perftools4                       libprotobuf9                       libproj-dev                       protobuf-compiler                       libgeos-c1                       liblog4cplus-1.0-4                       libboost-chrono1.55.0                       libboost-date-time1.55.0                       libboost-filesystem1.55.0                       libboost-iostreams1.55.0                       libboost-program-options1.55.0                       libboost-regex1.55.0                       libboost-serialization1.55.0                       libboost-system1.55.0                       libboost-test1.55.0                       libboost-thread1.55.0                       netcat" shape="box"];
  "sha256:69905e85e342e7508b746c22ba1ad1ca899c1be0a8ecf83ebcf1add6d79a5eb0" [label="/bin/sh -c mkdir -p /srv/kraken" shape="box"];
  "sha256:31bf05d0b3ac9afef350fcfbc5bccb5f6d304f28131c91cfd1a12ae4d6436fa4" [label="copy{src=/tests/*_test, dest=/srv/kraken/}" shape="note"];
  "sha256:67b6623ac846aa1f563e68380474a61936267af8eda0c2a5f71df79cfd90102e" [label="mkdir{path=/srv/kraken}" shape="note"];
  "sha256:67037a1bf7a3e9d95481ebce3e093eedc23b969e2b7caac35593ef49e905ef6a" [label="sha256:67037a1bf7a3e9d95481ebce3e093eedc23b969e2b7caac35593ef49e905ef6a" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:3145dadc63dc2834f617807cdcfd33be310703fc8dd5fb85fa4a34ab63e13d3a" [label=""];
  "sha256:3145dadc63dc2834f617807cdcfd33be310703fc8dd5fb85fa4a34ab63e13d3a" -> "sha256:69905e85e342e7508b746c22ba1ad1ca899c1be0a8ecf83ebcf1add6d79a5eb0" [label=""];
  "sha256:69905e85e342e7508b746c22ba1ad1ca899c1be0a8ecf83ebcf1add6d79a5eb0" -> "sha256:31bf05d0b3ac9afef350fcfbc5bccb5f6d304f28131c91cfd1a12ae4d6436fa4" [label=""];
  "sha256:3daf1f5750e4416aef27dba2779a87224a677b0bb84ba53c3480d7504ff18242" -> "sha256:31bf05d0b3ac9afef350fcfbc5bccb5f6d304f28131c91cfd1a12ae4d6436fa4" [label=""];
  "sha256:31bf05d0b3ac9afef350fcfbc5bccb5f6d304f28131c91cfd1a12ae4d6436fa4" -> "sha256:67b6623ac846aa1f563e68380474a61936267af8eda0c2a5f71df79cfd90102e" [label=""];
  "sha256:67b6623ac846aa1f563e68380474a61936267af8eda0c2a5f71df79cfd90102e" -> "sha256:67037a1bf7a3e9d95481ebce3e093eedc23b969e2b7caac35593ef49e905ef6a" [label=""];
}

