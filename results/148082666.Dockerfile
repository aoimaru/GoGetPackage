[app/sources/148082666.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1e332e828b4ce2ba8c8f278613e32f14045367e334cfbfe17731505d0de243cc" [label="local://context" shape="ellipse"];
  "sha256:49d621613109b09abf8f4c42d2c093fc0bf67c981f66583873a97a90ac8f71ef" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:705d19ad8364a3cbfc730eae418f7630c8c153070172e1a670dc2833fff627ab" [label="/bin/sh -c apk --no-cache add nodejs npm" shape="box"];
  "sha256:b90ccdedd169f32968d9e6853f7e9d3ca713b6c237464e9a9315ecd87f63ae1d" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:d35313eed59a442268d16534c19f986ee72ba49d30a2b658e400e963d47df558" [label="sha256:d35313eed59a442268d16534c19f986ee72ba49d30a2b658e400e963d47df558" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:49d621613109b09abf8f4c42d2c093fc0bf67c981f66583873a97a90ac8f71ef" [label=""];
  "sha256:1e332e828b4ce2ba8c8f278613e32f14045367e334cfbfe17731505d0de243cc" -> "sha256:49d621613109b09abf8f4c42d2c093fc0bf67c981f66583873a97a90ac8f71ef" [label=""];
  "sha256:49d621613109b09abf8f4c42d2c093fc0bf67c981f66583873a97a90ac8f71ef" -> "sha256:705d19ad8364a3cbfc730eae418f7630c8c153070172e1a670dc2833fff627ab" [label=""];
  "sha256:705d19ad8364a3cbfc730eae418f7630c8c153070172e1a670dc2833fff627ab" -> "sha256:b90ccdedd169f32968d9e6853f7e9d3ca713b6c237464e9a9315ecd87f63ae1d" [label=""];
  "sha256:b90ccdedd169f32968d9e6853f7e9d3ca713b6c237464e9a9315ecd87f63ae1d" -> "sha256:d35313eed59a442268d16534c19f986ee72ba49d30a2b658e400e963d47df558" [label=""];
}

