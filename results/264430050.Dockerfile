[app/sources/264430050.Dockerfile]
digraph {
  "sha256:1b19be319df159e26cfc924dd33db6c8ef1351edc1897b1f1c6d9d56a0cdd700" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:017eef0b616011647b269b5c65826e2e2ebddbe5d1f8c1e56b3599fb14fabec8" shape="ellipse"];
  "sha256:4e7242a89a93b8385d7bbb0d8f6436057f421a0745cbef5d3968ad8ed3c7e012" [label="local://context" shape="ellipse"];
  "sha256:0d4bf96314df57b992e22054e3c58b362cf42f200190021e5157b2aa2a9bbb16" [label="copy{src=/ubuntu_deps.sh, dest=/deps.sh}" shape="note"];
  "sha256:4e5760185090685c28985cec3d4cc3d2a3c94bdf3f4478bacccdc514ea7d47bb" [label="/bin/sh -c /deps.sh && rm /deps.sh" shape="box"];
  "sha256:62c884d79144f9c2cd0dda96b73e394ec8421e7f7f22cf9adca46247bd2676c3" [label="sha256:62c884d79144f9c2cd0dda96b73e394ec8421e7f7f22cf9adca46247bd2676c3" shape="plaintext"];
  "sha256:1b19be319df159e26cfc924dd33db6c8ef1351edc1897b1f1c6d9d56a0cdd700" -> "sha256:0d4bf96314df57b992e22054e3c58b362cf42f200190021e5157b2aa2a9bbb16" [label=""];
  "sha256:4e7242a89a93b8385d7bbb0d8f6436057f421a0745cbef5d3968ad8ed3c7e012" -> "sha256:0d4bf96314df57b992e22054e3c58b362cf42f200190021e5157b2aa2a9bbb16" [label=""];
  "sha256:0d4bf96314df57b992e22054e3c58b362cf42f200190021e5157b2aa2a9bbb16" -> "sha256:4e5760185090685c28985cec3d4cc3d2a3c94bdf3f4478bacccdc514ea7d47bb" [label=""];
  "sha256:4e5760185090685c28985cec3d4cc3d2a3c94bdf3f4478bacccdc514ea7d47bb" -> "sha256:62c884d79144f9c2cd0dda96b73e394ec8421e7f7f22cf9adca46247bd2676c3" [label=""];
}

