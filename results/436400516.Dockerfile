[app/sources/436400516.Dockerfile]
digraph {
  "sha256:f4927f33f67ce227c35ba52a916eb3b75342c45bb99680254608cdd282fda306" [label="docker-image://docker.io/library/debian:stretch-backports" shape="ellipse"];
  "sha256:d6aee591f49ca3673360c0d913599eaf6e0961e251af227f2dd6301338ba8a3d" [label="/bin/sh -c apt-get update  && apt-get install -y --no-install-recommends         build-essential         ruby ruby-dev         curl wget         gnupg         git         ncbi-blast+         zlib1g-dev" shape="box"];
  "sha256:81a5271c38802ea29e7088c35aa2c58654619fa0494012ac5e165e1ad6f713e1" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash - &&         apt-get update  && apt-get install -y --no-install-recommends         nodejs npm &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e75053ed733cd7243f5504ca7475918020922c74b7fd2f8d21112019e39ca8bc" [label="local://context" shape="ellipse"];
  "sha256:155fbaf2f53fd9cd1d48664147363121f43cae5ffdffa9a2f562e9e3ad764bed" [label="copy{src=/, dest=/sequenceserver}" shape="note"];
  "sha256:b19b7af88ccd4c6a4abc04df3682602ca3351c90d4b73d04584b540dc46071f4" [label="mkdir{path=/sequenceserver}" shape="note"];
  "sha256:9c7d41c8b3217ea075932bd645689f7c51e3b1af25f5f017fe9c87fe1858dcb5" [label="/bin/sh -c gem install bundler && bundle && npm install" shape="box"];
  "sha256:a3b442d3feb6430ae5fa2fe5d2a6196082bdbd22456bb98c74c7e82976d0b741" [label="sha256:a3b442d3feb6430ae5fa2fe5d2a6196082bdbd22456bb98c74c7e82976d0b741" shape="plaintext"];
  "sha256:f4927f33f67ce227c35ba52a916eb3b75342c45bb99680254608cdd282fda306" -> "sha256:d6aee591f49ca3673360c0d913599eaf6e0961e251af227f2dd6301338ba8a3d" [label=""];
  "sha256:d6aee591f49ca3673360c0d913599eaf6e0961e251af227f2dd6301338ba8a3d" -> "sha256:81a5271c38802ea29e7088c35aa2c58654619fa0494012ac5e165e1ad6f713e1" [label=""];
  "sha256:81a5271c38802ea29e7088c35aa2c58654619fa0494012ac5e165e1ad6f713e1" -> "sha256:155fbaf2f53fd9cd1d48664147363121f43cae5ffdffa9a2f562e9e3ad764bed" [label=""];
  "sha256:e75053ed733cd7243f5504ca7475918020922c74b7fd2f8d21112019e39ca8bc" -> "sha256:155fbaf2f53fd9cd1d48664147363121f43cae5ffdffa9a2f562e9e3ad764bed" [label=""];
  "sha256:155fbaf2f53fd9cd1d48664147363121f43cae5ffdffa9a2f562e9e3ad764bed" -> "sha256:b19b7af88ccd4c6a4abc04df3682602ca3351c90d4b73d04584b540dc46071f4" [label=""];
  "sha256:b19b7af88ccd4c6a4abc04df3682602ca3351c90d4b73d04584b540dc46071f4" -> "sha256:9c7d41c8b3217ea075932bd645689f7c51e3b1af25f5f017fe9c87fe1858dcb5" [label=""];
  "sha256:9c7d41c8b3217ea075932bd645689f7c51e3b1af25f5f017fe9c87fe1858dcb5" -> "sha256:a3b442d3feb6430ae5fa2fe5d2a6196082bdbd22456bb98c74c7e82976d0b741" [label=""];
}

