[app/sources/475337795.Dockerfile]
digraph {
  "sha256:aa043ade22cc50178617003f61714672ef34fa1bad7516edf74cf026ed3feff3" [label="local://context" shape="ellipse"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:fa7bf8bb4a323c5e902e29298f4dccc0be0caf7880670718a48f918aa5897b33" [label="copy{src=/bin/guestbook, dest=/app/guestbook}" shape="note"];
  "sha256:a52ef4b76e89757c995c8fb17fa74ab65d73cf0390a1191271878cd2ced105d2" [label="copy{src=/_src/public/index.html, dest=/app/public/index.html}" shape="note"];
  "sha256:ffe6d4872d94aa15beadac4f91576a68dcc23ecfcff1f2a72dfb8daeb771072c" [label="copy{src=/_src/public/script.js, dest=/app/public/script.js}" shape="note"];
  "sha256:92dadee205d87a907ce4f0038c44151cfe91103df69d9a54a174446acc35c418" [label="copy{src=/_src/public/style.css, dest=/app/public/style.css}" shape="note"];
  "sha256:8800801e96fbcfedfcf5a8a90b32c88b1916ffdf738fa69cc0e6cf86bcbef8ef" [label="mkdir{path=/app}" shape="note"];
  "sha256:dc74d429edd5e1bbef13df397cff3b5f22e35ee83f147646558653ef611a9838" [label="sha256:dc74d429edd5e1bbef13df397cff3b5f22e35ee83f147646558653ef611a9838" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:fa7bf8bb4a323c5e902e29298f4dccc0be0caf7880670718a48f918aa5897b33" [label=""];
  "sha256:aa043ade22cc50178617003f61714672ef34fa1bad7516edf74cf026ed3feff3" -> "sha256:fa7bf8bb4a323c5e902e29298f4dccc0be0caf7880670718a48f918aa5897b33" [label=""];
  "sha256:fa7bf8bb4a323c5e902e29298f4dccc0be0caf7880670718a48f918aa5897b33" -> "sha256:a52ef4b76e89757c995c8fb17fa74ab65d73cf0390a1191271878cd2ced105d2" [label=""];
  "sha256:aa043ade22cc50178617003f61714672ef34fa1bad7516edf74cf026ed3feff3" -> "sha256:a52ef4b76e89757c995c8fb17fa74ab65d73cf0390a1191271878cd2ced105d2" [label=""];
  "sha256:a52ef4b76e89757c995c8fb17fa74ab65d73cf0390a1191271878cd2ced105d2" -> "sha256:ffe6d4872d94aa15beadac4f91576a68dcc23ecfcff1f2a72dfb8daeb771072c" [label=""];
  "sha256:aa043ade22cc50178617003f61714672ef34fa1bad7516edf74cf026ed3feff3" -> "sha256:ffe6d4872d94aa15beadac4f91576a68dcc23ecfcff1f2a72dfb8daeb771072c" [label=""];
  "sha256:ffe6d4872d94aa15beadac4f91576a68dcc23ecfcff1f2a72dfb8daeb771072c" -> "sha256:92dadee205d87a907ce4f0038c44151cfe91103df69d9a54a174446acc35c418" [label=""];
  "sha256:aa043ade22cc50178617003f61714672ef34fa1bad7516edf74cf026ed3feff3" -> "sha256:92dadee205d87a907ce4f0038c44151cfe91103df69d9a54a174446acc35c418" [label=""];
  "sha256:92dadee205d87a907ce4f0038c44151cfe91103df69d9a54a174446acc35c418" -> "sha256:8800801e96fbcfedfcf5a8a90b32c88b1916ffdf738fa69cc0e6cf86bcbef8ef" [label=""];
  "sha256:8800801e96fbcfedfcf5a8a90b32c88b1916ffdf738fa69cc0e6cf86bcbef8ef" -> "sha256:dc74d429edd5e1bbef13df397cff3b5f22e35ee83f147646558653ef611a9838" [label=""];
}

