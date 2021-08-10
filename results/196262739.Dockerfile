[app/sources/196262739.Dockerfile]
digraph {
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" [label="docker-image://docker.io/library/golang:1.10.1" shape="ellipse"];
  "sha256:4962a46e3bf56098be12ba1cf67c27922cbb2e1a9cdee62364542d15ff312e91" [label="mkdir{path=/src/github.com/coreos}" shape="note"];
  "sha256:aa5ef1ae801dee8f65babe2e3e27024f0267229d72b0ddb27dec8749b79a5f41" [label="local://context" shape="ellipse"];
  "sha256:5c3f70292b9841cf0e3c4f9721650ba0b2c681cd4e804e957a29d63d796c9655" [label="copy{src=/, dest=/src/github.com/coreos/aws-auth-proxy}" shape="note"];
  "sha256:8a5736c18d0e67df704cf85da4327bade316950e282e573393fa4c697d9248d1" [label="mkdir{path=/src/github.com/coreos/aws-auth-proxy}" shape="note"];
  "sha256:1ca58ebc0461df55976c8f851fb238d845bf19854241875599c86973d981efb3" [label="/bin/sh -c go install github.com/coreos/aws-auth-proxy" shape="box"];
  "sha256:28d740e028b903d1e68237832966fb3c8ed7f7314b19151a032f605f1edc59cc" [label="sha256:28d740e028b903d1e68237832966fb3c8ed7f7314b19151a032f605f1edc59cc" shape="plaintext"];
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" -> "sha256:4962a46e3bf56098be12ba1cf67c27922cbb2e1a9cdee62364542d15ff312e91" [label=""];
  "sha256:4962a46e3bf56098be12ba1cf67c27922cbb2e1a9cdee62364542d15ff312e91" -> "sha256:5c3f70292b9841cf0e3c4f9721650ba0b2c681cd4e804e957a29d63d796c9655" [label=""];
  "sha256:aa5ef1ae801dee8f65babe2e3e27024f0267229d72b0ddb27dec8749b79a5f41" -> "sha256:5c3f70292b9841cf0e3c4f9721650ba0b2c681cd4e804e957a29d63d796c9655" [label=""];
  "sha256:5c3f70292b9841cf0e3c4f9721650ba0b2c681cd4e804e957a29d63d796c9655" -> "sha256:8a5736c18d0e67df704cf85da4327bade316950e282e573393fa4c697d9248d1" [label=""];
  "sha256:8a5736c18d0e67df704cf85da4327bade316950e282e573393fa4c697d9248d1" -> "sha256:1ca58ebc0461df55976c8f851fb238d845bf19854241875599c86973d981efb3" [label=""];
  "sha256:1ca58ebc0461df55976c8f851fb238d845bf19854241875599c86973d981efb3" -> "sha256:28d740e028b903d1e68237832966fb3c8ed7f7314b19151a032f605f1edc59cc" [label=""];
}

