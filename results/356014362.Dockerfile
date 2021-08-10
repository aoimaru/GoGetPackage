[app/sources/356014362.Dockerfile]
digraph {
  "sha256:1b6583d5cf48aaf5335e8289d0968307fe60e46200f67a53fc41998531978fc8" [label="local://context" shape="ellipse"];
  "sha256:f243a95803c0991274567c4a53db21fd362dcf5c00463e59a41a3516f1c2a6ff" [label="docker-image://docker.io/cirit/jmeter:base" shape="ellipse"];
  "sha256:fcddd3d5b29b558fb4501b1a6d8cd04a7e473c964b92814b0a1843f1de8c9d61" [label="copy{src=/gatling_lib/*, dest=/lib/}" shape="note"];
  "sha256:639d93393d5a801d1ce3be635654ea74417dc561aa41bdacd687370ba36b72e8" [label="copy{src=/modified_jmeter_core/ApacheJMeter_core.jar, dest=/lib/ext/}" shape="note"];
  "sha256:ceef0b6f282f53a3820e377f4a6ea4fcd034cc4c373eb01e4e654a244f2b875e" [label="sha256:ceef0b6f282f53a3820e377f4a6ea4fcd034cc4c373eb01e4e654a244f2b875e" shape="plaintext"];
  "sha256:f243a95803c0991274567c4a53db21fd362dcf5c00463e59a41a3516f1c2a6ff" -> "sha256:fcddd3d5b29b558fb4501b1a6d8cd04a7e473c964b92814b0a1843f1de8c9d61" [label=""];
  "sha256:1b6583d5cf48aaf5335e8289d0968307fe60e46200f67a53fc41998531978fc8" -> "sha256:fcddd3d5b29b558fb4501b1a6d8cd04a7e473c964b92814b0a1843f1de8c9d61" [label=""];
  "sha256:fcddd3d5b29b558fb4501b1a6d8cd04a7e473c964b92814b0a1843f1de8c9d61" -> "sha256:639d93393d5a801d1ce3be635654ea74417dc561aa41bdacd687370ba36b72e8" [label=""];
  "sha256:1b6583d5cf48aaf5335e8289d0968307fe60e46200f67a53fc41998531978fc8" -> "sha256:639d93393d5a801d1ce3be635654ea74417dc561aa41bdacd687370ba36b72e8" [label=""];
  "sha256:639d93393d5a801d1ce3be635654ea74417dc561aa41bdacd687370ba36b72e8" -> "sha256:ceef0b6f282f53a3820e377f4a6ea4fcd034cc4c373eb01e4e654a244f2b875e" [label=""];
}

