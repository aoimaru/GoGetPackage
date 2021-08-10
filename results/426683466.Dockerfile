[app/sources/426683466.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:9ac740427e4dfbd35e1f83a6062a9946d76933414dbf833079dc55f47769b685" [label="mkdir{path=/app}" shape="note"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:92c388a8fae74ff385078240441497e2937cac2162314f1cbfcc232dd4b80adf" [label="mkdir{path=/api}" shape="note"];
  "sha256:34badabc8ec3a47478b9190e0e5f1576457447db7edfb96b12eb0e6f93da54ea" [label="local://context" shape="ellipse"];
  "sha256:4bd36bb56826202f736088cfb4876ab9ea706012af1340468d1f55bb854ef081" [label="copy{src=/, dest=/api/}" shape="note"];
  "sha256:f42c6915df3ebbe40294e4f567abab3fcc90458541fe467557730df8fabde211" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo ." shape="box"];
  "sha256:561ef42b8c4742225a82eec3db70df2492933cbf35784285080609fe692c45f8" [label="copy{src=/api, dest=/app/}" shape="note"];
  "sha256:c0038738c7d9035fb3fc40c8a8c133ab77e745a9758b91185a0f4762de4bcd5a" [label="/bin/sh -c apk --update add     python     curl     groff     bash     dpkg     gcc     git     musl-dev     openssh     bash     sudo" shape="box"];
  "sha256:2f86e57ebcb69c00528124c1db5d2ad8c81e8e54f2aa814665a8771c9cebc6c1" [label="/bin/sh -c curl ${pip_installer} | python &&     pip install awscli" shape="box"];
  "sha256:a82c80de9ee7e7aff32a5f4e400c6e9bbe60770ebe8fc7ff04522a59dddb356f" [label="/bin/sh -c sudo chmod +x ./docker-entrypoint.sh" shape="box"];
  "sha256:a4e5ed8ec0a1761bdac3dc5b7bb54831aa28bae008a6ef71c9b91a859832b0fe" [label="sha256:a4e5ed8ec0a1761bdac3dc5b7bb54831aa28bae008a6ef71c9b91a859832b0fe" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:9ac740427e4dfbd35e1f83a6062a9946d76933414dbf833079dc55f47769b685" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:92c388a8fae74ff385078240441497e2937cac2162314f1cbfcc232dd4b80adf" [label=""];
  "sha256:92c388a8fae74ff385078240441497e2937cac2162314f1cbfcc232dd4b80adf" -> "sha256:4bd36bb56826202f736088cfb4876ab9ea706012af1340468d1f55bb854ef081" [label=""];
  "sha256:34badabc8ec3a47478b9190e0e5f1576457447db7edfb96b12eb0e6f93da54ea" -> "sha256:4bd36bb56826202f736088cfb4876ab9ea706012af1340468d1f55bb854ef081" [label=""];
  "sha256:4bd36bb56826202f736088cfb4876ab9ea706012af1340468d1f55bb854ef081" -> "sha256:f42c6915df3ebbe40294e4f567abab3fcc90458541fe467557730df8fabde211" [label=""];
  "sha256:9ac740427e4dfbd35e1f83a6062a9946d76933414dbf833079dc55f47769b685" -> "sha256:561ef42b8c4742225a82eec3db70df2492933cbf35784285080609fe692c45f8" [label=""];
  "sha256:f42c6915df3ebbe40294e4f567abab3fcc90458541fe467557730df8fabde211" -> "sha256:561ef42b8c4742225a82eec3db70df2492933cbf35784285080609fe692c45f8" [label=""];
  "sha256:561ef42b8c4742225a82eec3db70df2492933cbf35784285080609fe692c45f8" -> "sha256:c0038738c7d9035fb3fc40c8a8c133ab77e745a9758b91185a0f4762de4bcd5a" [label=""];
  "sha256:c0038738c7d9035fb3fc40c8a8c133ab77e745a9758b91185a0f4762de4bcd5a" -> "sha256:2f86e57ebcb69c00528124c1db5d2ad8c81e8e54f2aa814665a8771c9cebc6c1" [label=""];
  "sha256:2f86e57ebcb69c00528124c1db5d2ad8c81e8e54f2aa814665a8771c9cebc6c1" -> "sha256:a82c80de9ee7e7aff32a5f4e400c6e9bbe60770ebe8fc7ff04522a59dddb356f" [label=""];
  "sha256:a82c80de9ee7e7aff32a5f4e400c6e9bbe60770ebe8fc7ff04522a59dddb356f" -> "sha256:a4e5ed8ec0a1761bdac3dc5b7bb54831aa28bae008a6ef71c9b91a859832b0fe" [label=""];
}

