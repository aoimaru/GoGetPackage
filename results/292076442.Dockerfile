[app/sources/292076442.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend}" shape="note"];
  "sha256:ec460c667d3c626d1b2d95e6cadfcfc84045c05fd5c972c1f58f92db39aa0783" [label="local://context" shape="ellipse"];
  "sha256:f44e6f6963d13bc9792f43e28a5b3d3828296aa1d6962fd5f4512cf665888758" [label="copy{src=/, dest=/go/src/github.com/martin-helmich/cloudnativego-backend/}" shape="note"];
  "sha256:be3cc9968e5f5e2f573e9a9a8449aa89780b6ef1b1efbb3b5140987abfb81211" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend/src/bookingservice}" shape="note"];
  "sha256:45995775f57e4840682797abde85a8362de12680e6265fff560bdb70e51a740b" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o bookingservice" shape="box"];
  "sha256:b026e90351abc7ee99c5265a74640d37903290e13a6252ba6e42f462a174df65" [label="copy{src=/go/src/github.com/martin-helmich/cloudnativego-backend/src/bookingservice/bookingservice, dest=/bookingservice}" shape="note"];
  "sha256:c792f51a0081fb13dfff541c550959772d703f318a67012b647899a5ec83153b" [label="sha256:c792f51a0081fb13dfff541c550959772d703f318a67012b647899a5ec83153b" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label=""];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" -> "sha256:f44e6f6963d13bc9792f43e28a5b3d3828296aa1d6962fd5f4512cf665888758" [label=""];
  "sha256:ec460c667d3c626d1b2d95e6cadfcfc84045c05fd5c972c1f58f92db39aa0783" -> "sha256:f44e6f6963d13bc9792f43e28a5b3d3828296aa1d6962fd5f4512cf665888758" [label=""];
  "sha256:f44e6f6963d13bc9792f43e28a5b3d3828296aa1d6962fd5f4512cf665888758" -> "sha256:be3cc9968e5f5e2f573e9a9a8449aa89780b6ef1b1efbb3b5140987abfb81211" [label=""];
  "sha256:be3cc9968e5f5e2f573e9a9a8449aa89780b6ef1b1efbb3b5140987abfb81211" -> "sha256:45995775f57e4840682797abde85a8362de12680e6265fff560bdb70e51a740b" [label=""];
  "sha256:45995775f57e4840682797abde85a8362de12680e6265fff560bdb70e51a740b" -> "sha256:b026e90351abc7ee99c5265a74640d37903290e13a6252ba6e42f462a174df65" [label=""];
  "sha256:b026e90351abc7ee99c5265a74640d37903290e13a6252ba6e42f462a174df65" -> "sha256:c792f51a0081fb13dfff541c550959772d703f318a67012b647899a5ec83153b" [label=""];
}

