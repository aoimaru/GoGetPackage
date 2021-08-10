[app/sources/200165396.Dockerfile]
digraph {
  "sha256:19861e17bf420b11d26b61c41062cdd7270e5be3cad96ff58b6ea8d285630eb9" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime:2.2@sha256:51f94ecc723ee098a03d84e10bd9d871fc4b817736c63362854c3c8bfad6e498" shape="ellipse"];
  "sha256:2ef4c56a36a43eb5043a8818828166d67cbad9ae37ca4659c1571561ddd309b2" [label="mkdir{path=/app}" shape="note"];
  "sha256:1214c23cdf1b1abdaf9bd2ef060c81f7c1b05125587c7631f8608b896d5eb567" [label="local://context" shape="ellipse"];
  "sha256:e5107a7b7ba30074751c624ed7b2039c573428431a763861df740900720396b8" [label="copy{src=/bin/Release/netcoreapp2.2/publish, dest=/app/}" shape="note"];
  "sha256:1afd99ffc467d01c70e4ffca9cc2730336e1eb0bd8bcd3371a229943d94e404c" [label="sha256:1afd99ffc467d01c70e4ffca9cc2730336e1eb0bd8bcd3371a229943d94e404c" shape="plaintext"];
  "sha256:19861e17bf420b11d26b61c41062cdd7270e5be3cad96ff58b6ea8d285630eb9" -> "sha256:2ef4c56a36a43eb5043a8818828166d67cbad9ae37ca4659c1571561ddd309b2" [label=""];
  "sha256:2ef4c56a36a43eb5043a8818828166d67cbad9ae37ca4659c1571561ddd309b2" -> "sha256:e5107a7b7ba30074751c624ed7b2039c573428431a763861df740900720396b8" [label=""];
  "sha256:1214c23cdf1b1abdaf9bd2ef060c81f7c1b05125587c7631f8608b896d5eb567" -> "sha256:e5107a7b7ba30074751c624ed7b2039c573428431a763861df740900720396b8" [label=""];
  "sha256:e5107a7b7ba30074751c624ed7b2039c573428431a763861df740900720396b8" -> "sha256:1afd99ffc467d01c70e4ffca9cc2730336e1eb0bd8bcd3371a229943d94e404c" [label=""];
}

