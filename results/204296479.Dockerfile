[app/sources/204296479.Dockerfile]
digraph {
  "sha256:510b7eeedb0420670485f108033b7feb94e270bbd619ca462129c612eef0d177" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:630b1d02fded0cb94447772a2870673d8bbaf8af74d0395b82d3cee7f436c87e" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:be3ae0d4d7c08b4e1a8a89034e44931ffc0fa638bb90c7cc83fed405c049cdb5" [label="/bin/sh -c apt-get -qq install locales krb5-kdc krb5-admin-server" shape="box"];
  "sha256:39e729da1870a2a77ae3efe7a68f6a89ded3b6f04659814187b7f81d768a8337" [label="/bin/sh -c apt-get -qq clean" shape="box"];
  "sha256:7fc5f9e980ea8f671f27784f01299e1f657af5772d044f86cf412ea536e5888b" [label="/bin/sh -c locale-gen \"en_US.UTF-8\"" shape="box"];
  "sha256:bc3c5ed6b108bbd44ad6fd9cb70f5bf63a31d30d10455ba1644947765406b46e" [label="/bin/sh -c echo \"LC_ALL=\\\"en_US.UTF-8\\\"\" >> /etc/default/locale" shape="box"];
  "sha256:a2a2bcd2f8d7f67518a174aafb6b0c195bdd49704cd068013ca35ab7fee8d88a" [label="copy{src=/init-script.sh, dest=/tmp/}" shape="note"];
  "sha256:901c45532f0b2351fe1008c151d504f8b4917024dd086a4cc099cee72416c36d" [label="sha256:901c45532f0b2351fe1008c151d504f8b4917024dd086a4cc099cee72416c36d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:630b1d02fded0cb94447772a2870673d8bbaf8af74d0395b82d3cee7f436c87e" [label=""];
  "sha256:630b1d02fded0cb94447772a2870673d8bbaf8af74d0395b82d3cee7f436c87e" -> "sha256:be3ae0d4d7c08b4e1a8a89034e44931ffc0fa638bb90c7cc83fed405c049cdb5" [label=""];
  "sha256:be3ae0d4d7c08b4e1a8a89034e44931ffc0fa638bb90c7cc83fed405c049cdb5" -> "sha256:39e729da1870a2a77ae3efe7a68f6a89ded3b6f04659814187b7f81d768a8337" [label=""];
  "sha256:39e729da1870a2a77ae3efe7a68f6a89ded3b6f04659814187b7f81d768a8337" -> "sha256:7fc5f9e980ea8f671f27784f01299e1f657af5772d044f86cf412ea536e5888b" [label=""];
  "sha256:7fc5f9e980ea8f671f27784f01299e1f657af5772d044f86cf412ea536e5888b" -> "sha256:bc3c5ed6b108bbd44ad6fd9cb70f5bf63a31d30d10455ba1644947765406b46e" [label=""];
  "sha256:bc3c5ed6b108bbd44ad6fd9cb70f5bf63a31d30d10455ba1644947765406b46e" -> "sha256:a2a2bcd2f8d7f67518a174aafb6b0c195bdd49704cd068013ca35ab7fee8d88a" [label=""];
  "sha256:510b7eeedb0420670485f108033b7feb94e270bbd619ca462129c612eef0d177" -> "sha256:a2a2bcd2f8d7f67518a174aafb6b0c195bdd49704cd068013ca35ab7fee8d88a" [label=""];
  "sha256:a2a2bcd2f8d7f67518a174aafb6b0c195bdd49704cd068013ca35ab7fee8d88a" -> "sha256:901c45532f0b2351fe1008c151d504f8b4917024dd086a4cc099cee72416c36d" [label=""];
}

