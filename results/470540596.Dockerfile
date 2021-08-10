[app/sources/470540596.Dockerfile]
digraph {
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:f274f27374cc27d830687bfa691545b643460147ef130cb2995540d1e8be48d6" [label="local://context" shape="ellipse"];
  "sha256:ce193cb44c352d891c335d6adc312489f5a1f84ea982efd50f02983e49ede9f6" [label="copy{src=/bin/guestbook, dest=/app/guestbook}" shape="note"];
  "sha256:257fc1f2c71404fc21afb015a0ebf6c194b43d34a665f8c41053b6b43873baeb" [label="copy{src=/_src/public/index.html, dest=/app/public/index.html}" shape="note"];
  "sha256:2b20e37bd9432d540a8013bab10eed39ce530970c02c90eb78832312fcb193a8" [label="copy{src=/_src/public/script.js, dest=/app/public/script.js}" shape="note"];
  "sha256:fed3561c4440f7a9a0c6f29ab35632e8645d481bfd6ac4db3106c996c386072f" [label="copy{src=/_src/public/style.css, dest=/app/public/style.css}" shape="note"];
  "sha256:4bea384b2ed663c760ab7f1d1be9274ab7b93e451b09fe91b04afa12efd145f4" [label="mkdir{path=/app}" shape="note"];
  "sha256:fabdc17b321b3b6502627be5cf53836bea7386d819f92c8eca0fb83f127a3ad0" [label="sha256:fabdc17b321b3b6502627be5cf53836bea7386d819f92c8eca0fb83f127a3ad0" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:ce193cb44c352d891c335d6adc312489f5a1f84ea982efd50f02983e49ede9f6" [label=""];
  "sha256:f274f27374cc27d830687bfa691545b643460147ef130cb2995540d1e8be48d6" -> "sha256:ce193cb44c352d891c335d6adc312489f5a1f84ea982efd50f02983e49ede9f6" [label=""];
  "sha256:ce193cb44c352d891c335d6adc312489f5a1f84ea982efd50f02983e49ede9f6" -> "sha256:257fc1f2c71404fc21afb015a0ebf6c194b43d34a665f8c41053b6b43873baeb" [label=""];
  "sha256:f274f27374cc27d830687bfa691545b643460147ef130cb2995540d1e8be48d6" -> "sha256:257fc1f2c71404fc21afb015a0ebf6c194b43d34a665f8c41053b6b43873baeb" [label=""];
  "sha256:257fc1f2c71404fc21afb015a0ebf6c194b43d34a665f8c41053b6b43873baeb" -> "sha256:2b20e37bd9432d540a8013bab10eed39ce530970c02c90eb78832312fcb193a8" [label=""];
  "sha256:f274f27374cc27d830687bfa691545b643460147ef130cb2995540d1e8be48d6" -> "sha256:2b20e37bd9432d540a8013bab10eed39ce530970c02c90eb78832312fcb193a8" [label=""];
  "sha256:2b20e37bd9432d540a8013bab10eed39ce530970c02c90eb78832312fcb193a8" -> "sha256:fed3561c4440f7a9a0c6f29ab35632e8645d481bfd6ac4db3106c996c386072f" [label=""];
  "sha256:f274f27374cc27d830687bfa691545b643460147ef130cb2995540d1e8be48d6" -> "sha256:fed3561c4440f7a9a0c6f29ab35632e8645d481bfd6ac4db3106c996c386072f" [label=""];
  "sha256:fed3561c4440f7a9a0c6f29ab35632e8645d481bfd6ac4db3106c996c386072f" -> "sha256:4bea384b2ed663c760ab7f1d1be9274ab7b93e451b09fe91b04afa12efd145f4" [label=""];
  "sha256:4bea384b2ed663c760ab7f1d1be9274ab7b93e451b09fe91b04afa12efd145f4" -> "sha256:fabdc17b321b3b6502627be5cf53836bea7386d819f92c8eca0fb83f127a3ad0" [label=""];
}

