[app/sources/289672683.Dockerfile]
digraph {
  "sha256:5d0dc130b0521bb43e25ea5c0d919f7c7abf5a6e18351db9f0db968f08fb7a8d" [label="local://context" shape="ellipse"];
  "sha256:4f26683ab2eb82c08437dd734df3e9e1bd7ec779e9afeb117c91fc342165577c" [label="copy{src=/goproxy, dest=/goproxy}" shape="note"];
  "sha256:24e978fa386692e445798c891bb939c94ba6d62147eeae289d1575155485e823" [label="sha256:24e978fa386692e445798c891bb939c94ba6d62147eeae289d1575155485e823" shape="plaintext"];
  "sha256:5d0dc130b0521bb43e25ea5c0d919f7c7abf5a6e18351db9f0db968f08fb7a8d" -> "sha256:4f26683ab2eb82c08437dd734df3e9e1bd7ec779e9afeb117c91fc342165577c" [label=""];
  "sha256:4f26683ab2eb82c08437dd734df3e9e1bd7ec779e9afeb117c91fc342165577c" -> "sha256:24e978fa386692e445798c891bb939c94ba6d62147eeae289d1575155485e823" [label=""];
}

