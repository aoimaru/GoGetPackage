[app/sources/292825861.Dockerfile]
digraph {
  "sha256:4ad26869a4d42bb232d9ea03e8a421abbae03a7db48ab81f5b106fd87cacc47d" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:5ce416415b974e2031104bf528610dfb580d3be2f81163792fb596c1da371afb" [label="/bin/sh -c apt-get update && apt-get install -y python" shape="box"];
  "sha256:55fff13bc64674c4aca2b0b5bcdec4f6802ad6d25e07caf36af09246b2df4a05" [label="copy{src=/twitter_ethereumproof.py, dest=/twitter_ethereumproof.py}" shape="note"];
  "sha256:c540784d743a2f2089ba60fdc05d43765535d3c4ccfb0b1e612eeb0a09a71f3c" [label="sha256:c540784d743a2f2089ba60fdc05d43765535d3c4ccfb0b1e612eeb0a09a71f3c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5ce416415b974e2031104bf528610dfb580d3be2f81163792fb596c1da371afb" [label=""];
  "sha256:5ce416415b974e2031104bf528610dfb580d3be2f81163792fb596c1da371afb" -> "sha256:55fff13bc64674c4aca2b0b5bcdec4f6802ad6d25e07caf36af09246b2df4a05" [label=""];
  "sha256:4ad26869a4d42bb232d9ea03e8a421abbae03a7db48ab81f5b106fd87cacc47d" -> "sha256:55fff13bc64674c4aca2b0b5bcdec4f6802ad6d25e07caf36af09246b2df4a05" [label=""];
  "sha256:55fff13bc64674c4aca2b0b5bcdec4f6802ad6d25e07caf36af09246b2df4a05" -> "sha256:c540784d743a2f2089ba60fdc05d43765535d3c4ccfb0b1e612eeb0a09a71f3c" [label=""];
}

