[app/sources/445544988.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:30b57935f646d3f5b99d481293994635e9d8514e9ed2aa9775e9078ef443eafe" [label="local://context" shape="ellipse"];
  "sha256:32e915a5353640cc31780182c91d9176c02dd048ab059434021638f7c47ec058" [label="copy{src=/x86_64_qemu--static.tar.gz, dest=/usr/bin}" shape="note"];
  "sha256:bb5d58e40a82bcbaca5985ff7fcf7fc99fe489c50dec2a24a7f5814979dca131" [label="copy{src=/, dest=/bd_build}" shape="note"];
  "sha256:8fd08307ad8bd2fca9059203b9e527fec4b3e5c1eead26100e98df59900f52c6" [label="/bin/sh -c /bd_build/prepare.sh && \t/bd_build/system_services.sh && \t/bd_build/utilities.sh && \t/bd_build/cleanup.sh" shape="box"];
  "sha256:45a7259d77c6e976c2dd53f0ccd288f8b38e0cb974a7a111cbdc6829bf68e0f8" [label="sha256:45a7259d77c6e976c2dd53f0ccd288f8b38e0cb974a7a111cbdc6829bf68e0f8" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:32e915a5353640cc31780182c91d9176c02dd048ab059434021638f7c47ec058" [label=""];
  "sha256:30b57935f646d3f5b99d481293994635e9d8514e9ed2aa9775e9078ef443eafe" -> "sha256:32e915a5353640cc31780182c91d9176c02dd048ab059434021638f7c47ec058" [label=""];
  "sha256:32e915a5353640cc31780182c91d9176c02dd048ab059434021638f7c47ec058" -> "sha256:bb5d58e40a82bcbaca5985ff7fcf7fc99fe489c50dec2a24a7f5814979dca131" [label=""];
  "sha256:30b57935f646d3f5b99d481293994635e9d8514e9ed2aa9775e9078ef443eafe" -> "sha256:bb5d58e40a82bcbaca5985ff7fcf7fc99fe489c50dec2a24a7f5814979dca131" [label=""];
  "sha256:bb5d58e40a82bcbaca5985ff7fcf7fc99fe489c50dec2a24a7f5814979dca131" -> "sha256:8fd08307ad8bd2fca9059203b9e527fec4b3e5c1eead26100e98df59900f52c6" [label=""];
  "sha256:8fd08307ad8bd2fca9059203b9e527fec4b3e5c1eead26100e98df59900f52c6" -> "sha256:45a7259d77c6e976c2dd53f0ccd288f8b38e0cb974a7a111cbdc6829bf68e0f8" [label=""];
}

