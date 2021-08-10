[app/sources/191866868.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:828859f2aa917f9847605208b63edb74b0ca761980d69b0b1656e38c94658d84" [label="/bin/sh -c addgroup --system xusers   && adduser \t\t\t--home /home/xuser \t\t\t--disabled-password \t\t\t--shell /bin/bash \t\t\t--gecos \"user for running X Window stuff\" \t\t\t--ingroup xusers \t\t\t--quiet \t\t\txuser" shape="box"];
  "sha256:08cec7bc48583d6d37148a1236c7c62222f032a69b56553d994ff6a4d5a13c48" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\t\t\txvfb \t\t\t\txauth \t\t\t\tx11vnc \t\t\t\tx11-utils \t\t\t\tx11-xserver-utils \t\t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:302c4168c347074c6e0f63db7c531b5cbac4adf35c5a9019a6be5adede45b3c1" [label="/bin/sh -c mkdir -p /Xauthority && chown -R xuser:xusers /Xauthority" shape="box"];
  "sha256:757d8f05625de43abd27dd9c3d2643425ecba6866e238b5e708c879c91878bb3" [label="local://context" shape="ellipse"];
  "sha256:49b5854001ce4cef6b78308bb9e180403e4471c098c072c2c421f796d304bc07" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:00da7fe7b480b3ba23d84c4403108b9c749189856c24085415a5a2028cf59e0e" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:c8d087f0a2627fc86555447f1c71feb8e41268fc763c0accd31c50d597cbd0e0" [label="sha256:c8d087f0a2627fc86555447f1c71feb8e41268fc763c0accd31c50d597cbd0e0" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:828859f2aa917f9847605208b63edb74b0ca761980d69b0b1656e38c94658d84" [label=""];
  "sha256:828859f2aa917f9847605208b63edb74b0ca761980d69b0b1656e38c94658d84" -> "sha256:08cec7bc48583d6d37148a1236c7c62222f032a69b56553d994ff6a4d5a13c48" [label=""];
  "sha256:08cec7bc48583d6d37148a1236c7c62222f032a69b56553d994ff6a4d5a13c48" -> "sha256:302c4168c347074c6e0f63db7c531b5cbac4adf35c5a9019a6be5adede45b3c1" [label=""];
  "sha256:302c4168c347074c6e0f63db7c531b5cbac4adf35c5a9019a6be5adede45b3c1" -> "sha256:49b5854001ce4cef6b78308bb9e180403e4471c098c072c2c421f796d304bc07" [label=""];
  "sha256:757d8f05625de43abd27dd9c3d2643425ecba6866e238b5e708c879c91878bb3" -> "sha256:49b5854001ce4cef6b78308bb9e180403e4471c098c072c2c421f796d304bc07" [label=""];
  "sha256:49b5854001ce4cef6b78308bb9e180403e4471c098c072c2c421f796d304bc07" -> "sha256:00da7fe7b480b3ba23d84c4403108b9c749189856c24085415a5a2028cf59e0e" [label=""];
  "sha256:00da7fe7b480b3ba23d84c4403108b9c749189856c24085415a5a2028cf59e0e" -> "sha256:c8d087f0a2627fc86555447f1c71feb8e41268fc763c0accd31c50d597cbd0e0" [label=""];
}

