[app/sources/252798516.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:1aebdfdca941a6eaf2d2c9147c8af54a5cee6ae203762ac7ce18ec62a92dbef6" [label="/bin/sh -c apk --no-cache add git" shape="box"];
  "sha256:9d86df8b59ad6efb6cb3ff322010de9bfa9cdceae619b91f4e45f12fe822e0ef" [label="local://context" shape="ellipse"];
  "sha256:c829750afaaaa1c904b33a4c7dcc89731254b41c4e80f6f47f9ebe111da1751b" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:baa724e777796356346bbbea21f74bbe479b2d0154e7fba24d6c2b52756153ae" [label="/bin/sh -c pip install -r /requirements.txt" shape="box"];
  "sha256:8dd7cd8ac656d8074ac05da2d26348e6f59b78a613cac3e873a00a6a2f29455c" [label="/bin/sh -c adduser -D -u 9000 app && mkdir /repo && chown -R app:app /repo && mkdir /usr/src/actor && chown -R app:app /usr/src/actor" shape="box"];
  "sha256:5d1cdb98a36c351dc86981857f833d5635f9372643256032c7f3ba614a576d15" [label="copy{src=/entrypoint.py, dest=/usr/src/actor}" shape="note"];
  "sha256:443103e169bb2a65995a6ac4e18a633a12222d6fbc6a2f9fa913e567405aa9b0" [label="mkdir{path=/repo}" shape="note"];
  "sha256:251b1bfba2c28883148efdaa07f1abda98c77ca2aeabc586dd04e7ab90fc8a70" [label="sha256:251b1bfba2c28883148efdaa07f1abda98c77ca2aeabc586dd04e7ab90fc8a70" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:1aebdfdca941a6eaf2d2c9147c8af54a5cee6ae203762ac7ce18ec62a92dbef6" [label=""];
  "sha256:1aebdfdca941a6eaf2d2c9147c8af54a5cee6ae203762ac7ce18ec62a92dbef6" -> "sha256:c829750afaaaa1c904b33a4c7dcc89731254b41c4e80f6f47f9ebe111da1751b" [label=""];
  "sha256:9d86df8b59ad6efb6cb3ff322010de9bfa9cdceae619b91f4e45f12fe822e0ef" -> "sha256:c829750afaaaa1c904b33a4c7dcc89731254b41c4e80f6f47f9ebe111da1751b" [label=""];
  "sha256:c829750afaaaa1c904b33a4c7dcc89731254b41c4e80f6f47f9ebe111da1751b" -> "sha256:baa724e777796356346bbbea21f74bbe479b2d0154e7fba24d6c2b52756153ae" [label=""];
  "sha256:baa724e777796356346bbbea21f74bbe479b2d0154e7fba24d6c2b52756153ae" -> "sha256:8dd7cd8ac656d8074ac05da2d26348e6f59b78a613cac3e873a00a6a2f29455c" [label=""];
  "sha256:8dd7cd8ac656d8074ac05da2d26348e6f59b78a613cac3e873a00a6a2f29455c" -> "sha256:5d1cdb98a36c351dc86981857f833d5635f9372643256032c7f3ba614a576d15" [label=""];
  "sha256:9d86df8b59ad6efb6cb3ff322010de9bfa9cdceae619b91f4e45f12fe822e0ef" -> "sha256:5d1cdb98a36c351dc86981857f833d5635f9372643256032c7f3ba614a576d15" [label=""];
  "sha256:5d1cdb98a36c351dc86981857f833d5635f9372643256032c7f3ba614a576d15" -> "sha256:443103e169bb2a65995a6ac4e18a633a12222d6fbc6a2f9fa913e567405aa9b0" [label=""];
  "sha256:443103e169bb2a65995a6ac4e18a633a12222d6fbc6a2f9fa913e567405aa9b0" -> "sha256:251b1bfba2c28883148efdaa07f1abda98c77ca2aeabc586dd04e7ab90fc8a70" [label=""];
}

