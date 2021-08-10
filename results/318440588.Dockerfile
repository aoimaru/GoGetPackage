[app/sources/318440588.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:301dc1646f8fe014c11d2bc8b5b3b5166a7e25977cca69af15c540659d5c0fb8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5ba88586f99089ce1c3e5402a462fad9cc97f27f9aa5d61845b7a16d51981305" [label="local://context" shape="ellipse"];
  "sha256:6912c07ca624d34ca9dcc5ec991ee77017acbb0b8a38e4a88ecbc4fe168803a9" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:f4509493bc4e6bf781714a6e1363f367cd97040568684d35428a3b252fc27adf" [label="sha256:f4509493bc4e6bf781714a6e1363f367cd97040568684d35428a3b252fc27adf" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:301dc1646f8fe014c11d2bc8b5b3b5166a7e25977cca69af15c540659d5c0fb8" [label=""];
  "sha256:301dc1646f8fe014c11d2bc8b5b3b5166a7e25977cca69af15c540659d5c0fb8" -> "sha256:6912c07ca624d34ca9dcc5ec991ee77017acbb0b8a38e4a88ecbc4fe168803a9" [label=""];
  "sha256:5ba88586f99089ce1c3e5402a462fad9cc97f27f9aa5d61845b7a16d51981305" -> "sha256:6912c07ca624d34ca9dcc5ec991ee77017acbb0b8a38e4a88ecbc4fe168803a9" [label=""];
  "sha256:6912c07ca624d34ca9dcc5ec991ee77017acbb0b8a38e4a88ecbc4fe168803a9" -> "sha256:f4509493bc4e6bf781714a6e1363f367cd97040568684d35428a3b252fc27adf" [label=""];
}

