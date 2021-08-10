[app/sources/324946273.Dockerfile]
digraph {
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" [label="docker-image://docker.io/library/swift:latest" shape="ellipse"];
  "sha256:6eb6bbd23dc9ccaa4698982cf72d099783114e72cf6009e0dc5ebd35d1e6baf0" [label="local://context" shape="ellipse"];
  "sha256:d88d5148c3c06cc3211f41b239a572185e6c6d6b5a1cb0e0a931c8b3052fe82c" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:73feecc5ccce8bf1e265da1adb5850c634ea1e7a42aa102122ac34c7ddb6baa4" [label="sha256:73feecc5ccce8bf1e265da1adb5850c634ea1e7a42aa102122ac34c7ddb6baa4" shape="plaintext"];
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" -> "sha256:d88d5148c3c06cc3211f41b239a572185e6c6d6b5a1cb0e0a931c8b3052fe82c" [label=""];
  "sha256:6eb6bbd23dc9ccaa4698982cf72d099783114e72cf6009e0dc5ebd35d1e6baf0" -> "sha256:d88d5148c3c06cc3211f41b239a572185e6c6d6b5a1cb0e0a931c8b3052fe82c" [label=""];
  "sha256:d88d5148c3c06cc3211f41b239a572185e6c6d6b5a1cb0e0a931c8b3052fe82c" -> "sha256:73feecc5ccce8bf1e265da1adb5850c634ea1e7a42aa102122ac34c7ddb6baa4" [label=""];
}

