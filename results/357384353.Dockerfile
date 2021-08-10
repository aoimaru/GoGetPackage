[app/sources/357384353.Dockerfile]
digraph {
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" [label="docker-image://docker.io/library/fedora:22" shape="ellipse"];
  "sha256:8c226778faa03e5725bde5623bd82f6ee2dcbbc5b1f07649955f14b35cb977bd" [label="/bin/sh -c dnf --enablerepo=updates-testing -y install firefox && rm -rf /var/cache/dnf" shape="box"];
  "sha256:cee161dc00773a807def38e0418d31d97c4171784ac55522495819141cbcf45e" [label="sha256:cee161dc00773a807def38e0418d31d97c4171784ac55522495819141cbcf45e" shape="plaintext"];
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" -> "sha256:8c226778faa03e5725bde5623bd82f6ee2dcbbc5b1f07649955f14b35cb977bd" [label=""];
  "sha256:8c226778faa03e5725bde5623bd82f6ee2dcbbc5b1f07649955f14b35cb977bd" -> "sha256:cee161dc00773a807def38e0418d31d97c4171784ac55522495819141cbcf45e" [label=""];
}

