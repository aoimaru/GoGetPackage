[app/sources/179777559.Dockerfile]
digraph {
  "sha256:b337ae45066d338ad1cc181ea6526cb2e1e739726f2bd08e35a49706bbb87f94" [label="local://context" shape="ellipse"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:480a57395b90f7c87c6b593fcfef392265d6741a67f4040650f4011374f71abc" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:1a3c0950f3f7c5d94d93ad64bc3a20304cb26175a0792addc21ea753ae57ed35" [label="/bin/sh -c cd /go-ethereum && make all" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:d5879ca448a2529195535fa290fd1394c2b2218534de83808e2942fba8533b21" [label="copy{src=/go-ethereum/build/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:82af4a359ad51b373db38891dfc8ee73db3b105720dcdeebbdba392b3212ffeb" [label="sha256:82af4a359ad51b373db38891dfc8ee73db3b105720dcdeebbdba392b3212ffeb" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:480a57395b90f7c87c6b593fcfef392265d6741a67f4040650f4011374f71abc" [label=""];
  "sha256:b337ae45066d338ad1cc181ea6526cb2e1e739726f2bd08e35a49706bbb87f94" -> "sha256:480a57395b90f7c87c6b593fcfef392265d6741a67f4040650f4011374f71abc" [label=""];
  "sha256:480a57395b90f7c87c6b593fcfef392265d6741a67f4040650f4011374f71abc" -> "sha256:1a3c0950f3f7c5d94d93ad64bc3a20304cb26175a0792addc21ea753ae57ed35" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:d5879ca448a2529195535fa290fd1394c2b2218534de83808e2942fba8533b21" [label=""];
  "sha256:1a3c0950f3f7c5d94d93ad64bc3a20304cb26175a0792addc21ea753ae57ed35" -> "sha256:d5879ca448a2529195535fa290fd1394c2b2218534de83808e2942fba8533b21" [label=""];
  "sha256:d5879ca448a2529195535fa290fd1394c2b2218534de83808e2942fba8533b21" -> "sha256:82af4a359ad51b373db38891dfc8ee73db3b105720dcdeebbdba392b3212ffeb" [label=""];
}

