[app/sources/461024230.Dockerfile]
digraph {
  "sha256:516f36282ee24113c1b7ec9a1543586c6b2b2d6f4e3894c9642530ca8ee854b2" [label="docker-image://docker.io/paddlepaddle/paddlecloud-job:latest" shape="ellipse"];
  "sha256:15c11a5e5fd12ce070922716f2fcfd6c8713d5d82ec60389421fa6524ea0650d" [label="/bin/sh -c mkdir -p /workspace" shape="box"];
  "sha256:e5fb699b34f3032b4a34554ca87639773504c8cd4ab41a2767ee11cd35b34bd7" [label="local://context" shape="ellipse"];
  "sha256:1c9639121cb1d11afbd774501328828ef52862d035a827957a1555a80eff036d" [label="copy{src=/prepare_data.py, dest=/workspace/},copy{src=/train.py, dest=/workspace/}" shape="note"];
  "sha256:18795e9397315e5e2160fa38e3cd1ce24339cc71b55e5053cb3e7dda9ccffe4c" [label="/bin/sh -c python /workspace/prepare_data.py" shape="box"];
  "sha256:b49adc0b6cc4b99771eef0df2f62cd7d0b6e0467725a990cdbcbf53baff83553" [label="sha256:b49adc0b6cc4b99771eef0df2f62cd7d0b6e0467725a990cdbcbf53baff83553" shape="plaintext"];
  "sha256:516f36282ee24113c1b7ec9a1543586c6b2b2d6f4e3894c9642530ca8ee854b2" -> "sha256:15c11a5e5fd12ce070922716f2fcfd6c8713d5d82ec60389421fa6524ea0650d" [label=""];
  "sha256:15c11a5e5fd12ce070922716f2fcfd6c8713d5d82ec60389421fa6524ea0650d" -> "sha256:1c9639121cb1d11afbd774501328828ef52862d035a827957a1555a80eff036d" [label=""];
  "sha256:e5fb699b34f3032b4a34554ca87639773504c8cd4ab41a2767ee11cd35b34bd7" -> "sha256:1c9639121cb1d11afbd774501328828ef52862d035a827957a1555a80eff036d" [label=""];
  "sha256:1c9639121cb1d11afbd774501328828ef52862d035a827957a1555a80eff036d" -> "sha256:18795e9397315e5e2160fa38e3cd1ce24339cc71b55e5053cb3e7dda9ccffe4c" [label=""];
  "sha256:18795e9397315e5e2160fa38e3cd1ce24339cc71b55e5053cb3e7dda9ccffe4c" -> "sha256:b49adc0b6cc4b99771eef0df2f62cd7d0b6e0467725a990cdbcbf53baff83553" [label=""];
}

