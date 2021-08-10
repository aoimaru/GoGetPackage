[app/sources/436444444.Dockerfile]
digraph {
  "sha256:5f81b1c01c543a36fb265e856cce36dae9022120f32aad31269ddb41c964ad7c" [label="local://context" shape="ellipse"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:0b2b5f0f5ca605d229e0f093625d8936470267057d0828ee3c297b30669f7cdd" [label="copy{src=/default-config, dest=/opt/ara/default-config}" shape="note"];
  "sha256:a29dd9d86d7243866103db925b93393fd5a4f3a2672332ed3b4693ae1abaa2f8" [label="copy{src=/ara.jar, dest=/opt/ara/ara.jar}" shape="note"];
  "sha256:a8500877f55032b511b956e3c482e3b66ae3b3989514cfc8d8f60da48857394a" [label="sha256:a8500877f55032b511b956e3c482e3b66ae3b3989514cfc8d8f60da48857394a" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:0b2b5f0f5ca605d229e0f093625d8936470267057d0828ee3c297b30669f7cdd" [label=""];
  "sha256:5f81b1c01c543a36fb265e856cce36dae9022120f32aad31269ddb41c964ad7c" -> "sha256:0b2b5f0f5ca605d229e0f093625d8936470267057d0828ee3c297b30669f7cdd" [label=""];
  "sha256:0b2b5f0f5ca605d229e0f093625d8936470267057d0828ee3c297b30669f7cdd" -> "sha256:a29dd9d86d7243866103db925b93393fd5a4f3a2672332ed3b4693ae1abaa2f8" [label=""];
  "sha256:5f81b1c01c543a36fb265e856cce36dae9022120f32aad31269ddb41c964ad7c" -> "sha256:a29dd9d86d7243866103db925b93393fd5a4f3a2672332ed3b4693ae1abaa2f8" [label=""];
  "sha256:a29dd9d86d7243866103db925b93393fd5a4f3a2672332ed3b4693ae1abaa2f8" -> "sha256:a8500877f55032b511b956e3c482e3b66ae3b3989514cfc8d8f60da48857394a" [label=""];
}

