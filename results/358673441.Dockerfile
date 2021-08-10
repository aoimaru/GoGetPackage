[app/sources/358673441.Dockerfile]
digraph {
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports@sha256:ecc39151f520562e2762577114e70c1801e7e3c066ca12dd9a46573020977338" shape="ellipse"];
  "sha256:13ae2b2984314f3792ac39cd2755d671edb32f4a58fcf16009e4aaf5ad3539a2" [label="/bin/sh -c apt-get update && apt-get install -y mobyle-programs && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:ebb44685e4eb9312bbfa37061ae98dd28aa414a9cef18bbc45096b7f0e6d1656" [label="sha256:ebb44685e4eb9312bbfa37061ae98dd28aa414a9cef18bbc45096b7f0e6d1656" shape="plaintext"];
  "sha256:0182cb2d194b1a051116f1ce353a86b0bb684d4291739b5816d50fb5db10ae23" -> "sha256:13ae2b2984314f3792ac39cd2755d671edb32f4a58fcf16009e4aaf5ad3539a2" [label=""];
  "sha256:13ae2b2984314f3792ac39cd2755d671edb32f4a58fcf16009e4aaf5ad3539a2" -> "sha256:ebb44685e4eb9312bbfa37061ae98dd28aa414a9cef18bbc45096b7f0e6d1656" [label=""];
}

