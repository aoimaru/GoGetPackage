[app/sources/360651423.Dockerfile]
[33mWARN[0m[0002] reference for unknown type: application/octet-stream  [33mdigest[0m="sha256:8ecba0e9bd481f27b172d1a0ff04269981946aa1aaa91da3b2f41380031ed865" [33mmediatype[0m=application/octet-stream [33msize[0m=4699
digraph {
  "sha256:543df6c5abb4ea7ec300bc0391bde61473b6c12d4fe562830fdc7bf5804b72ff" [label="docker-image://docker.io/library/golang:1.6.2" shape="ellipse"];
  "sha256:10317969ca91aa28f83c317d2853927a57ef96f70410b67cb0a94ed8d2e9564b" [label="/bin/sh -c mkdir -p /go/src/github.com/cpuguy83" shape="box"];
  "sha256:3a8f757d7be852a418ceaf1202078adfb01603e254c7357e3434e5c4876d7438" [label="/bin/sh -c mkdir -p /go/src/github.com/cpuguy83     && git clone -b v1.0.5 https://github.com/cpuguy83/go-md2man.git /go/src/github.com/cpuguy83/go-md2man     && cd /go/src/github.com/cpuguy83/go-md2man     && go get -v ./..." shape="box"];
  "sha256:994fbd2b6afbe9848d675e7b9cc1a01fd6a854a1740ccdc37bc0ac3c4c698408" [label="sha256:994fbd2b6afbe9848d675e7b9cc1a01fd6a854a1740ccdc37bc0ac3c4c698408" shape="plaintext"];
  "sha256:543df6c5abb4ea7ec300bc0391bde61473b6c12d4fe562830fdc7bf5804b72ff" -> "sha256:10317969ca91aa28f83c317d2853927a57ef96f70410b67cb0a94ed8d2e9564b" [label=""];
  "sha256:10317969ca91aa28f83c317d2853927a57ef96f70410b67cb0a94ed8d2e9564b" -> "sha256:3a8f757d7be852a418ceaf1202078adfb01603e254c7357e3434e5c4876d7438" [label=""];
  "sha256:3a8f757d7be852a418ceaf1202078adfb01603e254c7357e3434e5c4876d7438" -> "sha256:994fbd2b6afbe9848d675e7b9cc1a01fd6a854a1740ccdc37bc0ac3c4c698408" [label=""];
}

