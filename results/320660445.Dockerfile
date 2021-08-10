[app/sources/320660445.Dockerfile]
digraph {
  "sha256:93d2debf492e956fac9fae74ca47c5bac139af8931a3e69a049f5aa953f89426" [label="local://context" shape="ellipse"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:a2d8405d9fb4ffdc19769af77ed3945d76d04d7f586d50b6961d5bbefb4e1b1c" [label="copy{src=/composer.json, dest=/app/composer.json}" shape="note"];
  "sha256:de3e69e73785e4f414729315ed52e6f2cbc32d81acd7aeb167945cd67ac508df" [label="sha256:de3e69e73785e4f414729315ed52e6f2cbc32d81acd7aeb167945cd67ac508df" shape="plaintext"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:a2d8405d9fb4ffdc19769af77ed3945d76d04d7f586d50b6961d5bbefb4e1b1c" [label=""];
  "sha256:93d2debf492e956fac9fae74ca47c5bac139af8931a3e69a049f5aa953f89426" -> "sha256:a2d8405d9fb4ffdc19769af77ed3945d76d04d7f586d50b6961d5bbefb4e1b1c" [label=""];
  "sha256:a2d8405d9fb4ffdc19769af77ed3945d76d04d7f586d50b6961d5bbefb4e1b1c" -> "sha256:de3e69e73785e4f414729315ed52e6f2cbc32d81acd7aeb167945cd67ac508df" [label=""];
}

