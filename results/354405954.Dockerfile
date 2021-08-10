[app/sources/354405954.Dockerfile]
digraph {
  "sha256:d4a55bc3954bd62dce2ae2f7ab68849cd23c97ca998ff4d51feba2206eaea691" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:249ee67585436f6a6448d4086903431c7f60c43fc709d896ba9c1ecfb7237f51" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:77f18f0fbb5c73487c526b0991989e1b09b8e07f8a95ff2138a018999c6dcd13" [label="mkdir{path=/code}" shape="note"];
  "sha256:b936bb91c490ceff9daa6b778688345f046a843ef7691672d2aa7ab03c42f863" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:c9f1fcc2a8a41f9ec4ab64e6321c44b4221abe273c2178f778c48eaf541ee568" [label="sha256:c9f1fcc2a8a41f9ec4ab64e6321c44b4221abe273c2178f778c48eaf541ee568" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:249ee67585436f6a6448d4086903431c7f60c43fc709d896ba9c1ecfb7237f51" [label=""];
  "sha256:d4a55bc3954bd62dce2ae2f7ab68849cd23c97ca998ff4d51feba2206eaea691" -> "sha256:249ee67585436f6a6448d4086903431c7f60c43fc709d896ba9c1ecfb7237f51" [label=""];
  "sha256:249ee67585436f6a6448d4086903431c7f60c43fc709d896ba9c1ecfb7237f51" -> "sha256:77f18f0fbb5c73487c526b0991989e1b09b8e07f8a95ff2138a018999c6dcd13" [label=""];
  "sha256:77f18f0fbb5c73487c526b0991989e1b09b8e07f8a95ff2138a018999c6dcd13" -> "sha256:b936bb91c490ceff9daa6b778688345f046a843ef7691672d2aa7ab03c42f863" [label=""];
  "sha256:b936bb91c490ceff9daa6b778688345f046a843ef7691672d2aa7ab03c42f863" -> "sha256:c9f1fcc2a8a41f9ec4ab64e6321c44b4221abe273c2178f778c48eaf541ee568" [label=""];
}

