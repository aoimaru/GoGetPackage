[app/sources/245365777.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:6966125ecadb91c506d23481d8c7582ac75b5bd5dcddeaa2c5bd5ee56191b73b" [label="local://context" shape="ellipse"];
  "sha256:a868d7347fe4c1b440d00b8918a9827adeaeff41924ca2bc7a5b0b40576804e6" [label="copy{src=/, dest=/dns-frontend}" shape="note"];
  "sha256:531a1cda2c2f6e551fd4c8b53d2c6b2806acfe087017a8d2904bb13be925953c" [label="mkdir{path=/dns-frontend}" shape="note"];
  "sha256:8a0e30e7c3457548cfa41da5243bba56b3dd613aaadbb617b7f506a478dda562" [label="sha256:8a0e30e7c3457548cfa41da5243bba56b3dd613aaadbb617b7f506a478dda562" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label=""];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" -> "sha256:a868d7347fe4c1b440d00b8918a9827adeaeff41924ca2bc7a5b0b40576804e6" [label=""];
  "sha256:6966125ecadb91c506d23481d8c7582ac75b5bd5dcddeaa2c5bd5ee56191b73b" -> "sha256:a868d7347fe4c1b440d00b8918a9827adeaeff41924ca2bc7a5b0b40576804e6" [label=""];
  "sha256:a868d7347fe4c1b440d00b8918a9827adeaeff41924ca2bc7a5b0b40576804e6" -> "sha256:531a1cda2c2f6e551fd4c8b53d2c6b2806acfe087017a8d2904bb13be925953c" [label=""];
  "sha256:531a1cda2c2f6e551fd4c8b53d2c6b2806acfe087017a8d2904bb13be925953c" -> "sha256:8a0e30e7c3457548cfa41da5243bba56b3dd613aaadbb617b7f506a478dda562" [label=""];
}

