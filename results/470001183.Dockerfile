[app/sources/470001183.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:49a55c1ea7b5002af301b41a230fb71622c9d7d9468b542bf1fd4caa3c65160d" [label="/bin/sh -c adduser -D -g '' gopher" shape="box"];
  "sha256:bf91a28ce7d6646875013da083debccb93c3bbc80cf1318c9252c20b23e2e7cb" [label="mkdir{path=/data}" shape="note"];
  "sha256:2f60738c87dad3361ff20432450f19f574853b4595d9662a68528e7e88a0ec15" [label="/bin/sh -c apk update" shape="box"];
  "sha256:9874b657b1e89b944fa70e2954c754a494d497d65f310a31fd99f49fee30993c" [label="/bin/sh -c apk --no-cache add ca-certificates tzdata" shape="box"];
  "sha256:d7fff6337dac21c208eeeb4862e2e04e023c03355eb4898e3ad02ea811ece8cf" [label="/bin/sh -c apk add git" shape="box"];
  "sha256:27ef32006a00a8f82d1f0b00b12e7b678e4167cde1e0a82c2e6873b26a309c9b" [label="local://context" shape="ellipse"];
  "sha256:5ed1a40453a55cdad92de3255366ce970f801aa2755bd7b11113c3d155691806" [label="copy{src=/, dest=/data}" shape="note"];
  "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -mod=vendor -installsuffix cgo -ldflags=\"-w -s\" -o /data/entrypoint" shape="box"];
  "sha256:b7dc8e51194def70c184d54a9d2791df2ac435481e8022abb445d05ebd8d4c17" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:f0ddf82cabafd6461bfe374ea192a831f33d5e93cbef10e42ae5b4fd7b1ce9ab" [label="copy{src=/usr/share/zoneinfo, dest=/usr/share/zoneinfo}" shape="note"];
  "sha256:ac327fb1f649b0c2be0c16405be751543a991d9b4e663e33f1a9f54c746cbcb8" [label="copy{src=/etc/passwd, dest=/etc/passwd}" shape="note"];
  "sha256:7909dce2a0f3a8857f7ecd0484cb2049fc6297fba6239e3baefaf4fd61e25782" [label="copy{src=/data, dest=/}" shape="note"];
  "sha256:e85d5d6a4f1dca24f72d74bc88af037338090d0776ab8425707980d586c51fa4" [label="sha256:e85d5d6a4f1dca24f72d74bc88af037338090d0776ab8425707980d586c51fa4" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:49a55c1ea7b5002af301b41a230fb71622c9d7d9468b542bf1fd4caa3c65160d" [label=""];
  "sha256:49a55c1ea7b5002af301b41a230fb71622c9d7d9468b542bf1fd4caa3c65160d" -> "sha256:bf91a28ce7d6646875013da083debccb93c3bbc80cf1318c9252c20b23e2e7cb" [label=""];
  "sha256:bf91a28ce7d6646875013da083debccb93c3bbc80cf1318c9252c20b23e2e7cb" -> "sha256:2f60738c87dad3361ff20432450f19f574853b4595d9662a68528e7e88a0ec15" [label=""];
  "sha256:2f60738c87dad3361ff20432450f19f574853b4595d9662a68528e7e88a0ec15" -> "sha256:9874b657b1e89b944fa70e2954c754a494d497d65f310a31fd99f49fee30993c" [label=""];
  "sha256:9874b657b1e89b944fa70e2954c754a494d497d65f310a31fd99f49fee30993c" -> "sha256:d7fff6337dac21c208eeeb4862e2e04e023c03355eb4898e3ad02ea811ece8cf" [label=""];
  "sha256:d7fff6337dac21c208eeeb4862e2e04e023c03355eb4898e3ad02ea811ece8cf" -> "sha256:5ed1a40453a55cdad92de3255366ce970f801aa2755bd7b11113c3d155691806" [label=""];
  "sha256:27ef32006a00a8f82d1f0b00b12e7b678e4167cde1e0a82c2e6873b26a309c9b" -> "sha256:5ed1a40453a55cdad92de3255366ce970f801aa2755bd7b11113c3d155691806" [label=""];
  "sha256:5ed1a40453a55cdad92de3255366ce970f801aa2755bd7b11113c3d155691806" -> "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" [label=""];
  "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" -> "sha256:b7dc8e51194def70c184d54a9d2791df2ac435481e8022abb445d05ebd8d4c17" [label=""];
  "sha256:b7dc8e51194def70c184d54a9d2791df2ac435481e8022abb445d05ebd8d4c17" -> "sha256:f0ddf82cabafd6461bfe374ea192a831f33d5e93cbef10e42ae5b4fd7b1ce9ab" [label=""];
  "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" -> "sha256:f0ddf82cabafd6461bfe374ea192a831f33d5e93cbef10e42ae5b4fd7b1ce9ab" [label=""];
  "sha256:f0ddf82cabafd6461bfe374ea192a831f33d5e93cbef10e42ae5b4fd7b1ce9ab" -> "sha256:ac327fb1f649b0c2be0c16405be751543a991d9b4e663e33f1a9f54c746cbcb8" [label=""];
  "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" -> "sha256:ac327fb1f649b0c2be0c16405be751543a991d9b4e663e33f1a9f54c746cbcb8" [label=""];
  "sha256:ac327fb1f649b0c2be0c16405be751543a991d9b4e663e33f1a9f54c746cbcb8" -> "sha256:7909dce2a0f3a8857f7ecd0484cb2049fc6297fba6239e3baefaf4fd61e25782" [label=""];
  "sha256:f8b434a478dc19d4418d9a75fa7c090c4a462757b2a8b9de9f16cdd5c1409c69" -> "sha256:7909dce2a0f3a8857f7ecd0484cb2049fc6297fba6239e3baefaf4fd61e25782" [label=""];
  "sha256:7909dce2a0f3a8857f7ecd0484cb2049fc6297fba6239e3baefaf4fd61e25782" -> "sha256:e85d5d6a4f1dca24f72d74bc88af037338090d0776ab8425707980d586c51fa4" [label=""];
}

