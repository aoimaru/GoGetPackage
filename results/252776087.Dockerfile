[app/sources/252776087.Dockerfile]
digraph {
  "sha256:356dff181220c5af38890f9008007a3d01e7baffd644cb47d72037e01e916dfe" [label="docker-image://docker.io/gliderlabs/alpine:3.1" shape="ellipse"];
  "sha256:c329accf6f44564f4a2855a117b66623dba57de51181593c58de4437ad710e32" [label="local://context" shape="ellipse"];
  "sha256:aa76d51aa30a3db9591ad29776d0e4441e4ff0e7c14869294fc1080d79b07655" [label="copy{src=/, dest=/go/src/github.com/bobrik/docker-image-cleaner}" shape="note"];
  "sha256:71121255c3b25aa2be3cf0583041cb5e04a3bfddd256a8253c5f0094fc123920" [label="/bin/sh -c apk-install go git && GOPATH=/go go get github.com/bobrik/docker-image-cleaner && apk del go git && mv /go/bin/docker-image-cleaner /bin/docker-image-cleaner && rm -rf /go" shape="box"];
  "sha256:19d0fbde1fecb94fe349915ba1ae6ba67d112f30388202dee026c4ceb80cfd9e" [label="sha256:19d0fbde1fecb94fe349915ba1ae6ba67d112f30388202dee026c4ceb80cfd9e" shape="plaintext"];
  "sha256:356dff181220c5af38890f9008007a3d01e7baffd644cb47d72037e01e916dfe" -> "sha256:aa76d51aa30a3db9591ad29776d0e4441e4ff0e7c14869294fc1080d79b07655" [label=""];
  "sha256:c329accf6f44564f4a2855a117b66623dba57de51181593c58de4437ad710e32" -> "sha256:aa76d51aa30a3db9591ad29776d0e4441e4ff0e7c14869294fc1080d79b07655" [label=""];
  "sha256:aa76d51aa30a3db9591ad29776d0e4441e4ff0e7c14869294fc1080d79b07655" -> "sha256:71121255c3b25aa2be3cf0583041cb5e04a3bfddd256a8253c5f0094fc123920" [label=""];
  "sha256:71121255c3b25aa2be3cf0583041cb5e04a3bfddd256a8253c5f0094fc123920" -> "sha256:19d0fbde1fecb94fe349915ba1ae6ba67d112f30388202dee026c4ceb80cfd9e" [label=""];
}

