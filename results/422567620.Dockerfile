[app/sources/422567620.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d374a7d0388cfe731a28bfaf617859c166c33f1710ceed2131c1f31c0f94df2a" [label="/bin/sh -c apt-get update && apt-get install make -y" shape="box"];
  "sha256:d35cf81498b27377c41f3ec5daa4bd05deb3f3fae57500b441b5a039e7c4946d" [label="local://context" shape="ellipse"];
  "sha256:5e4e2b49a531c4c61132be976e9f2398347aa4c4889d3ae41bc5f2c860c89069" [label="copy{src=/Makefile, dest=/}" shape="note"];
  "sha256:0aa270468d9511ce1eec45b49749bb372231b813d0f7242910d9ee9dca99a5da" [label="/bin/sh -c make install" shape="box"];
  "sha256:6bf83f71e9765ee67621348561f6a3e2a0619605ab2eb960f929754e2cb2233a" [label="copy{src=/server, dest=/bin/server}" shape="note"];
  "sha256:74dfb3b8f62b89dfbd2e97f3c5a4f01dad94487917982be1a1ca94f7a2c76fe7" [label="http://www.eicar.org/download/eicar.com.txt" shape="ellipse"];
  "sha256:1425917366c4b43ccd917b4d589f9d505a5dc2e05f9365326fa5c6f876be5f0f" [label="copy{src=/eicar.com.txt, dest=/}" shape="note"];
  "sha256:c7add301af90bb07f2b0b1be106331c4de400433f514fee871c84f53a08deef4" [label="sha256:c7add301af90bb07f2b0b1be106331c4de400433f514fee871c84f53a08deef4" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d374a7d0388cfe731a28bfaf617859c166c33f1710ceed2131c1f31c0f94df2a" [label=""];
  "sha256:d374a7d0388cfe731a28bfaf617859c166c33f1710ceed2131c1f31c0f94df2a" -> "sha256:5e4e2b49a531c4c61132be976e9f2398347aa4c4889d3ae41bc5f2c860c89069" [label=""];
  "sha256:d35cf81498b27377c41f3ec5daa4bd05deb3f3fae57500b441b5a039e7c4946d" -> "sha256:5e4e2b49a531c4c61132be976e9f2398347aa4c4889d3ae41bc5f2c860c89069" [label=""];
  "sha256:5e4e2b49a531c4c61132be976e9f2398347aa4c4889d3ae41bc5f2c860c89069" -> "sha256:0aa270468d9511ce1eec45b49749bb372231b813d0f7242910d9ee9dca99a5da" [label=""];
  "sha256:0aa270468d9511ce1eec45b49749bb372231b813d0f7242910d9ee9dca99a5da" -> "sha256:6bf83f71e9765ee67621348561f6a3e2a0619605ab2eb960f929754e2cb2233a" [label=""];
  "sha256:d35cf81498b27377c41f3ec5daa4bd05deb3f3fae57500b441b5a039e7c4946d" -> "sha256:6bf83f71e9765ee67621348561f6a3e2a0619605ab2eb960f929754e2cb2233a" [label=""];
  "sha256:6bf83f71e9765ee67621348561f6a3e2a0619605ab2eb960f929754e2cb2233a" -> "sha256:1425917366c4b43ccd917b4d589f9d505a5dc2e05f9365326fa5c6f876be5f0f" [label=""];
  "sha256:74dfb3b8f62b89dfbd2e97f3c5a4f01dad94487917982be1a1ca94f7a2c76fe7" -> "sha256:1425917366c4b43ccd917b4d589f9d505a5dc2e05f9365326fa5c6f876be5f0f" [label=""];
  "sha256:1425917366c4b43ccd917b4d589f9d505a5dc2e05f9365326fa5c6f876be5f0f" -> "sha256:c7add301af90bb07f2b0b1be106331c4de400433f514fee871c84f53a08deef4" [label=""];
}

