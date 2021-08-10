[app/sources/252790520.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:ad48070f911c130804d76f25b9e21a301063b588b87bb61df9b0c2e0a592bed9" [label="local://context" shape="ellipse"];
  "sha256:b0ca472ad6449bc0994099c3bbd3c2a4f00cfccd923829689608db8275fe7a1d" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:cee6a4b9095c3902b60d36f190e43f11ec31d152e6c230cb7ed261a7f9ff5189" [label="mkdir{path=/src}" shape="note"];
  "sha256:33512e181146dfaef36070299ad9504187a4c3fe033d52447fbf8f415ee05bbb" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:f93a7ad985ef115aecdd4f97d94367494285f393fc482bd2d0c9ed3c18311bde" [label="sha256:f93a7ad985ef115aecdd4f97d94367494285f393fc482bd2d0c9ed3c18311bde" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:b0ca472ad6449bc0994099c3bbd3c2a4f00cfccd923829689608db8275fe7a1d" [label=""];
  "sha256:ad48070f911c130804d76f25b9e21a301063b588b87bb61df9b0c2e0a592bed9" -> "sha256:b0ca472ad6449bc0994099c3bbd3c2a4f00cfccd923829689608db8275fe7a1d" [label=""];
  "sha256:b0ca472ad6449bc0994099c3bbd3c2a4f00cfccd923829689608db8275fe7a1d" -> "sha256:cee6a4b9095c3902b60d36f190e43f11ec31d152e6c230cb7ed261a7f9ff5189" [label=""];
  "sha256:cee6a4b9095c3902b60d36f190e43f11ec31d152e6c230cb7ed261a7f9ff5189" -> "sha256:33512e181146dfaef36070299ad9504187a4c3fe033d52447fbf8f415ee05bbb" [label=""];
  "sha256:33512e181146dfaef36070299ad9504187a4c3fe033d52447fbf8f415ee05bbb" -> "sha256:f93a7ad985ef115aecdd4f97d94367494285f393fc482bd2d0c9ed3c18311bde" [label=""];
}

