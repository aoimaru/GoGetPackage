[app/sources/310982983.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:6218f1ff451cdfc934d0fd7679bc4c00171aa7956b4738d6bdda527796b58f22" [label="local://context" shape="ellipse"];
  "sha256:2fe9c61709123463f0aeb38241aa089ef5a2cbe29b40018d6b7f66dca3826f1f" [label="copy{src=/install.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:32e8ae114c9031241a0fe6afc9ca53f5b6ebaa5757ecd7c925dd1c377f9ee7cd" [label="/bin/sh -c /usr/local/bin/install.sh" shape="box"];
  "sha256:080502099cb2a878084c4732ebe47457e0cfff92be3b37aec5384b3318523347" [label="copy{src=/init.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:96666ef58f594969ef89a90bb5b205464466dc347d9c5f2f53c9a27509d71454" [label="copy{src=/index.html, dest=/tmp/}" shape="note"];
  "sha256:631c7b83cf71bde1a0bca209328873d70ba72d473fbac8349f543fa8c29e93aa" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:53e4d400a5e8528bc262651df4d76521829b864f4df94552bdc3a2f023f01f8d" [label="sha256:53e4d400a5e8528bc262651df4d76521829b864f4df94552bdc3a2f023f01f8d" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:2fe9c61709123463f0aeb38241aa089ef5a2cbe29b40018d6b7f66dca3826f1f" [label=""];
  "sha256:6218f1ff451cdfc934d0fd7679bc4c00171aa7956b4738d6bdda527796b58f22" -> "sha256:2fe9c61709123463f0aeb38241aa089ef5a2cbe29b40018d6b7f66dca3826f1f" [label=""];
  "sha256:2fe9c61709123463f0aeb38241aa089ef5a2cbe29b40018d6b7f66dca3826f1f" -> "sha256:32e8ae114c9031241a0fe6afc9ca53f5b6ebaa5757ecd7c925dd1c377f9ee7cd" [label=""];
  "sha256:32e8ae114c9031241a0fe6afc9ca53f5b6ebaa5757ecd7c925dd1c377f9ee7cd" -> "sha256:080502099cb2a878084c4732ebe47457e0cfff92be3b37aec5384b3318523347" [label=""];
  "sha256:6218f1ff451cdfc934d0fd7679bc4c00171aa7956b4738d6bdda527796b58f22" -> "sha256:080502099cb2a878084c4732ebe47457e0cfff92be3b37aec5384b3318523347" [label=""];
  "sha256:080502099cb2a878084c4732ebe47457e0cfff92be3b37aec5384b3318523347" -> "sha256:96666ef58f594969ef89a90bb5b205464466dc347d9c5f2f53c9a27509d71454" [label=""];
  "sha256:6218f1ff451cdfc934d0fd7679bc4c00171aa7956b4738d6bdda527796b58f22" -> "sha256:96666ef58f594969ef89a90bb5b205464466dc347d9c5f2f53c9a27509d71454" [label=""];
  "sha256:96666ef58f594969ef89a90bb5b205464466dc347d9c5f2f53c9a27509d71454" -> "sha256:631c7b83cf71bde1a0bca209328873d70ba72d473fbac8349f543fa8c29e93aa" [label=""];
  "sha256:631c7b83cf71bde1a0bca209328873d70ba72d473fbac8349f543fa8c29e93aa" -> "sha256:53e4d400a5e8528bc262651df4d76521829b864f4df94552bdc3a2f023f01f8d" [label=""];
}
