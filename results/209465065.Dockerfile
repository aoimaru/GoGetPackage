[app/sources/209465065.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" [label="/bin/sh -c npm install -g phantomjs" shape="box"];
  "sha256:3fc12c8ae25e9a5de8f62881f5ede5047f066759ffaf85ee7703bf77aa24a2ba" [label="local://context" shape="ellipse"];
  "sha256:1d17d2599c5dfcefcb12350c56fb28c8eb3c7ab8f612c58a566c532443b4f07e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e0ae372557a525facbd36e466a11ade94107e45d920f4715530552985c7f16f8" [label="mkdir{path=/app}" shape="note"];
  "sha256:0e84720c4d22f5dff32158f240282d582bac5a93ad7bebbe8dbf7b5f6544362b" [label="sha256:0e84720c4d22f5dff32158f240282d582bac5a93ad7bebbe8dbf7b5f6544362b" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" [label=""];
  "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" -> "sha256:1d17d2599c5dfcefcb12350c56fb28c8eb3c7ab8f612c58a566c532443b4f07e" [label=""];
  "sha256:3fc12c8ae25e9a5de8f62881f5ede5047f066759ffaf85ee7703bf77aa24a2ba" -> "sha256:1d17d2599c5dfcefcb12350c56fb28c8eb3c7ab8f612c58a566c532443b4f07e" [label=""];
  "sha256:1d17d2599c5dfcefcb12350c56fb28c8eb3c7ab8f612c58a566c532443b4f07e" -> "sha256:e0ae372557a525facbd36e466a11ade94107e45d920f4715530552985c7f16f8" [label=""];
  "sha256:e0ae372557a525facbd36e466a11ade94107e45d920f4715530552985c7f16f8" -> "sha256:0e84720c4d22f5dff32158f240282d582bac5a93ad7bebbe8dbf7b5f6544362b" [label=""];
}

