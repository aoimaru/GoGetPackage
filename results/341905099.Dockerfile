[app/sources/341905099.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dd1ef146d53833304995e88b86707c70647d65a5285ee4c26f2d34fc4ced6d0c" [label="local://context" shape="ellipse"];
  "sha256:1231dd42a95e5913545a104ef399dd6d31756dccb7dd2ecb2068edf217f13eba" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9eafaf3f320696bb32d8a3c2eaee101446cea76cc02efc737c0497d499cc8486" [label="sha256:9eafaf3f320696bb32d8a3c2eaee101446cea76cc02efc737c0497d499cc8486" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1231dd42a95e5913545a104ef399dd6d31756dccb7dd2ecb2068edf217f13eba" [label=""];
  "sha256:dd1ef146d53833304995e88b86707c70647d65a5285ee4c26f2d34fc4ced6d0c" -> "sha256:1231dd42a95e5913545a104ef399dd6d31756dccb7dd2ecb2068edf217f13eba" [label=""];
  "sha256:1231dd42a95e5913545a104ef399dd6d31756dccb7dd2ecb2068edf217f13eba" -> "sha256:9eafaf3f320696bb32d8a3c2eaee101446cea76cc02efc737c0497d499cc8486" [label=""];
}

