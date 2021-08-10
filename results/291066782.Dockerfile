[app/sources/291066782.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:45c8e6a3cdc7f19ca7dc05cb67a7437b0bab080891a8ad09e83a24e122489167" [label="/bin/sh -c apt -y update &&     apt -y install software-properties-common libevent-2.0-5 libevent-pthreads-2.0-5                    libunwind8" shape="box"];
  "sha256:3258b2c5081a8e20c4733f5a1d112bdad62b18a1a4f897533135f85e107cc1b1" [label="mkdir{path=/app}" shape="note"];
  "sha256:dfdcce1bec7c18956eacd9e9cd438b78ce2a0e922616781e931fc746c4ebbbed" [label="local://context" shape="ellipse"];
  "sha256:5509b82b0405c1ede0356b79bb8083539df39c960ea367e3204706af1e9f219c" [label="copy{src=/boost_1_67_0/stage/lib/*.so, dest=/opt/boost_1_67_0/lib/}" shape="note"];
  "sha256:1c218fc6363cd19e0d1fcc1f26364c718051a00088a2bb5e5b1936e936f303b2" [label="copy{src=/third_party/libs/gflags/lib/libgflags.so.2.2, dest=/app/},copy{src=/third_party/libs/gperf/lib/libtcmalloc_and_profiler.so.4, dest=/app/}" shape="note"];
  "sha256:69f2be0a615a74905d67224a2239afb27b51e80d1fd9a5d1c1f4adeac6e09284" [label="/bin/sh -c ldconfig /opt/boost_1_67_0/lib/ /app" shape="box"];
  "sha256:8a458f616cc098a23c686694a29090ea388146c527084f6087956e2c2ee0ee76" [label="copy{src=/build-opt/asio_fibers, dest=/app/}" shape="note"];
  "sha256:501719e9f410d0c99bb939072c816a8f76bce7dd30a23098744229707b6aa67e" [label="sha256:501719e9f410d0c99bb939072c816a8f76bce7dd30a23098744229707b6aa67e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:45c8e6a3cdc7f19ca7dc05cb67a7437b0bab080891a8ad09e83a24e122489167" [label=""];
  "sha256:45c8e6a3cdc7f19ca7dc05cb67a7437b0bab080891a8ad09e83a24e122489167" -> "sha256:3258b2c5081a8e20c4733f5a1d112bdad62b18a1a4f897533135f85e107cc1b1" [label=""];
  "sha256:3258b2c5081a8e20c4733f5a1d112bdad62b18a1a4f897533135f85e107cc1b1" -> "sha256:5509b82b0405c1ede0356b79bb8083539df39c960ea367e3204706af1e9f219c" [label=""];
  "sha256:dfdcce1bec7c18956eacd9e9cd438b78ce2a0e922616781e931fc746c4ebbbed" -> "sha256:5509b82b0405c1ede0356b79bb8083539df39c960ea367e3204706af1e9f219c" [label=""];
  "sha256:5509b82b0405c1ede0356b79bb8083539df39c960ea367e3204706af1e9f219c" -> "sha256:1c218fc6363cd19e0d1fcc1f26364c718051a00088a2bb5e5b1936e936f303b2" [label=""];
  "sha256:dfdcce1bec7c18956eacd9e9cd438b78ce2a0e922616781e931fc746c4ebbbed" -> "sha256:1c218fc6363cd19e0d1fcc1f26364c718051a00088a2bb5e5b1936e936f303b2" [label=""];
  "sha256:1c218fc6363cd19e0d1fcc1f26364c718051a00088a2bb5e5b1936e936f303b2" -> "sha256:69f2be0a615a74905d67224a2239afb27b51e80d1fd9a5d1c1f4adeac6e09284" [label=""];
  "sha256:69f2be0a615a74905d67224a2239afb27b51e80d1fd9a5d1c1f4adeac6e09284" -> "sha256:8a458f616cc098a23c686694a29090ea388146c527084f6087956e2c2ee0ee76" [label=""];
  "sha256:dfdcce1bec7c18956eacd9e9cd438b78ce2a0e922616781e931fc746c4ebbbed" -> "sha256:8a458f616cc098a23c686694a29090ea388146c527084f6087956e2c2ee0ee76" [label=""];
  "sha256:8a458f616cc098a23c686694a29090ea388146c527084f6087956e2c2ee0ee76" -> "sha256:501719e9f410d0c99bb939072c816a8f76bce7dd30a23098744229707b6aa67e" [label=""];
}

