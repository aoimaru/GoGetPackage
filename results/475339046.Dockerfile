[app/sources/475339046.Dockerfile]
digraph {
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" [label="docker-image://docker.io/google/cloud-sdk:latest" shape="ellipse"];
  "sha256:1b8876547c85ac79b13b9296a905c9b3efc65f6fe437c03f3003d7bf5441a268" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:cf2a00245b143eeacc952a2cacafd96dc4c23b8ef4f78965290d24b85e4ff7b8" [label="local://context" shape="ellipse"];
  "sha256:335186e3d667d7627a710b4dd50e161edce9a21488526ac1663ad418b644d4ba" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:4999812c7fb97cf7e32b57d3ec82a8794912ce861740ed4e8d01f3da524845f2" [label="/bin/sh -c chmod a+x /*.sh" shape="box"];
  "sha256:6f43e9389bda36264c2e4f872eb13145d3d90f036dbc5941427b5331630a2760" [label="sha256:6f43e9389bda36264c2e4f872eb13145d3d90f036dbc5941427b5331630a2760" shape="plaintext"];
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" -> "sha256:1b8876547c85ac79b13b9296a905c9b3efc65f6fe437c03f3003d7bf5441a268" [label=""];
  "sha256:1b8876547c85ac79b13b9296a905c9b3efc65f6fe437c03f3003d7bf5441a268" -> "sha256:335186e3d667d7627a710b4dd50e161edce9a21488526ac1663ad418b644d4ba" [label=""];
  "sha256:cf2a00245b143eeacc952a2cacafd96dc4c23b8ef4f78965290d24b85e4ff7b8" -> "sha256:335186e3d667d7627a710b4dd50e161edce9a21488526ac1663ad418b644d4ba" [label=""];
  "sha256:335186e3d667d7627a710b4dd50e161edce9a21488526ac1663ad418b644d4ba" -> "sha256:4999812c7fb97cf7e32b57d3ec82a8794912ce861740ed4e8d01f3da524845f2" [label=""];
  "sha256:4999812c7fb97cf7e32b57d3ec82a8794912ce861740ed4e8d01f3da524845f2" -> "sha256:6f43e9389bda36264c2e4f872eb13145d3d90f036dbc5941427b5331630a2760" [label=""];
}

