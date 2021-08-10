[app/sources/436636458.Dockerfile]
digraph {
  "sha256:b618ddac03fb789720a628b69daa253a5b6325427352c21d78d952eba0506f06" [label="local://context" shape="ellipse"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" [label="docker-image://docker.io/library/golang:1" shape="ellipse"];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label="mkdir{path=/go/src/github.com/prometheus/client_golang}" shape="note"];
  "sha256:44f4ea5a6f5006315be8154c7d62a34c50379b72517608d21e5333f8c612d02a" [label="copy{src=/, dest=/go/src/github.com/prometheus/client_golang/}" shape="note"];
  "sha256:5fef946140f92674a4340bf8dd6c568a54d7f774ff7cf9bd891b9ba564f428a2" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/prometheus}" shape="note"];
  "sha256:15f7a25d1ab03964d321366c9faec2a0a94654d5f6f81c84d93a0ede9a3d5411" [label="/bin/sh -c go get -d" shape="box"];
  "sha256:0520d8df32223d5dd578b3e97eb8a9d54efecfa1120d3203713221ed1306c908" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/random}" shape="note"];
  "sha256:a6629268b52714ff3ab66ce939315289345e627e096121c721f6e410eec5ecaa" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:b9fceadd6e590911417fafbc52590d7101aa6b888bfcfc6031a4d8178574cb02" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/simple}" shape="note"];
  "sha256:3a9940d27caea8968aee946eb9c6f50607dc1c506b73e4ac47bef5d37483ed04" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" [label="docker-image://docker.io/prom/busybox:latest" shape="ellipse"];
  "sha256:6d4ba0a79705a76e9354af8858878cc90da47960bc6cd3e9c05053e18d0b54aa" [label="copy{src=/go/src/github.com/prometheus/client_golang/examples/random, dest=/},copy{src=/go/src/github.com/prometheus/client_golang/examples/simple, dest=/}" shape="note"];
  "sha256:f61bc77bb4b87e8476ca8c6b03b1472a4daa975bb289565b5c2e895b562dcf9a" [label="sha256:f61bc77bb4b87e8476ca8c6b03b1472a4daa975bb289565b5c2e895b562dcf9a" shape="plaintext"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" -> "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label=""];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" -> "sha256:44f4ea5a6f5006315be8154c7d62a34c50379b72517608d21e5333f8c612d02a" [label=""];
  "sha256:b618ddac03fb789720a628b69daa253a5b6325427352c21d78d952eba0506f06" -> "sha256:44f4ea5a6f5006315be8154c7d62a34c50379b72517608d21e5333f8c612d02a" [label=""];
  "sha256:44f4ea5a6f5006315be8154c7d62a34c50379b72517608d21e5333f8c612d02a" -> "sha256:5fef946140f92674a4340bf8dd6c568a54d7f774ff7cf9bd891b9ba564f428a2" [label=""];
  "sha256:5fef946140f92674a4340bf8dd6c568a54d7f774ff7cf9bd891b9ba564f428a2" -> "sha256:15f7a25d1ab03964d321366c9faec2a0a94654d5f6f81c84d93a0ede9a3d5411" [label=""];
  "sha256:15f7a25d1ab03964d321366c9faec2a0a94654d5f6f81c84d93a0ede9a3d5411" -> "sha256:0520d8df32223d5dd578b3e97eb8a9d54efecfa1120d3203713221ed1306c908" [label=""];
  "sha256:0520d8df32223d5dd578b3e97eb8a9d54efecfa1120d3203713221ed1306c908" -> "sha256:a6629268b52714ff3ab66ce939315289345e627e096121c721f6e410eec5ecaa" [label=""];
  "sha256:a6629268b52714ff3ab66ce939315289345e627e096121c721f6e410eec5ecaa" -> "sha256:b9fceadd6e590911417fafbc52590d7101aa6b888bfcfc6031a4d8178574cb02" [label=""];
  "sha256:b9fceadd6e590911417fafbc52590d7101aa6b888bfcfc6031a4d8178574cb02" -> "sha256:3a9940d27caea8968aee946eb9c6f50607dc1c506b73e4ac47bef5d37483ed04" [label=""];
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" -> "sha256:6d4ba0a79705a76e9354af8858878cc90da47960bc6cd3e9c05053e18d0b54aa" [label=""];
  "sha256:3a9940d27caea8968aee946eb9c6f50607dc1c506b73e4ac47bef5d37483ed04" -> "sha256:6d4ba0a79705a76e9354af8858878cc90da47960bc6cd3e9c05053e18d0b54aa" [label=""];
  "sha256:6d4ba0a79705a76e9354af8858878cc90da47960bc6cd3e9c05053e18d0b54aa" -> "sha256:f61bc77bb4b87e8476ca8c6b03b1472a4daa975bb289565b5c2e895b562dcf9a" [label=""];
}

