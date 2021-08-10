[app/sources/400383488.Dockerfile]
digraph {
  "sha256:5e81d71523ca77c094750024cc7d9fb79e1115295a9ff82fd290ebd195573653" [label="docker-image://docker.io/savonet/liquidsoap-full:latest" shape="ellipse"];
  "sha256:d1c4316efffa487b71515642147985b80171900963b778693b9d36146abd8d24" [label="local://context" shape="ellipse"];
  "sha256:2f2b04bbc50e10b310eed6bc37ce6b005cf159102c6658beba0356ad604120e9" [label="copy{src=/.gitconfig, dest=/home/opam/.gitconfig}" shape="note"];
  "sha256:85bf780dfc57e2fd8928cb61063146aab5e021eee20e0ce2795ced9231273d5e" [label="/bin/sh -c chown -R opam /home/opam/.gitconfig && chmod 600 /home/opam/.gitconfig" shape="box"];
  "sha256:66a4be38044eca6fcfcffbf5bfd1e1f12e5a7d839b0f211205606189ed692082" [label="copy{src=/.ssh, dest=/home/opam/.ssh}" shape="note"];
  "sha256:1fd27562857f938b0f46d06bfa9c643e4949a168220d8f9aac6e605dc0f716be" [label="/bin/sh -c chown -R opam /home/opam/.ssh && chmod 600 /home/opam/.ssh/*" shape="box"];
  "sha256:b33f943ee176399a162ebae44bb763edfa3d2a58648d343fc67e8b3e83b8150c" [label="mkdir{path=/tmp/liquidsoap-full}" shape="note"];
  "sha256:422e4462f307685dd3196f1781584d636daef19859c468fd1b31577372bd3c63" [label="/bin/sh -c rm -rf website/savonet.github.io" shape="box"];
  "sha256:53de65f41f531e7e3a1831e93c6b2c68e12032dd6a0f87c52508bd6401b6a2d5" [label="/bin/sh -c git checkout master && git reset --hard HEAD && git pull" shape="box"];
  "sha256:c63da6b179a0e1455cbbe9a18effddd5e188dd881fcfc2b8126f8dc59d0bf93e" [label="/bin/sh -c cp PACKAGES.default PACKAGES" shape="box"];
  "sha256:7341bb6939823b45ebcd7b70efac8252b6b6b284dd7a6f613398bfc3d6865b2a" [label="/bin/sh -c make update && cd ocaml-ffmpeg && git checkout 0.1.2" shape="box"];
  "sha256:b46b0ebb0f09842800374133fbfa994b038813d4aa464a33d9076277a8e43b9a" [label="/bin/sh -c eval $(opam config env) && ./bootstrap && ./configure --enable-graphics && make clean && make" shape="box"];
  "sha256:513e4b0786d883444e68c82819d4b4320e5e05e9b98b92713af69794fd74d118" [label="mkdir{path=/tmp/liquidsoap-full/website}" shape="note"];
  "sha256:67a1a73f9bc7801deed359a47f1e545e540ed79f22567ad9e2f234982e3ef200" [label="/bin/sh -c eval $(opam config env) && make clean && make dist && make actual-upload" shape="box"];
  "sha256:080ac9c030b56101a007026ed59fa7add8200d3d195dc78b732e4843c6e7627f" [label="sha256:080ac9c030b56101a007026ed59fa7add8200d3d195dc78b732e4843c6e7627f" shape="plaintext"];
  "sha256:5e81d71523ca77c094750024cc7d9fb79e1115295a9ff82fd290ebd195573653" -> "sha256:2f2b04bbc50e10b310eed6bc37ce6b005cf159102c6658beba0356ad604120e9" [label=""];
  "sha256:d1c4316efffa487b71515642147985b80171900963b778693b9d36146abd8d24" -> "sha256:2f2b04bbc50e10b310eed6bc37ce6b005cf159102c6658beba0356ad604120e9" [label=""];
  "sha256:2f2b04bbc50e10b310eed6bc37ce6b005cf159102c6658beba0356ad604120e9" -> "sha256:85bf780dfc57e2fd8928cb61063146aab5e021eee20e0ce2795ced9231273d5e" [label=""];
  "sha256:85bf780dfc57e2fd8928cb61063146aab5e021eee20e0ce2795ced9231273d5e" -> "sha256:66a4be38044eca6fcfcffbf5bfd1e1f12e5a7d839b0f211205606189ed692082" [label=""];
  "sha256:d1c4316efffa487b71515642147985b80171900963b778693b9d36146abd8d24" -> "sha256:66a4be38044eca6fcfcffbf5bfd1e1f12e5a7d839b0f211205606189ed692082" [label=""];
  "sha256:66a4be38044eca6fcfcffbf5bfd1e1f12e5a7d839b0f211205606189ed692082" -> "sha256:1fd27562857f938b0f46d06bfa9c643e4949a168220d8f9aac6e605dc0f716be" [label=""];
  "sha256:1fd27562857f938b0f46d06bfa9c643e4949a168220d8f9aac6e605dc0f716be" -> "sha256:b33f943ee176399a162ebae44bb763edfa3d2a58648d343fc67e8b3e83b8150c" [label=""];
  "sha256:b33f943ee176399a162ebae44bb763edfa3d2a58648d343fc67e8b3e83b8150c" -> "sha256:422e4462f307685dd3196f1781584d636daef19859c468fd1b31577372bd3c63" [label=""];
  "sha256:422e4462f307685dd3196f1781584d636daef19859c468fd1b31577372bd3c63" -> "sha256:53de65f41f531e7e3a1831e93c6b2c68e12032dd6a0f87c52508bd6401b6a2d5" [label=""];
  "sha256:53de65f41f531e7e3a1831e93c6b2c68e12032dd6a0f87c52508bd6401b6a2d5" -> "sha256:c63da6b179a0e1455cbbe9a18effddd5e188dd881fcfc2b8126f8dc59d0bf93e" [label=""];
  "sha256:c63da6b179a0e1455cbbe9a18effddd5e188dd881fcfc2b8126f8dc59d0bf93e" -> "sha256:7341bb6939823b45ebcd7b70efac8252b6b6b284dd7a6f613398bfc3d6865b2a" [label=""];
  "sha256:7341bb6939823b45ebcd7b70efac8252b6b6b284dd7a6f613398bfc3d6865b2a" -> "sha256:b46b0ebb0f09842800374133fbfa994b038813d4aa464a33d9076277a8e43b9a" [label=""];
  "sha256:b46b0ebb0f09842800374133fbfa994b038813d4aa464a33d9076277a8e43b9a" -> "sha256:513e4b0786d883444e68c82819d4b4320e5e05e9b98b92713af69794fd74d118" [label=""];
  "sha256:513e4b0786d883444e68c82819d4b4320e5e05e9b98b92713af69794fd74d118" -> "sha256:67a1a73f9bc7801deed359a47f1e545e540ed79f22567ad9e2f234982e3ef200" [label=""];
  "sha256:67a1a73f9bc7801deed359a47f1e545e540ed79f22567ad9e2f234982e3ef200" -> "sha256:080ac9c030b56101a007026ed59fa7add8200d3d195dc78b732e4843c6e7627f" [label=""];
}

