[app/sources/181503775.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:9f82aeea9661bb4ebf4a1209dcddb90e7f996ae4e3616f2baeaa17bd23bec040" [label="local://context" shape="ellipse"];
  "sha256:3f564b3d505ebee38346533f7c09df3b3d9174e543411a40ea085307a01c82e2" [label="copy{src=/raffler.py, dest=/tmp/}" shape="note"];
  "sha256:32effe552641c7495f8dbef9916b0666167a6002b78906855d383c2b61c0c0ea" [label="sha256:32effe552641c7495f8dbef9916b0666167a6002b78906855d383c2b61c0c0ea" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:3f564b3d505ebee38346533f7c09df3b3d9174e543411a40ea085307a01c82e2" [label=""];
  "sha256:9f82aeea9661bb4ebf4a1209dcddb90e7f996ae4e3616f2baeaa17bd23bec040" -> "sha256:3f564b3d505ebee38346533f7c09df3b3d9174e543411a40ea085307a01c82e2" [label=""];
  "sha256:3f564b3d505ebee38346533f7c09df3b3d9174e543411a40ea085307a01c82e2" -> "sha256:32effe552641c7495f8dbef9916b0666167a6002b78906855d383c2b61c0c0ea" [label=""];
}

