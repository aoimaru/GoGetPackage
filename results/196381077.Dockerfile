[app/sources/196381077.Dockerfile]
digraph {
  "sha256:bee510331942855a66818d5e603e5d3fd0b9bf40c604cbd617b9782f7025db48" [label="local://context" shape="ellipse"];
  "sha256:efe4ff9731dc60b3c8da3bbf0a17c5b4824410db175b44591ffd9463e17d2454" [label="copy{src=/mt, dest=/mt}" shape="note"];
  "sha256:d05dcfa12ba95b9f852b51bb92f4bb2554c3095e033612c2e62ad2389bd7a458" [label="sha256:d05dcfa12ba95b9f852b51bb92f4bb2554c3095e033612c2e62ad2389bd7a458" shape="plaintext"];
  "sha256:bee510331942855a66818d5e603e5d3fd0b9bf40c604cbd617b9782f7025db48" -> "sha256:efe4ff9731dc60b3c8da3bbf0a17c5b4824410db175b44591ffd9463e17d2454" [label=""];
  "sha256:efe4ff9731dc60b3c8da3bbf0a17c5b4824410db175b44591ffd9463e17d2454" -> "sha256:d05dcfa12ba95b9f852b51bb92f4bb2554c3095e033612c2e62ad2389bd7a458" [label=""];
}

