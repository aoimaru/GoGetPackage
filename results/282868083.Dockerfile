[app/sources/282868083.Dockerfile]
digraph {
  "sha256:c3f2ed24716717101faa280e367891283218b50712a1887103edce860ab0d1f2" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   g++-powerpc-linux-gnuspe   libssl-dev   pkg-config" shape="box"];
  "sha256:c4fac3eb3788adf8db1496f14dc50295f7700dd3408810b7483b74e5a5862198" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:b71e74fda5a04fd778422b3ccd3b8a15c8810dc655145e0f1d0422962d9c1222" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:d3b36aa2c0306ec2d3aca4963838fabff2c6597513a8c425326104b619382e8a" [label="sha256:d3b36aa2c0306ec2d3aca4963838fabff2c6597513a8c425326104b619382e8a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" [label=""];
  "sha256:f30c2b1921904496681b055812ba389a49c19c4e37a85143dd9e8ccb15a96610" -> "sha256:c4fac3eb3788adf8db1496f14dc50295f7700dd3408810b7483b74e5a5862198" [label=""];
  "sha256:c3f2ed24716717101faa280e367891283218b50712a1887103edce860ab0d1f2" -> "sha256:c4fac3eb3788adf8db1496f14dc50295f7700dd3408810b7483b74e5a5862198" [label=""];
  "sha256:c4fac3eb3788adf8db1496f14dc50295f7700dd3408810b7483b74e5a5862198" -> "sha256:b71e74fda5a04fd778422b3ccd3b8a15c8810dc655145e0f1d0422962d9c1222" [label=""];
  "sha256:b71e74fda5a04fd778422b3ccd3b8a15c8810dc655145e0f1d0422962d9c1222" -> "sha256:d3b36aa2c0306ec2d3aca4963838fabff2c6597513a8c425326104b619382e8a" [label=""];
}

