[app/sources/237435840.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e8772ec21bd047650569e852cffd81d7292d5291e9d6eae378e48e09e25fa306" [label="local://context" shape="ellipse"];
  "sha256:603bc63defe5a2bbe18091112699c63749c39b545e053aafe742345c3ffc1d5f" [label="copy{src=/netwatcher, dest=/usr/local/bin/netwatcher}" shape="note"];
  "sha256:a772cec3e7da0ae8eb4242580757f1c992c5f93088474034586009e6ebefd995" [label="/bin/sh -c apk add --no-cache --virtual .tools curl libcap iputils  &&  adduser -u 147 -D -H -s /sbin/nologin danm &&  chown root:danm /usr/local/bin/netwatcher &&  chmod 750 /usr/local/bin/netwatcher &&  setcap cap_sys_ptrace,cap_sys_admin,cap_net_admin=eip /usr/local/bin/netwatcher &&  setcap cap_net_raw=eip /usr/sbin/arping &&  apk del .tools" shape="box"];
  "sha256:52caff6b64045f94b24dabfe16f11450b8e123eae056029745ee8d293d36d336" [label="sha256:52caff6b64045f94b24dabfe16f11450b8e123eae056029745ee8d293d36d336" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:603bc63defe5a2bbe18091112699c63749c39b545e053aafe742345c3ffc1d5f" [label=""];
  "sha256:e8772ec21bd047650569e852cffd81d7292d5291e9d6eae378e48e09e25fa306" -> "sha256:603bc63defe5a2bbe18091112699c63749c39b545e053aafe742345c3ffc1d5f" [label=""];
  "sha256:603bc63defe5a2bbe18091112699c63749c39b545e053aafe742345c3ffc1d5f" -> "sha256:a772cec3e7da0ae8eb4242580757f1c992c5f93088474034586009e6ebefd995" [label=""];
  "sha256:a772cec3e7da0ae8eb4242580757f1c992c5f93088474034586009e6ebefd995" -> "sha256:52caff6b64045f94b24dabfe16f11450b8e123eae056029745ee8d293d36d336" [label=""];
}

