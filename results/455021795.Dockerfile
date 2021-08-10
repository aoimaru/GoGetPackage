[app/sources/455021795.Dockerfile]
digraph {
  "sha256:80077788514c5437a40bb441c687b7c36ce41de187a4ed0729a0f55818db2797" [label="local://context" shape="ellipse"];
  "sha256:a399f6e23f5718dd23b338bae2d30f075641e8d8ec01fdbcb1e697cab6a67107" [label="docker-image://docker.io/pingcap/tikv:pre-ga" shape="ellipse"];
  "sha256:12ab3e1a86bfea3e33ad499923c0d46007cf863eadd0d3e37dfab82a9985af37" [label="copy{src=/config-latest.toml, dest=/etc/tikv/config.toml}" shape="note"];
  "sha256:78dcf935e33018486114865c012b26951e09b51a867869b4dcb9c09bae0013d0" [label="copy{src=/bin/mountpath, dest=/usr/local/bin/}" shape="note"];
  "sha256:7441ee012bb31a0de131f724268beb187d45c8cdc39802e88ffbff1b94c05c5e" [label="sha256:7441ee012bb31a0de131f724268beb187d45c8cdc39802e88ffbff1b94c05c5e" shape="plaintext"];
  "sha256:a399f6e23f5718dd23b338bae2d30f075641e8d8ec01fdbcb1e697cab6a67107" -> "sha256:12ab3e1a86bfea3e33ad499923c0d46007cf863eadd0d3e37dfab82a9985af37" [label=""];
  "sha256:80077788514c5437a40bb441c687b7c36ce41de187a4ed0729a0f55818db2797" -> "sha256:12ab3e1a86bfea3e33ad499923c0d46007cf863eadd0d3e37dfab82a9985af37" [label=""];
  "sha256:12ab3e1a86bfea3e33ad499923c0d46007cf863eadd0d3e37dfab82a9985af37" -> "sha256:78dcf935e33018486114865c012b26951e09b51a867869b4dcb9c09bae0013d0" [label=""];
  "sha256:80077788514c5437a40bb441c687b7c36ce41de187a4ed0729a0f55818db2797" -> "sha256:78dcf935e33018486114865c012b26951e09b51a867869b4dcb9c09bae0013d0" [label=""];
  "sha256:78dcf935e33018486114865c012b26951e09b51a867869b4dcb9c09bae0013d0" -> "sha256:7441ee012bb31a0de131f724268beb187d45c8cdc39802e88ffbff1b94c05c5e" [label=""];
}

