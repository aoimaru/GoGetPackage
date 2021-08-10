[app/sources/186903286.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:ae10ac5e11600c4df07342b77eda481b00d1a4acf728c784bfc09bd8e2024a85" [label="/bin/sh -c apt-get -y install make python" shape="box"];
  "sha256:8134bfa2359ecaf93c730ed16b51587a8325eaedecc5564e0b197cc4769a6db1" [label="/bin/sh -c apt-get -y install curl libreadline-dev libedit-dev" shape="box"];
  "sha256:e93ebe54d92d143e0167bec02d5ee1ac066fe75cc86c9532bf82b458c7abe79d" [label="/bin/sh -c mkdir -p /mal" shape="box"];
  "sha256:96a92038cc4d8fa565e18779e862d94138131bfdb875ba512609fc18f6723f27" [label="mkdir{path=/mal}" shape="note"];
  "sha256:6f3ffe5e1be44b449ecd52e211801f8c1fc3a41e0e2e3a1a1f9117b0dc4d674a" [label="/bin/sh -c apt-get -y install valac" shape="box"];
  "sha256:72d93999ee80da87a0a16a76cac94cf66301a23b3c1e4fc672e6d4a9d8e5a426" [label="sha256:72d93999ee80da87a0a16a76cac94cf66301a23b3c1e4fc672e6d4a9d8e5a426" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" [label=""];
  "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" -> "sha256:ae10ac5e11600c4df07342b77eda481b00d1a4acf728c784bfc09bd8e2024a85" [label=""];
  "sha256:ae10ac5e11600c4df07342b77eda481b00d1a4acf728c784bfc09bd8e2024a85" -> "sha256:8134bfa2359ecaf93c730ed16b51587a8325eaedecc5564e0b197cc4769a6db1" [label=""];
  "sha256:8134bfa2359ecaf93c730ed16b51587a8325eaedecc5564e0b197cc4769a6db1" -> "sha256:e93ebe54d92d143e0167bec02d5ee1ac066fe75cc86c9532bf82b458c7abe79d" [label=""];
  "sha256:e93ebe54d92d143e0167bec02d5ee1ac066fe75cc86c9532bf82b458c7abe79d" -> "sha256:96a92038cc4d8fa565e18779e862d94138131bfdb875ba512609fc18f6723f27" [label=""];
  "sha256:96a92038cc4d8fa565e18779e862d94138131bfdb875ba512609fc18f6723f27" -> "sha256:6f3ffe5e1be44b449ecd52e211801f8c1fc3a41e0e2e3a1a1f9117b0dc4d674a" [label=""];
  "sha256:6f3ffe5e1be44b449ecd52e211801f8c1fc3a41e0e2e3a1a1f9117b0dc4d674a" -> "sha256:72d93999ee80da87a0a16a76cac94cf66301a23b3c1e4fc672e6d4a9d8e5a426" [label=""];
}

