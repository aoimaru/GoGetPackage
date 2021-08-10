[app/sources/274338601.Dockerfile]
digraph {
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" [label="docker-image://docker.io/library/golang:1.9@sha256:8b5968585131604a92af02f5690713efadf029cc8dad53f79280b87a80eb1354" shape="ellipse"];
  "sha256:c9db4e54acf6d27c75d22f16582c8b0279d953b00005ae684526b8577cf4eef6" [label="/bin/sh -c apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2f0b28d3051224416075d5b7fbad4fc6f427b7c59c4bd1a51885c65d021b1fca" [label="mkdir{path=/go/src/github.com/soundscapecloud/soundscape}" shape="note"];
  "sha256:fd2cf2aa3d3b3ed1c92b11185c393ce3f53d727b6667f2dd9c1f1640e0491dfc" [label="/bin/sh -c go get     github.com/jteeuwen/go-bindata/...     github.com/PuerkitoBio/goquery     github.com/armon/circbuf     github.com/disintegration/imaging     github.com/dustin/go-humanize     github.com/julienschmidt/httprouter     github.com/eduncan911/podcast     github.com/rylio/ytdl     go.uber.org/zap     golang.org/x/crypto/acme/autocert" shape="box"];
  "sha256:7a3645bef95452f461e6934903c9da5d97c7a77483e83882d147c1488858f058" [label="local://context" shape="ellipse"];
  "sha256:3a02080b6a8b4b929098a856e53180e2e9abd021b893a058a6c8d2c92bccacf9" [label="copy{src=/*.go, dest=/go/src/github.com/soundscapecloud/soundscape/}" shape="note"];
  "sha256:44a0fd0b152fa7ccea700bb50ddfbfcb26cf9810c6ab59e11384ce3339a9aea0" [label="copy{src=/internal, dest=/go/src/github.com/soundscapecloud/soundscape/internal}" shape="note"];
  "sha256:86a91f5583c4fcdda7d19ffce4e61acd48f093c56370d162c43aebfc9174e900" [label="copy{src=/static, dest=/go/src/github.com/soundscapecloud/soundscape/static}" shape="note"];
  "sha256:e6d936e82a078d1ee7693571149b9b8c480d370a2fa8c2d502f698e569766b42" [label="copy{src=/templates, dest=/go/src/github.com/soundscapecloud/soundscape/templates}" shape="note"];
  "sha256:1a9f76a842fae57b05a7059d22fa455ccbdca16baef4b0d226180e4b10e46d6b" [label="/bin/sh -c go fmt &&     go vet --all &&     go-bindata --pkg main static/... templates/..." shape="box"];
  "sha256:7cb5437cc9c1039ece6d2cd09554e7c184dafa8e634c804ac5f0bca19f5e1ae8" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64     go build -v --compiler gc --ldflags \"-extldflags -static -s -w -X main.version=${BUILD_VERSION}\" -o /usr/bin/soundscape-linux-amd64" shape="box"];
  "sha256:670b16605b5be8fba9e6fdce017a105fb794760c52ffe1378f4b49b82e6418f5" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7     go build -v --compiler gc --ldflags \"-extldflags -static -s -w -X main.version=${BUILD_VERSION}\" -o /usr/bin/soundscape-linux-armv7" shape="box"];
  "sha256:66addb80de06f348a6c4a9d978191e5a942dc2b57cb400a87f3d6285088f3e07" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=arm64     go build -v --compiler gc --ldflags \"-extldflags -static -s -w -X main.version=${BUILD_VERSION}\" -o /usr/bin/soundscape-linux-arm64" shape="box"];
  "sha256:3840c6456bc913514e86746413f2929f3bf8088a5b28bddad41a9b6a96f702e8" [label="sha256:3840c6456bc913514e86746413f2929f3bf8088a5b28bddad41a9b6a96f702e8" shape="plaintext"];
  "sha256:bb6b04e789abc09047e8588c14f6509b7f35510a96b59871c06bb922123848fd" -> "sha256:c9db4e54acf6d27c75d22f16582c8b0279d953b00005ae684526b8577cf4eef6" [label=""];
  "sha256:c9db4e54acf6d27c75d22f16582c8b0279d953b00005ae684526b8577cf4eef6" -> "sha256:2f0b28d3051224416075d5b7fbad4fc6f427b7c59c4bd1a51885c65d021b1fca" [label=""];
  "sha256:2f0b28d3051224416075d5b7fbad4fc6f427b7c59c4bd1a51885c65d021b1fca" -> "sha256:fd2cf2aa3d3b3ed1c92b11185c393ce3f53d727b6667f2dd9c1f1640e0491dfc" [label=""];
  "sha256:fd2cf2aa3d3b3ed1c92b11185c393ce3f53d727b6667f2dd9c1f1640e0491dfc" -> "sha256:3a02080b6a8b4b929098a856e53180e2e9abd021b893a058a6c8d2c92bccacf9" [label=""];
  "sha256:7a3645bef95452f461e6934903c9da5d97c7a77483e83882d147c1488858f058" -> "sha256:3a02080b6a8b4b929098a856e53180e2e9abd021b893a058a6c8d2c92bccacf9" [label=""];
  "sha256:3a02080b6a8b4b929098a856e53180e2e9abd021b893a058a6c8d2c92bccacf9" -> "sha256:44a0fd0b152fa7ccea700bb50ddfbfcb26cf9810c6ab59e11384ce3339a9aea0" [label=""];
  "sha256:7a3645bef95452f461e6934903c9da5d97c7a77483e83882d147c1488858f058" -> "sha256:44a0fd0b152fa7ccea700bb50ddfbfcb26cf9810c6ab59e11384ce3339a9aea0" [label=""];
  "sha256:44a0fd0b152fa7ccea700bb50ddfbfcb26cf9810c6ab59e11384ce3339a9aea0" -> "sha256:86a91f5583c4fcdda7d19ffce4e61acd48f093c56370d162c43aebfc9174e900" [label=""];
  "sha256:7a3645bef95452f461e6934903c9da5d97c7a77483e83882d147c1488858f058" -> "sha256:86a91f5583c4fcdda7d19ffce4e61acd48f093c56370d162c43aebfc9174e900" [label=""];
  "sha256:86a91f5583c4fcdda7d19ffce4e61acd48f093c56370d162c43aebfc9174e900" -> "sha256:e6d936e82a078d1ee7693571149b9b8c480d370a2fa8c2d502f698e569766b42" [label=""];
  "sha256:7a3645bef95452f461e6934903c9da5d97c7a77483e83882d147c1488858f058" -> "sha256:e6d936e82a078d1ee7693571149b9b8c480d370a2fa8c2d502f698e569766b42" [label=""];
  "sha256:e6d936e82a078d1ee7693571149b9b8c480d370a2fa8c2d502f698e569766b42" -> "sha256:1a9f76a842fae57b05a7059d22fa455ccbdca16baef4b0d226180e4b10e46d6b" [label=""];
  "sha256:1a9f76a842fae57b05a7059d22fa455ccbdca16baef4b0d226180e4b10e46d6b" -> "sha256:7cb5437cc9c1039ece6d2cd09554e7c184dafa8e634c804ac5f0bca19f5e1ae8" [label=""];
  "sha256:7cb5437cc9c1039ece6d2cd09554e7c184dafa8e634c804ac5f0bca19f5e1ae8" -> "sha256:670b16605b5be8fba9e6fdce017a105fb794760c52ffe1378f4b49b82e6418f5" [label=""];
  "sha256:670b16605b5be8fba9e6fdce017a105fb794760c52ffe1378f4b49b82e6418f5" -> "sha256:66addb80de06f348a6c4a9d978191e5a942dc2b57cb400a87f3d6285088f3e07" [label=""];
  "sha256:66addb80de06f348a6c4a9d978191e5a942dc2b57cb400a87f3d6285088f3e07" -> "sha256:3840c6456bc913514e86746413f2929f3bf8088a5b28bddad41a9b6a96f702e8" [label=""];
}

