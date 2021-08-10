[app/sources/295423319.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:6a6562941522b2294a94f226696eac1c614c0ebd3ab3e0ebc93081bb19a8e562" [label="/bin/sh -c apt-get update -y && apt-get install --no-install-recommends -y -q build-essential ca-certificates" shape="box"];
  "sha256:c5dbc8c05978f783515fec79556b1c3628c0854cdf78d60c73ab8a12d005f6db" [label="mkdir{path=/cj}" shape="note"];
  "sha256:953f0934fc5a50d41bf7b81d1bcef2dd8ddd52708a95b5690371a459e9563553" [label="local://context" shape="ellipse"];
  "sha256:87ab75934156782d7dfc1c39cd2938e3b8777a9ef48f7f073d126637b0286e83" [label="copy{src=/, dest=/cj/}" shape="note"];
  "sha256:065e3a513c609fd4ad82fad766ac64698bec3853ba5fcb2e1717581c5ea85e71" [label="/bin/sh -c make static" shape="box"];
  "sha256:7d67ab261f12fc2aec2260ceaeaed8ee9b0036c4f6553e315cc65d9f786a2e5e" [label="copy{src=/cj/cj, dest=/bin/cj}" shape="note"];
  "sha256:4c5bf9bc9d85049928a6a94e97742baa150eb34e7c892b53a05016d792e3e2c8" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:f99b76f38b83384b3ae8144d6505ba607bedb1837537bd545544cf597520913f" [label="sha256:f99b76f38b83384b3ae8144d6505ba607bedb1837537bd545544cf597520913f" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:6a6562941522b2294a94f226696eac1c614c0ebd3ab3e0ebc93081bb19a8e562" [label=""];
  "sha256:6a6562941522b2294a94f226696eac1c614c0ebd3ab3e0ebc93081bb19a8e562" -> "sha256:c5dbc8c05978f783515fec79556b1c3628c0854cdf78d60c73ab8a12d005f6db" [label=""];
  "sha256:c5dbc8c05978f783515fec79556b1c3628c0854cdf78d60c73ab8a12d005f6db" -> "sha256:87ab75934156782d7dfc1c39cd2938e3b8777a9ef48f7f073d126637b0286e83" [label=""];
  "sha256:953f0934fc5a50d41bf7b81d1bcef2dd8ddd52708a95b5690371a459e9563553" -> "sha256:87ab75934156782d7dfc1c39cd2938e3b8777a9ef48f7f073d126637b0286e83" [label=""];
  "sha256:87ab75934156782d7dfc1c39cd2938e3b8777a9ef48f7f073d126637b0286e83" -> "sha256:065e3a513c609fd4ad82fad766ac64698bec3853ba5fcb2e1717581c5ea85e71" [label=""];
  "sha256:065e3a513c609fd4ad82fad766ac64698bec3853ba5fcb2e1717581c5ea85e71" -> "sha256:7d67ab261f12fc2aec2260ceaeaed8ee9b0036c4f6553e315cc65d9f786a2e5e" [label=""];
  "sha256:7d67ab261f12fc2aec2260ceaeaed8ee9b0036c4f6553e315cc65d9f786a2e5e" -> "sha256:4c5bf9bc9d85049928a6a94e97742baa150eb34e7c892b53a05016d792e3e2c8" [label=""];
  "sha256:065e3a513c609fd4ad82fad766ac64698bec3853ba5fcb2e1717581c5ea85e71" -> "sha256:4c5bf9bc9d85049928a6a94e97742baa150eb34e7c892b53a05016d792e3e2c8" [label=""];
  "sha256:4c5bf9bc9d85049928a6a94e97742baa150eb34e7c892b53a05016d792e3e2c8" -> "sha256:f99b76f38b83384b3ae8144d6505ba607bedb1837537bd545544cf597520913f" [label=""];
}

