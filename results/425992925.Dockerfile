[app/sources/425992925.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:dbcee2495b8021f1c52713454cfcbbf1d7ccbedc464f1f75f8bcdd45260f4b13" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends       build-essential       ccache       cmake       file       gettext       git       libcurl4-openssl-dev       liblua5.3-dev       libwxgtk-webview3.0-dev       lsb-release       pkg-config       rapidjson-dev  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2ca07c15836a925665afccd398c27909542bb5dba0c99dcdcbd262ccdfdc9e91" [label="sha256:2ca07c15836a925665afccd398c27909542bb5dba0c99dcdcbd262ccdfdc9e91" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:dbcee2495b8021f1c52713454cfcbbf1d7ccbedc464f1f75f8bcdd45260f4b13" [label=""];
  "sha256:dbcee2495b8021f1c52713454cfcbbf1d7ccbedc464f1f75f8bcdd45260f4b13" -> "sha256:2ca07c15836a925665afccd398c27909542bb5dba0c99dcdcbd262ccdfdc9e91" [label=""];
}

