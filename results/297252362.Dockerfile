[app/sources/297252362.Dockerfile]
digraph {
  "sha256:4bf939d74e38c66427008512c9537c04aac5a09df1e8ee7df8c480d0482c1d11" [label="local://context" shape="ellipse"];
  "sha256:3f5299b92742ef42fe3aac433206325bb4576c882545eb22cd8f5996b36716df" [label="docker-image://docker.io/library/python:3.6.1-slim" shape="ellipse"];
  "sha256:c1e968afffb175df54f155fb2b65731e495b0f0b2a4134531feb1ae9025daf08" [label="/bin/sh -c groupadd user && useradd --create-home --home-dir /home/user -g user user" shape="box"];
  "sha256:e4116876c8b6e6984a4c50e83132ff7e83071b4dd56fe5b240920ae2dfaa3c9c" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:d8e8b6260c39bbe33543beceb5467680009803988c437cec1817e043ef7bcb2d" [label="copy{src=/config, dest=/home/user/config}" shape="note"];
  "sha256:e3dcf8595467109a47b11e7bdca4aa582ca64fa3652ff606c5bc515554a4e4ab" [label="copy{src=/common/requirements.txt, dest=/home/user/}" shape="note"];
  "sha256:51b8bed809924da9e98801052b15a8c5f71bd4eac13885e30bde8e997e55c02e" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:93d5fc8a9f6a10d5479b323b193f3cd79bbaea5dec1cd36a5889e74e9383762d" [label="copy{src=/common, dest=/home/user/}" shape="note"];
  "sha256:b35c9f941d7b7ac7a55586d5465932ea7ed95af8ef05bdfdab33143981a49b43" [label="sha256:b35c9f941d7b7ac7a55586d5465932ea7ed95af8ef05bdfdab33143981a49b43" shape="plaintext"];
  "sha256:3f5299b92742ef42fe3aac433206325bb4576c882545eb22cd8f5996b36716df" -> "sha256:c1e968afffb175df54f155fb2b65731e495b0f0b2a4134531feb1ae9025daf08" [label=""];
  "sha256:c1e968afffb175df54f155fb2b65731e495b0f0b2a4134531feb1ae9025daf08" -> "sha256:e4116876c8b6e6984a4c50e83132ff7e83071b4dd56fe5b240920ae2dfaa3c9c" [label=""];
  "sha256:e4116876c8b6e6984a4c50e83132ff7e83071b4dd56fe5b240920ae2dfaa3c9c" -> "sha256:d8e8b6260c39bbe33543beceb5467680009803988c437cec1817e043ef7bcb2d" [label=""];
  "sha256:4bf939d74e38c66427008512c9537c04aac5a09df1e8ee7df8c480d0482c1d11" -> "sha256:d8e8b6260c39bbe33543beceb5467680009803988c437cec1817e043ef7bcb2d" [label=""];
  "sha256:d8e8b6260c39bbe33543beceb5467680009803988c437cec1817e043ef7bcb2d" -> "sha256:e3dcf8595467109a47b11e7bdca4aa582ca64fa3652ff606c5bc515554a4e4ab" [label=""];
  "sha256:4bf939d74e38c66427008512c9537c04aac5a09df1e8ee7df8c480d0482c1d11" -> "sha256:e3dcf8595467109a47b11e7bdca4aa582ca64fa3652ff606c5bc515554a4e4ab" [label=""];
  "sha256:e3dcf8595467109a47b11e7bdca4aa582ca64fa3652ff606c5bc515554a4e4ab" -> "sha256:51b8bed809924da9e98801052b15a8c5f71bd4eac13885e30bde8e997e55c02e" [label=""];
  "sha256:51b8bed809924da9e98801052b15a8c5f71bd4eac13885e30bde8e997e55c02e" -> "sha256:93d5fc8a9f6a10d5479b323b193f3cd79bbaea5dec1cd36a5889e74e9383762d" [label=""];
  "sha256:4bf939d74e38c66427008512c9537c04aac5a09df1e8ee7df8c480d0482c1d11" -> "sha256:93d5fc8a9f6a10d5479b323b193f3cd79bbaea5dec1cd36a5889e74e9383762d" [label=""];
  "sha256:93d5fc8a9f6a10d5479b323b193f3cd79bbaea5dec1cd36a5889e74e9383762d" -> "sha256:b35c9f941d7b7ac7a55586d5465932ea7ed95af8ef05bdfdab33143981a49b43" [label=""];
}

