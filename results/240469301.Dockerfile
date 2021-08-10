[app/sources/240469301.Dockerfile]
digraph {
  "sha256:2306055ecbf18177c256e331b9c203bd0d164e5ff139a71eb085ff1b25717ce2" [label="docker-image://docker.io/bigtruedata/scala:2.12.0" shape="ellipse"];
  "sha256:18d43cea75d62b689573c88cead62350bfb79af271b7be83c069c8585bf0575f" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.1/sbt-1.0.1.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:9b7e00e7f3ed0e0374be70fbee1667ae653b5506f9e84e5228100909aa44fdce" [label="mkdir{path=/app}" shape="note"];
  "sha256:075bcac61a1caab511c94436cde06cb79467ebf430cf629b9f82a9feaa494cde" [label="sha256:075bcac61a1caab511c94436cde06cb79467ebf430cf629b9f82a9feaa494cde" shape="plaintext"];
  "sha256:2306055ecbf18177c256e331b9c203bd0d164e5ff139a71eb085ff1b25717ce2" -> "sha256:18d43cea75d62b689573c88cead62350bfb79af271b7be83c069c8585bf0575f" [label=""];
  "sha256:18d43cea75d62b689573c88cead62350bfb79af271b7be83c069c8585bf0575f" -> "sha256:9b7e00e7f3ed0e0374be70fbee1667ae653b5506f9e84e5228100909aa44fdce" [label=""];
  "sha256:9b7e00e7f3ed0e0374be70fbee1667ae653b5506f9e84e5228100909aa44fdce" -> "sha256:075bcac61a1caab511c94436cde06cb79467ebf430cf629b9f82a9feaa494cde" [label=""];
}

