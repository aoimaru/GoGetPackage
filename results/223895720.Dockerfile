[app/sources/223895720.Dockerfile]
digraph {
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:de270b33efb33f7f38b4d17f5b71ca8765b698151814ca88f8c6634796050523" [label="local://context" shape="ellipse"];
  "sha256:7c5407bb31386161d627bb5e3da13524bce0cb3c4793086d0e88ae99bc51d19f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:fc309cda07f883c1ba71ec3827a922e31b0627cdf60a9f261e42dda49eedf74b" [label="mkdir{path=/app}" shape="note"];
  "sha256:9ac909a9f7022d5ea98ae103555fa504ecc71d5a5c7e853f109bf93989caab9b" [label="/bin/sh -c export http_proxy=http://proxy.esl.cisco.com:80/   && export https_proxy=http://proxy.esl.cisco.com:80/   && apk add -U         ca-certificates curl tzdata   && rm -rf /var/cache/apk/*   && cp /usr/share/zoneinfo/Europe/Paris /etc/localtime   && pip install --no-cache-dir --requirement ./requirements.txt" shape="box"];
  "sha256:818e2a2185cecb993f1f8c240d83e841f0907a786439629e18f37bd98ed572c6" [label="sha256:818e2a2185cecb993f1f8c240d83e841f0907a786439629e18f37bd98ed572c6" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:7c5407bb31386161d627bb5e3da13524bce0cb3c4793086d0e88ae99bc51d19f" [label=""];
  "sha256:de270b33efb33f7f38b4d17f5b71ca8765b698151814ca88f8c6634796050523" -> "sha256:7c5407bb31386161d627bb5e3da13524bce0cb3c4793086d0e88ae99bc51d19f" [label=""];
  "sha256:7c5407bb31386161d627bb5e3da13524bce0cb3c4793086d0e88ae99bc51d19f" -> "sha256:fc309cda07f883c1ba71ec3827a922e31b0627cdf60a9f261e42dda49eedf74b" [label=""];
  "sha256:fc309cda07f883c1ba71ec3827a922e31b0627cdf60a9f261e42dda49eedf74b" -> "sha256:9ac909a9f7022d5ea98ae103555fa504ecc71d5a5c7e853f109bf93989caab9b" [label=""];
  "sha256:9ac909a9f7022d5ea98ae103555fa504ecc71d5a5c7e853f109bf93989caab9b" -> "sha256:818e2a2185cecb993f1f8c240d83e841f0907a786439629e18f37bd98ed572c6" [label=""];
}

