[app/sources/405147260.Dockerfile]
digraph {
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" [label="docker-image://docker.io/library/python:latest" shape="ellipse"];
  "sha256:1272dcdd40cd8148c9b83c727e80272c1d922e08e8da432424756d04352575ba" [label="local://context" shape="ellipse"];
  "sha256:90839b387e4704db6c05ca6946056dc1483e6b46b2ff4e678bbab28c7e1b613e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:52dae985df51d894c6238a6ff1cf2fae082be1f9d26a887d31239cefb3a9bd37" [label="mkdir{path=/app}" shape="note"];
  "sha256:e894fbc36d56e49c77ef7e217e2435fe55bbda8c16c6e3948683a7240c5a7368" [label="sha256:e894fbc36d56e49c77ef7e217e2435fe55bbda8c16c6e3948683a7240c5a7368" shape="plaintext"];
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" -> "sha256:90839b387e4704db6c05ca6946056dc1483e6b46b2ff4e678bbab28c7e1b613e" [label=""];
  "sha256:1272dcdd40cd8148c9b83c727e80272c1d922e08e8da432424756d04352575ba" -> "sha256:90839b387e4704db6c05ca6946056dc1483e6b46b2ff4e678bbab28c7e1b613e" [label=""];
  "sha256:90839b387e4704db6c05ca6946056dc1483e6b46b2ff4e678bbab28c7e1b613e" -> "sha256:52dae985df51d894c6238a6ff1cf2fae082be1f9d26a887d31239cefb3a9bd37" [label=""];
  "sha256:52dae985df51d894c6238a6ff1cf2fae082be1f9d26a887d31239cefb3a9bd37" -> "sha256:e894fbc36d56e49c77ef7e217e2435fe55bbda8c16c6e3948683a7240c5a7368" [label=""];
}

