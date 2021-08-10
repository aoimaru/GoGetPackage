[app/sources/302188105.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:37cdc8ad9c5adfdb586174a603b3a3c37db1a323986dc6642defd50045daa841" [label="/bin/sh -c apt-get update &&   apt-get install -y   vim   wget   curl   gettext   slay   python   python-pip   ant   ant-contrib   build-essential   git   maven   openjdk-8-jdk   ruby   net-tools   rsyslog   software-properties-common   npm" shape="box"];
  "sha256:9bacefeb69d432f6be5f4639557094559610f71c6754a89da1f525ec82c3fcbd" [label="/bin/sh -c npm install -g n &&     n latest" shape="box"];
  "sha256:ba43b92f4271724a8d69f205a5b2a89adf70d4537bf836fe38ddec5a3787415d" [label="/bin/sh -c npm install -g junit-merge" shape="box"];
  "sha256:44567254fbada6c248d22d70d3277723dcb97227d7f5b315547202de9275e1c2" [label="/bin/sh -c echo \"resolvconf resolvconf/linkify-resolvconf boolean false\" | debconf-set-selections" shape="box"];
  "sha256:aed3abaeae50ca247b0fc4d0e04110d8675a32f0133c388a46c8d19f25282479" [label="sha256:aed3abaeae50ca247b0fc4d0e04110d8675a32f0133c388a46c8d19f25282479" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:37cdc8ad9c5adfdb586174a603b3a3c37db1a323986dc6642defd50045daa841" [label=""];
  "sha256:37cdc8ad9c5adfdb586174a603b3a3c37db1a323986dc6642defd50045daa841" -> "sha256:9bacefeb69d432f6be5f4639557094559610f71c6754a89da1f525ec82c3fcbd" [label=""];
  "sha256:9bacefeb69d432f6be5f4639557094559610f71c6754a89da1f525ec82c3fcbd" -> "sha256:ba43b92f4271724a8d69f205a5b2a89adf70d4537bf836fe38ddec5a3787415d" [label=""];
  "sha256:ba43b92f4271724a8d69f205a5b2a89adf70d4537bf836fe38ddec5a3787415d" -> "sha256:44567254fbada6c248d22d70d3277723dcb97227d7f5b315547202de9275e1c2" [label=""];
  "sha256:44567254fbada6c248d22d70d3277723dcb97227d7f5b315547202de9275e1c2" -> "sha256:aed3abaeae50ca247b0fc4d0e04110d8675a32f0133c388a46c8d19f25282479" [label=""];
}

