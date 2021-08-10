[app/sources/345356239.Dockerfile]
digraph {
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" [label="docker-image://docker.io/balenalib/armv7hf-debian:buster-build" shape="ellipse"];
  "sha256:295866f39c17e61e45583568f26b06c6e8f36aa30e7d03dee4806da360e8d44b" [label="/bin/sh -c echo \"deb [arch=armhf] http://repos.rcn-ee.net/debian/ buster main\" >> /etc/apt/sources.list \t&& apt-key adv --batch --keyserver keyserver.ubuntu.com --recv-key D284E608A4C46402" shape="box"];
  "sha256:1f535a9dea1dad127afc94c9136b52d132c1b5219764d647e645936045092104" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b620d1ec8f45943914e50c6fe12c3a4231a38fb114155163d4ab1258093d0a0" [label="sha256:0b620d1ec8f45943914e50c6fe12c3a4231a38fb114155163d4ab1258093d0a0" shape="plaintext"];
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" -> "sha256:295866f39c17e61e45583568f26b06c6e8f36aa30e7d03dee4806da360e8d44b" [label=""];
  "sha256:295866f39c17e61e45583568f26b06c6e8f36aa30e7d03dee4806da360e8d44b" -> "sha256:1f535a9dea1dad127afc94c9136b52d132c1b5219764d647e645936045092104" [label=""];
  "sha256:1f535a9dea1dad127afc94c9136b52d132c1b5219764d647e645936045092104" -> "sha256:0b620d1ec8f45943914e50c6fe12c3a4231a38fb114155163d4ab1258093d0a0" [label=""];
}

