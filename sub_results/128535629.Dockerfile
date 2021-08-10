[app/sub_sources/128535629.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python   git   cmake   sudo   gdb   xz-utils" shape="box"];
  "sha256:4ebcd13cca73f50959361d422d5ff1d3f99a2893d67852f5d5430a8fe18c9263" [label="local://context" shape="ellipse"];
  "sha256:8d9d30d4ca4b7508bc74e1ca491dbe051c2819be8b514cb836399f5250754dae" [label="copy{src=/scripts/emscripten.sh, dest=/scripts/}" shape="note"];
  "sha256:bc8585a8b37489cef3161825dd2557efdb943600b645af75df0ca678a4fad95b" [label="/bin/sh -c bash /scripts/emscripten.sh" shape="box"];
  "sha256:f72b6b30f36c085f5ac0019eb019797192643930d85d74a20c748e8802ac463a" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:9159d6ca18281f8c7396b5745ba20cc072619ce7b6996a5b5f21a9f75e1a09f4" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:bf967750f33c1611ac2933664f644a9713515f136f6cbcb79b2f97c8577eefec" [label="sha256:bf967750f33c1611ac2933664f644a9713515f136f6cbcb79b2f97c8577eefec" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" [label=""];
  "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" -> "sha256:8d9d30d4ca4b7508bc74e1ca491dbe051c2819be8b514cb836399f5250754dae" [label=""];
  "sha256:4ebcd13cca73f50959361d422d5ff1d3f99a2893d67852f5d5430a8fe18c9263" -> "sha256:8d9d30d4ca4b7508bc74e1ca491dbe051c2819be8b514cb836399f5250754dae" [label=""];
  "sha256:8d9d30d4ca4b7508bc74e1ca491dbe051c2819be8b514cb836399f5250754dae" -> "sha256:bc8585a8b37489cef3161825dd2557efdb943600b645af75df0ca678a4fad95b" [label=""];
  "sha256:bc8585a8b37489cef3161825dd2557efdb943600b645af75df0ca678a4fad95b" -> "sha256:f72b6b30f36c085f5ac0019eb019797192643930d85d74a20c748e8802ac463a" [label=""];
  "sha256:4ebcd13cca73f50959361d422d5ff1d3f99a2893d67852f5d5430a8fe18c9263" -> "sha256:f72b6b30f36c085f5ac0019eb019797192643930d85d74a20c748e8802ac463a" [label=""];
  "sha256:f72b6b30f36c085f5ac0019eb019797192643930d85d74a20c748e8802ac463a" -> "sha256:9159d6ca18281f8c7396b5745ba20cc072619ce7b6996a5b5f21a9f75e1a09f4" [label=""];
  "sha256:9159d6ca18281f8c7396b5745ba20cc072619ce7b6996a5b5f21a9f75e1a09f4" -> "sha256:bf967750f33c1611ac2933664f644a9713515f136f6cbcb79b2f97c8577eefec" [label=""];
}

