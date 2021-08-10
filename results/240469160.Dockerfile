[app/sources/240469160.Dockerfile]
digraph {
  "sha256:2f5adedf49e5455e480f56bdeb39ca053feb9818adc2d154cf0652b84cc966a9" [label="docker-image://docker.io/bigtruedata/scala:2.10.4" shape="ellipse"];
  "sha256:973b9b5022bd1f30db34ed3e30dd787bcd49edaec10241558f964a9e2e8708a9" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v0.13.15/sbt-0.13.15.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:161fc206c11643572d9826c0194c6ed5e75aba1a0d9490f65588ef8698bb2553" [label="mkdir{path=/app}" shape="note"];
  "sha256:96ace03f4e528e027ade0682284c249ad2fa2a6bb3ffecdfa346444158e17dbd" [label="sha256:96ace03f4e528e027ade0682284c249ad2fa2a6bb3ffecdfa346444158e17dbd" shape="plaintext"];
  "sha256:2f5adedf49e5455e480f56bdeb39ca053feb9818adc2d154cf0652b84cc966a9" -> "sha256:973b9b5022bd1f30db34ed3e30dd787bcd49edaec10241558f964a9e2e8708a9" [label=""];
  "sha256:973b9b5022bd1f30db34ed3e30dd787bcd49edaec10241558f964a9e2e8708a9" -> "sha256:161fc206c11643572d9826c0194c6ed5e75aba1a0d9490f65588ef8698bb2553" [label=""];
  "sha256:161fc206c11643572d9826c0194c6ed5e75aba1a0d9490f65588ef8698bb2553" -> "sha256:96ace03f4e528e027ade0682284c249ad2fa2a6bb3ffecdfa346444158e17dbd" [label=""];
}

