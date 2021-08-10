[app/sources/205926339.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" [label="docker-image://docker.io/vitess/base@sha256:f9b23583904123c0b07a9ee3cd94ef46f59b6b244b05d9cd177b3e911bc07b10" shape="ellipse"];
  "sha256:29211202dbe8c746ab76434346a4d1dcf6f5db3ac296a9fa3935598f15e8f2a6" [label="copy{src=/vt/bin/vtctlclient, dest=/usr/bin/}" shape="note"];
  "sha256:f42762d6fce268e7ed27928a9e73a6f055482eaa35045aa4ee888712dafcc4fa" [label="sha256:f42762d6fce268e7ed27928a9e73a6f055482eaa35045aa4ee888712dafcc4fa" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:29211202dbe8c746ab76434346a4d1dcf6f5db3ac296a9fa3935598f15e8f2a6" [label=""];
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" -> "sha256:29211202dbe8c746ab76434346a4d1dcf6f5db3ac296a9fa3935598f15e8f2a6" [label=""];
  "sha256:29211202dbe8c746ab76434346a4d1dcf6f5db3ac296a9fa3935598f15e8f2a6" -> "sha256:f42762d6fce268e7ed27928a9e73a6f055482eaa35045aa4ee888712dafcc4fa" [label=""];
}

