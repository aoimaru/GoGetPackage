[app/sources/252798844.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:36445b4dfd8816f3c25f199dfd6ca54577916a0ab65a21ed5b0d85301c0df3de" [label="/bin/sh -c apt-get -qq update -y && apt-get -qq install -y apt-offline && apt-get -qq install -y python python-apt python-dev python-pip && apt-get -qq clean -y && apt-get -qq purge -y && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*" shape="box"];
  "sha256:2389f098388ffd2da532d1f42eb4f5bf3196c1d38c1885260626b9a902d79029" [label="mkdir{path=/root}" shape="note"];
  "sha256:b99efee25deeb03957e0188c81e843677c526785c7d379e2a15fd67187a8e197" [label="sha256:b99efee25deeb03957e0188c81e843677c526785c7d379e2a15fd67187a8e197" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:36445b4dfd8816f3c25f199dfd6ca54577916a0ab65a21ed5b0d85301c0df3de" [label=""];
  "sha256:36445b4dfd8816f3c25f199dfd6ca54577916a0ab65a21ed5b0d85301c0df3de" -> "sha256:2389f098388ffd2da532d1f42eb4f5bf3196c1d38c1885260626b9a902d79029" [label=""];
  "sha256:2389f098388ffd2da532d1f42eb4f5bf3196c1d38c1885260626b9a902d79029" -> "sha256:b99efee25deeb03957e0188c81e843677c526785c7d379e2a15fd67187a8e197" [label=""];
}

