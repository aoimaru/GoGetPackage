[app/sources/341898360.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2756f79e5a231f4387d88e625cc7129ee13cfb243486dd6e72657d4d5b66f1b1" [label="local://context" shape="ellipse"];
  "sha256:6b88e9972f62d770bdb0a5b91831e7d4e65990f7dcd0c1b7fbeb8e33680d6018" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9851fda5547aad576663eb6c98c72e3641e14ef1bdb00a74f44cf0514a55a32d" [label="sha256:9851fda5547aad576663eb6c98c72e3641e14ef1bdb00a74f44cf0514a55a32d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6b88e9972f62d770bdb0a5b91831e7d4e65990f7dcd0c1b7fbeb8e33680d6018" [label=""];
  "sha256:2756f79e5a231f4387d88e625cc7129ee13cfb243486dd6e72657d4d5b66f1b1" -> "sha256:6b88e9972f62d770bdb0a5b91831e7d4e65990f7dcd0c1b7fbeb8e33680d6018" [label=""];
  "sha256:6b88e9972f62d770bdb0a5b91831e7d4e65990f7dcd0c1b7fbeb8e33680d6018" -> "sha256:9851fda5547aad576663eb6c98c72e3641e14ef1bdb00a74f44cf0514a55a32d" [label=""];
}

