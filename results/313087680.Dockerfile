[app/sources/313087680.Dockerfile]
digraph {
  "sha256:bfd53f33be2edaa8d249f8c32a70261ff03ce7a65413035502e8efe95bc74077" [label="docker-image://docker.io/livingobjects/jre8:latest" shape="ellipse"];
  "sha256:2465acb5546a2fd0752e62892d5ccffb1a265ac8fe34551e715cda290ff20c78" [label="local://context" shape="ellipse"];
  "sha256:9f55cd88f4cdf53149ad4d837a57ea0aa07c5739634c474176199e2dd2599ca1" [label="copy{src=/main-data-provider-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:7e323ed1f9ef982016537688313b7a0d59ac6670cedd3c0f5d81226f0585fb9e" [label="copy{src=/wait-for-it.sh, dest=/wait-for-it.sh}" shape="note"];
  "sha256:294a2b3ae9a342b5c6f251c55ca81e21e6518305dcd8aebadb39463ae3a852e5" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:fec3ce988e4bbe17fb6b4a38cc450f6fb1d3f99246268585776f1b3b07323a64" [label="/bin/sh -c chmod +x /wait-for-it.sh" shape="box"];
  "sha256:9afbb03caef7b1c49e3c28b4d693050d73dbfc46034dee24618d885d1500d85f" [label="sha256:9afbb03caef7b1c49e3c28b4d693050d73dbfc46034dee24618d885d1500d85f" shape="plaintext"];
  "sha256:bfd53f33be2edaa8d249f8c32a70261ff03ce7a65413035502e8efe95bc74077" -> "sha256:9f55cd88f4cdf53149ad4d837a57ea0aa07c5739634c474176199e2dd2599ca1" [label=""];
  "sha256:2465acb5546a2fd0752e62892d5ccffb1a265ac8fe34551e715cda290ff20c78" -> "sha256:9f55cd88f4cdf53149ad4d837a57ea0aa07c5739634c474176199e2dd2599ca1" [label=""];
  "sha256:9f55cd88f4cdf53149ad4d837a57ea0aa07c5739634c474176199e2dd2599ca1" -> "sha256:7e323ed1f9ef982016537688313b7a0d59ac6670cedd3c0f5d81226f0585fb9e" [label=""];
  "sha256:2465acb5546a2fd0752e62892d5ccffb1a265ac8fe34551e715cda290ff20c78" -> "sha256:7e323ed1f9ef982016537688313b7a0d59ac6670cedd3c0f5d81226f0585fb9e" [label=""];
  "sha256:7e323ed1f9ef982016537688313b7a0d59ac6670cedd3c0f5d81226f0585fb9e" -> "sha256:294a2b3ae9a342b5c6f251c55ca81e21e6518305dcd8aebadb39463ae3a852e5" [label=""];
  "sha256:294a2b3ae9a342b5c6f251c55ca81e21e6518305dcd8aebadb39463ae3a852e5" -> "sha256:fec3ce988e4bbe17fb6b4a38cc450f6fb1d3f99246268585776f1b3b07323a64" [label=""];
  "sha256:fec3ce988e4bbe17fb6b4a38cc450f6fb1d3f99246268585776f1b3b07323a64" -> "sha256:9afbb03caef7b1c49e3c28b4d693050d73dbfc46034dee24618d885d1500d85f" [label=""];
}

