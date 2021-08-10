[app/sources/467898384.Dockerfile]
digraph {
  "sha256:75a602a4b7e550f8d0b043e01180d74d93b3d65542905da2fe9c527c820b9b2e" [label="local://context" shape="ellipse"];
  "sha256:dc83fdfe76076c3847f72b929c07bbfcc5effba3a92b9ab92f0e970d165d622b" [label="copy{src=/check_metadata_concealment, dest=/}" shape="note"];
  "sha256:d1c99a3db41358ada117ca5f031fb0f3abf0ff175b190be098f2bf7358793e79" [label="sha256:d1c99a3db41358ada117ca5f031fb0f3abf0ff175b190be098f2bf7358793e79" shape="plaintext"];
  "sha256:75a602a4b7e550f8d0b043e01180d74d93b3d65542905da2fe9c527c820b9b2e" -> "sha256:dc83fdfe76076c3847f72b929c07bbfcc5effba3a92b9ab92f0e970d165d622b" [label=""];
  "sha256:dc83fdfe76076c3847f72b929c07bbfcc5effba3a92b9ab92f0e970d165d622b" -> "sha256:d1c99a3db41358ada117ca5f031fb0f3abf0ff175b190be098f2bf7358793e79" [label=""];
}

