[app/sources/469813561.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:c4635c5f304c517d8b1967cefe52b64a7207ba0f6dcae82bc755a9dc743da138" [label="local://context" shape="ellipse"];
  "sha256:9d2cc7a507ed5e3fb9cf5d1b9ee69e0b59e196a8ec664f0ce3f87f2e03edf15f" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:7fc582ab25d702eae7aed1370e864a53ff0a4667328202b9a3e57dff560a8585" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:0ce4a7bf984553d9f8f8d6289dfa7b03988762f33c289789333298a3aa81caf1" [label="/bin/sh -c yarn" shape="box"];
  "sha256:ea2e0e6ae0813dadca21ad5c8574a17d94c32f46bee98f1c0c942af1e0b8f8ab" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:e8d5a83bfd798606fc3e2c6729427250a6fb8f828ce7065516465da0ddf7197c" [label="copy{src=/app/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:b9fd5e88bce4bf71746b55410fd5b387d5b0895594ded1b3f40d2d7d44887734" [label="sha256:b9fd5e88bce4bf71746b55410fd5b387d5b0895594ded1b3f40d2d7d44887734" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:9d2cc7a507ed5e3fb9cf5d1b9ee69e0b59e196a8ec664f0ce3f87f2e03edf15f" [label=""];
  "sha256:c4635c5f304c517d8b1967cefe52b64a7207ba0f6dcae82bc755a9dc743da138" -> "sha256:9d2cc7a507ed5e3fb9cf5d1b9ee69e0b59e196a8ec664f0ce3f87f2e03edf15f" [label=""];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:7fc582ab25d702eae7aed1370e864a53ff0a4667328202b9a3e57dff560a8585" [label=""];
  "sha256:c4635c5f304c517d8b1967cefe52b64a7207ba0f6dcae82bc755a9dc743da138" -> "sha256:7fc582ab25d702eae7aed1370e864a53ff0a4667328202b9a3e57dff560a8585" [label=""];
  "sha256:7fc582ab25d702eae7aed1370e864a53ff0a4667328202b9a3e57dff560a8585" -> "sha256:0ce4a7bf984553d9f8f8d6289dfa7b03988762f33c289789333298a3aa81caf1" [label=""];
  "sha256:0ce4a7bf984553d9f8f8d6289dfa7b03988762f33c289789333298a3aa81caf1" -> "sha256:ea2e0e6ae0813dadca21ad5c8574a17d94c32f46bee98f1c0c942af1e0b8f8ab" [label=""];
  "sha256:9d2cc7a507ed5e3fb9cf5d1b9ee69e0b59e196a8ec664f0ce3f87f2e03edf15f" -> "sha256:e8d5a83bfd798606fc3e2c6729427250a6fb8f828ce7065516465da0ddf7197c" [label=""];
  "sha256:ea2e0e6ae0813dadca21ad5c8574a17d94c32f46bee98f1c0c942af1e0b8f8ab" -> "sha256:e8d5a83bfd798606fc3e2c6729427250a6fb8f828ce7065516465da0ddf7197c" [label=""];
  "sha256:e8d5a83bfd798606fc3e2c6729427250a6fb8f828ce7065516465da0ddf7197c" -> "sha256:b9fd5e88bce4bf71746b55410fd5b387d5b0895594ded1b3f40d2d7d44887734" [label=""];
}

