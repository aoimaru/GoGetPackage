[app/sources/162437586.Dockerfile]
digraph {
  "sha256:710f734043e5079cbc7e7c9c9eb4f3e28c23a0019a861be48894f6f0a8482c8f" [label="docker-image://docker.io/library/node:0.12.6" shape="ellipse"];
  "sha256:a095d33b24bfb93281bc2fa974d78b04e34cdcdafd08c34da27eb9b0a4c22495" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:1d4e906579fe0357ca3c01308f6e4c3eb7fd4c18749134a17fb7e61835d6585b" [label="/bin/sh -c apt-get -qq upgrade" shape="box"];
  "sha256:b7092118bd3ff6e50c9a0c2fa9b4e28f23eb4140fb3d7e503c52e13d3a90a954" [label="/bin/sh -c apt-get -qq -y install inotify-tools" shape="box"];
  "sha256:9d1595c5ac22890aeb0ecb83775828377aaa17d828cfacd46ba2fdaaeff3cac7" [label="/bin/sh -c npm install -g rtail" shape="box"];
  "sha256:dd57c8b3a72d94c6f4980c715de77e1764c6bff5369022a7cb5c0ca17c095bcc" [label="local://context" shape="ellipse"];
  "sha256:a44ce07e49c6819f8e69b18b94eac982ebf1f1b04f4d40ffe9d5d4da3fffda34" [label="copy{src=/rtail-logs.sh, dest=/opt/rtail-logs.sh}" shape="note"];
  "sha256:d8fe2f09e26e8425cbb147f2877c6b21e0070f7f5c96b605b0baefc954eff1a9" [label="/bin/sh -c chmod +x /opt/rtail-logs.sh" shape="box"];
  "sha256:79d4423cbe6c3e7bf6c868a235b37290f319356ff42831cd73145a7c20a6cf3d" [label="mkdir{path=/logs}" shape="note"];
  "sha256:2052f2a56d1bb183fe431ad83de855816d216384baddecceaba94b25fc55d804" [label="sha256:2052f2a56d1bb183fe431ad83de855816d216384baddecceaba94b25fc55d804" shape="plaintext"];
  "sha256:710f734043e5079cbc7e7c9c9eb4f3e28c23a0019a861be48894f6f0a8482c8f" -> "sha256:a095d33b24bfb93281bc2fa974d78b04e34cdcdafd08c34da27eb9b0a4c22495" [label=""];
  "sha256:a095d33b24bfb93281bc2fa974d78b04e34cdcdafd08c34da27eb9b0a4c22495" -> "sha256:1d4e906579fe0357ca3c01308f6e4c3eb7fd4c18749134a17fb7e61835d6585b" [label=""];
  "sha256:1d4e906579fe0357ca3c01308f6e4c3eb7fd4c18749134a17fb7e61835d6585b" -> "sha256:b7092118bd3ff6e50c9a0c2fa9b4e28f23eb4140fb3d7e503c52e13d3a90a954" [label=""];
  "sha256:b7092118bd3ff6e50c9a0c2fa9b4e28f23eb4140fb3d7e503c52e13d3a90a954" -> "sha256:9d1595c5ac22890aeb0ecb83775828377aaa17d828cfacd46ba2fdaaeff3cac7" [label=""];
  "sha256:9d1595c5ac22890aeb0ecb83775828377aaa17d828cfacd46ba2fdaaeff3cac7" -> "sha256:a44ce07e49c6819f8e69b18b94eac982ebf1f1b04f4d40ffe9d5d4da3fffda34" [label=""];
  "sha256:dd57c8b3a72d94c6f4980c715de77e1764c6bff5369022a7cb5c0ca17c095bcc" -> "sha256:a44ce07e49c6819f8e69b18b94eac982ebf1f1b04f4d40ffe9d5d4da3fffda34" [label=""];
  "sha256:a44ce07e49c6819f8e69b18b94eac982ebf1f1b04f4d40ffe9d5d4da3fffda34" -> "sha256:d8fe2f09e26e8425cbb147f2877c6b21e0070f7f5c96b605b0baefc954eff1a9" [label=""];
  "sha256:d8fe2f09e26e8425cbb147f2877c6b21e0070f7f5c96b605b0baefc954eff1a9" -> "sha256:79d4423cbe6c3e7bf6c868a235b37290f319356ff42831cd73145a7c20a6cf3d" [label=""];
  "sha256:79d4423cbe6c3e7bf6c868a235b37290f319356ff42831cd73145a7c20a6cf3d" -> "sha256:2052f2a56d1bb183fe431ad83de855816d216384baddecceaba94b25fc55d804" [label=""];
}

