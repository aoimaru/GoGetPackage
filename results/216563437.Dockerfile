[app/sources/216563437.Dockerfile]
digraph {
  "sha256:62a825dc1dd9744dc0d60a0911981f0fb2f1017bf1ff4063545cb19feda185c4" [label="docker-image://docker.io/library/docker:dind" shape="ellipse"];
  "sha256:83fd81c57920573d4946486c1c373ea607260fed96f512c8dfecca718af387c9" [label="/bin/sh -c apk add --update musl-dev go && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f693870864fd6470d7860417e2827f8a6be7dbd2926f6f09704cbeae619bdc8e" [label="local://context" shape="ellipse"];
  "sha256:55d8ffd6a93a371e591b3148b0ad4e7a31fef61804cac7c5eb2e49f1e2dadeb5" [label="copy{src=/vendor, dest=/gopath/src/github.com/ethereum/hive/vendor}" shape="note"];
  "sha256:a8d35be1bd19aa108cdaeacb74fc4853aef6006dd2d8b1cf037c7b4c879eb670" [label="/bin/sh -c (cd $GOPATH/src/github.com/ethereum/hive && go install ./...)" shape="box"];
  "sha256:49c806592d15a73870bf6c7883aa2408991be66ddcc50afa201f1563154bd1b4" [label="/bin/sh -c apk add --update  git         &&    \tgit clone https://github.com/ethereum/go-ethereum $GOPATH/src/github.com/ethereum/go-ethereum && \tapk del git" shape="box"];
  "sha256:6d304aaf06be285654af1b9ada5741dc8f18b63a9584dabb16811d6b83e759f6" [label="copy{src=/*.go, dest=/gopath/src/github.com/ethereum/hive/}" shape="note"];
  "sha256:b3d7016d6e815262a895c62f2e24dc43acfda8ebf666614db577c2564e50c0b9" [label="copy{src=/chaintools, dest=/gopath/src/github.com/ethereum/hive/chaintools}" shape="note"];
  "sha256:61baf6f05a6c3dafa298443228b87e53f8a09fe33620cf461d036543b153949b" [label="mkdir{path=/gopath/src/github.com/ethereum/hive}" shape="note"];
  "sha256:34ca7ab11e160294c80bacb2fb64d2b357d7f9e2a05b5e0f2f10e3220c27ca4d" [label="/bin/sh -c go install" shape="box"];
  "sha256:839bd66b680767adad3e041a7eb320fa650acbac89439f91b7f969009f840fe9" [label="/bin/sh -c echo '#!/bin/sh'  > $GOPATH/bin/hive.sh && \techo 'set -e'    >> $GOPATH/bin/hive.sh && \t\techo 'dockerd-entrypoint.sh --storage-driver=aufs 2>/dev/null &' >> $GOPATH/bin/hive.sh && \techo 'while [ ! -S /var/run/docker.sock ]; do sleep 1; done'           >> $GOPATH/bin/hive.sh && \t\techo 'for id in `docker ps -a -q`; do docker rm -f $id; done'                                                     >> $GOPATH/bin/hive.sh && \techo 'for id in `docker images -f \"dangling=true\" | tail -n +2 | awk \"{print \\\\$3}\"`; do docker rmi -f $id; done' >> $GOPATH/bin/hive.sh && \techo 'hive --docker-noshell $@'                                                                                   >> $GOPATH/bin/hive.sh && \techo 'for id in `docker ps -a -q`; do docker rm -f $id; done'                                                     >> $GOPATH/bin/hive.sh && \techo 'for id in `docker images -f \"dangling=true\" | tail -n +2 | awk \"{print \\\\$3}\"`; do docker rmi -f $id; done' >> $GOPATH/bin/hive.sh && \t\techo 'adduser -u $UID -D hive'       >> $GOPATH/bin/hive.sh && \techo 'chown -R hive /var/lib/docker' >> $GOPATH/bin/hive.sh &&   echo 'chown -R hive workspace'       >> $GOPATH/bin/hive.sh && \t\tchmod +x $GOPATH/bin/hive.sh" shape="box"];
  "sha256:4142dc829c2aee05f57ca53c572b4ff274e6f81010e626439a4566885764a081" [label="copy{src=/, dest=/gopath/src/github.com/ethereum/hive}" shape="note"];
  "sha256:27597954addb7f7743ce2ef6436193f8d87eb856df1f3367e2c010e4bb0e2dc2" [label="sha256:27597954addb7f7743ce2ef6436193f8d87eb856df1f3367e2c010e4bb0e2dc2" shape="plaintext"];
  "sha256:62a825dc1dd9744dc0d60a0911981f0fb2f1017bf1ff4063545cb19feda185c4" -> "sha256:83fd81c57920573d4946486c1c373ea607260fed96f512c8dfecca718af387c9" [label=""];
  "sha256:83fd81c57920573d4946486c1c373ea607260fed96f512c8dfecca718af387c9" -> "sha256:55d8ffd6a93a371e591b3148b0ad4e7a31fef61804cac7c5eb2e49f1e2dadeb5" [label=""];
  "sha256:f693870864fd6470d7860417e2827f8a6be7dbd2926f6f09704cbeae619bdc8e" -> "sha256:55d8ffd6a93a371e591b3148b0ad4e7a31fef61804cac7c5eb2e49f1e2dadeb5" [label=""];
  "sha256:55d8ffd6a93a371e591b3148b0ad4e7a31fef61804cac7c5eb2e49f1e2dadeb5" -> "sha256:a8d35be1bd19aa108cdaeacb74fc4853aef6006dd2d8b1cf037c7b4c879eb670" [label=""];
  "sha256:a8d35be1bd19aa108cdaeacb74fc4853aef6006dd2d8b1cf037c7b4c879eb670" -> "sha256:49c806592d15a73870bf6c7883aa2408991be66ddcc50afa201f1563154bd1b4" [label=""];
  "sha256:49c806592d15a73870bf6c7883aa2408991be66ddcc50afa201f1563154bd1b4" -> "sha256:6d304aaf06be285654af1b9ada5741dc8f18b63a9584dabb16811d6b83e759f6" [label=""];
  "sha256:f693870864fd6470d7860417e2827f8a6be7dbd2926f6f09704cbeae619bdc8e" -> "sha256:6d304aaf06be285654af1b9ada5741dc8f18b63a9584dabb16811d6b83e759f6" [label=""];
  "sha256:6d304aaf06be285654af1b9ada5741dc8f18b63a9584dabb16811d6b83e759f6" -> "sha256:b3d7016d6e815262a895c62f2e24dc43acfda8ebf666614db577c2564e50c0b9" [label=""];
  "sha256:f693870864fd6470d7860417e2827f8a6be7dbd2926f6f09704cbeae619bdc8e" -> "sha256:b3d7016d6e815262a895c62f2e24dc43acfda8ebf666614db577c2564e50c0b9" [label=""];
  "sha256:b3d7016d6e815262a895c62f2e24dc43acfda8ebf666614db577c2564e50c0b9" -> "sha256:61baf6f05a6c3dafa298443228b87e53f8a09fe33620cf461d036543b153949b" [label=""];
  "sha256:61baf6f05a6c3dafa298443228b87e53f8a09fe33620cf461d036543b153949b" -> "sha256:34ca7ab11e160294c80bacb2fb64d2b357d7f9e2a05b5e0f2f10e3220c27ca4d" [label=""];
  "sha256:34ca7ab11e160294c80bacb2fb64d2b357d7f9e2a05b5e0f2f10e3220c27ca4d" -> "sha256:839bd66b680767adad3e041a7eb320fa650acbac89439f91b7f969009f840fe9" [label=""];
  "sha256:839bd66b680767adad3e041a7eb320fa650acbac89439f91b7f969009f840fe9" -> "sha256:4142dc829c2aee05f57ca53c572b4ff274e6f81010e626439a4566885764a081" [label=""];
  "sha256:f693870864fd6470d7860417e2827f8a6be7dbd2926f6f09704cbeae619bdc8e" -> "sha256:4142dc829c2aee05f57ca53c572b4ff274e6f81010e626439a4566885764a081" [label=""];
  "sha256:4142dc829c2aee05f57ca53c572b4ff274e6f81010e626439a4566885764a081" -> "sha256:27597954addb7f7743ce2ef6436193f8d87eb856df1f3367e2c010e4bb0e2dc2" [label=""];
}

