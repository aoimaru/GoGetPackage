[app/sources/168708823.Dockerfile]
digraph {
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" [label="docker-image://docker.io/library/ubuntu:14.10" shape="ellipse"];
  "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:fb6678222e2ffe1e3e0ebc6d2a837cec1757068d8f2760d26f94e2835e01c288" [label="/bin/sh -c apt-get install -y python-pip" shape="box"];
  "sha256:f82ad6296e4940b492fde379d60c7996fc0b88aa726c5019b619cc4ad1ffd02d" [label="/bin/sh -c pip install mkdocs" shape="box"];
  "sha256:1915c6c973b58b74b8ea553aad5564d6e4353f383dbf14d1b23cf9f83e1c0969" [label="local://context" shape="ellipse"];
  "sha256:fabf9ddba2109b2a1578c727c82695747ec50ce283c1f549c7cc79592e03c6ae" [label="copy{src=/, dest=/docs}" shape="note"];
  "sha256:b7c53343f469113880274b888b8d3a8552feeaec3797c9e54ed8c520370ea003" [label="mkdir{path=/docs}" shape="note"];
  "sha256:56d43c8db6aefa6bcfa52de1792c6ce238302a6bbaa60de0053fdfc860337929" [label="sha256:56d43c8db6aefa6bcfa52de1792c6ce238302a6bbaa60de0053fdfc860337929" shape="plaintext"];
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" -> "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" [label=""];
  "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" -> "sha256:fb6678222e2ffe1e3e0ebc6d2a837cec1757068d8f2760d26f94e2835e01c288" [label=""];
  "sha256:fb6678222e2ffe1e3e0ebc6d2a837cec1757068d8f2760d26f94e2835e01c288" -> "sha256:f82ad6296e4940b492fde379d60c7996fc0b88aa726c5019b619cc4ad1ffd02d" [label=""];
  "sha256:f82ad6296e4940b492fde379d60c7996fc0b88aa726c5019b619cc4ad1ffd02d" -> "sha256:fabf9ddba2109b2a1578c727c82695747ec50ce283c1f549c7cc79592e03c6ae" [label=""];
  "sha256:1915c6c973b58b74b8ea553aad5564d6e4353f383dbf14d1b23cf9f83e1c0969" -> "sha256:fabf9ddba2109b2a1578c727c82695747ec50ce283c1f549c7cc79592e03c6ae" [label=""];
  "sha256:fabf9ddba2109b2a1578c727c82695747ec50ce283c1f549c7cc79592e03c6ae" -> "sha256:b7c53343f469113880274b888b8d3a8552feeaec3797c9e54ed8c520370ea003" [label=""];
  "sha256:b7c53343f469113880274b888b8d3a8552feeaec3797c9e54ed8c520370ea003" -> "sha256:56d43c8db6aefa6bcfa52de1792c6ce238302a6bbaa60de0053fdfc860337929" [label=""];
}

