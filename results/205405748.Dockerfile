[app/sources/205405748.Dockerfile]
digraph {
  "sha256:6109dadf215e63c885e83942ffbe6d5391cd506d56fb41c278ec98bf71fb3290" [label="docker-image://docker.io/openbazaar/base:v1.0.0" shape="ellipse"];
  "sha256:2b76af8649bb6b65f3f2da81f3837b8dbe91453cd99a2e7a738e5ce2da3e4482" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:3d7d7a35eba5ab34a48a7a1f0e5e3542cc00abcda83e3a3aaad309a4c17cc356" [label="copy{src=/, dest=/go/src/github.com/OpenBazaar/openbazaar-go}" shape="note"];
  "sha256:f90010842dd87d5eb45bdf8b074c8a52eebce311128d994043746ef4d5d20181" [label="/bin/sh -c go build --ldflags '-extldflags \"-static\"' -o /opt/openbazaard /go/src/github.com/OpenBazaar/openbazaar-go" shape="box"];
  "sha256:b87c02f5e74424d09f45a508c40603c4c5dd6807227cd4c8074a3ea245cf9f73" [label="copy{src=/opt/openbazaard, dest=/opt/openbazaard}" shape="note"];
  "sha256:23a96296afc5d598f5d766fc668f4059bea5819bed783bd9a0f3aa75dec12f47" [label="sha256:23a96296afc5d598f5d766fc668f4059bea5819bed783bd9a0f3aa75dec12f47" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:3d7d7a35eba5ab34a48a7a1f0e5e3542cc00abcda83e3a3aaad309a4c17cc356" [label=""];
  "sha256:2b76af8649bb6b65f3f2da81f3837b8dbe91453cd99a2e7a738e5ce2da3e4482" -> "sha256:3d7d7a35eba5ab34a48a7a1f0e5e3542cc00abcda83e3a3aaad309a4c17cc356" [label=""];
  "sha256:3d7d7a35eba5ab34a48a7a1f0e5e3542cc00abcda83e3a3aaad309a4c17cc356" -> "sha256:f90010842dd87d5eb45bdf8b074c8a52eebce311128d994043746ef4d5d20181" [label=""];
  "sha256:6109dadf215e63c885e83942ffbe6d5391cd506d56fb41c278ec98bf71fb3290" -> "sha256:b87c02f5e74424d09f45a508c40603c4c5dd6807227cd4c8074a3ea245cf9f73" [label=""];
  "sha256:f90010842dd87d5eb45bdf8b074c8a52eebce311128d994043746ef4d5d20181" -> "sha256:b87c02f5e74424d09f45a508c40603c4c5dd6807227cd4c8074a3ea245cf9f73" [label=""];
  "sha256:b87c02f5e74424d09f45a508c40603c4c5dd6807227cd4c8074a3ea245cf9f73" -> "sha256:23a96296afc5d598f5d766fc668f4059bea5819bed783bd9a0f3aa75dec12f47" [label=""];
}

