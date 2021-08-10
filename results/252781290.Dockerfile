[app/sources/252781290.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip" shape="box"];
  "sha256:667c01360776861ffcac3f237cb23b86c221c790a08c0563aaca7266a0144dff" [label="local://context" shape="ellipse"];
  "sha256:6795a3bf3cb2fb0851a2c07871d981caf8970ed4aeabf296356a211c3a79931b" [label="copy{src=/webapp/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:f3014484ec3543cc4618e2e458a7b281ce54d0c929df018aaa110cc67f55c7b2" [label="/bin/sh -c pip install -qr /tmp/requirements.txt" shape="box"];
  "sha256:1bcfc5259b3e6fcf04d60b8bf1761f5ddec3f9345429e60b347e7170b1990d15" [label="copy{src=/webapp, dest=/opt/webapp/}" shape="note"];
  "sha256:97cd02cecb23824b2e613fe00851819b0afa8bf0c1ad0725d8e1ebccb1d8096d" [label="mkdir{path=/opt/webapp}" shape="note"];
  "sha256:2edac0ac0fce3bbc41580b6aa86fbcf8feb78c01dd26400378581e12c2f8dd65" [label="sha256:2edac0ac0fce3bbc41580b6aa86fbcf8feb78c01dd26400378581e12c2f8dd65" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" [label=""];
  "sha256:7cf64d63aa9e5ccc9713542055da2d6ff730675d2d15116915cf83e00aaaa2fa" -> "sha256:6795a3bf3cb2fb0851a2c07871d981caf8970ed4aeabf296356a211c3a79931b" [label=""];
  "sha256:667c01360776861ffcac3f237cb23b86c221c790a08c0563aaca7266a0144dff" -> "sha256:6795a3bf3cb2fb0851a2c07871d981caf8970ed4aeabf296356a211c3a79931b" [label=""];
  "sha256:6795a3bf3cb2fb0851a2c07871d981caf8970ed4aeabf296356a211c3a79931b" -> "sha256:f3014484ec3543cc4618e2e458a7b281ce54d0c929df018aaa110cc67f55c7b2" [label=""];
  "sha256:f3014484ec3543cc4618e2e458a7b281ce54d0c929df018aaa110cc67f55c7b2" -> "sha256:1bcfc5259b3e6fcf04d60b8bf1761f5ddec3f9345429e60b347e7170b1990d15" [label=""];
  "sha256:667c01360776861ffcac3f237cb23b86c221c790a08c0563aaca7266a0144dff" -> "sha256:1bcfc5259b3e6fcf04d60b8bf1761f5ddec3f9345429e60b347e7170b1990d15" [label=""];
  "sha256:1bcfc5259b3e6fcf04d60b8bf1761f5ddec3f9345429e60b347e7170b1990d15" -> "sha256:97cd02cecb23824b2e613fe00851819b0afa8bf0c1ad0725d8e1ebccb1d8096d" [label=""];
  "sha256:97cd02cecb23824b2e613fe00851819b0afa8bf0c1ad0725d8e1ebccb1d8096d" -> "sha256:2edac0ac0fce3bbc41580b6aa86fbcf8feb78c01dd26400378581e12c2f8dd65" [label=""];
}

