[app/sources/252774755.Dockerfile]
digraph {
  "sha256:b5393d3b43a99db588f3a6db2099008c1406489f1fffe15e9e05b3f9ddad4ee4" [label="docker-image://docker.io/bassoman/nodejs:latest" shape="ellipse"];
  "sha256:1ae2211aeebdbf24ade330d76f8d47364d94dd889748999e8c54800022a317ef" [label="/bin/sh -c npm install -g nodemon bower grunt" shape="box"];
  "sha256:3b12cc1bc938d4d876be955535312d3cbbbabd08747500dbb8213efd38facf89" [label="/bin/sh -c apt-get install -y python-pip python-virtualenv python-setuptools" shape="box"];
  "sha256:a6f4dafe21944dfcb12859ed690771a0cec2f63b9743d9c2a8b871d80df4f90e" [label="/bin/sh -c easy_install virtualenv" shape="box"];
  "sha256:0f5cb17913e853ea3dd77df4ee7678f10d018edc0254364e3fd8d4466f9e9cf9" [label="/bin/sh -c echo '{ \"allow_root\": true }' > /root/.bowerrc" shape="box"];
  "sha256:f5ec60ec7dea34a75f499264599bf7ad4f179f4ec08915531aa54f8cdceb5bd5" [label="sha256:f5ec60ec7dea34a75f499264599bf7ad4f179f4ec08915531aa54f8cdceb5bd5" shape="plaintext"];
  "sha256:b5393d3b43a99db588f3a6db2099008c1406489f1fffe15e9e05b3f9ddad4ee4" -> "sha256:1ae2211aeebdbf24ade330d76f8d47364d94dd889748999e8c54800022a317ef" [label=""];
  "sha256:1ae2211aeebdbf24ade330d76f8d47364d94dd889748999e8c54800022a317ef" -> "sha256:3b12cc1bc938d4d876be955535312d3cbbbabd08747500dbb8213efd38facf89" [label=""];
  "sha256:3b12cc1bc938d4d876be955535312d3cbbbabd08747500dbb8213efd38facf89" -> "sha256:a6f4dafe21944dfcb12859ed690771a0cec2f63b9743d9c2a8b871d80df4f90e" [label=""];
  "sha256:a6f4dafe21944dfcb12859ed690771a0cec2f63b9743d9c2a8b871d80df4f90e" -> "sha256:0f5cb17913e853ea3dd77df4ee7678f10d018edc0254364e3fd8d4466f9e9cf9" [label=""];
  "sha256:0f5cb17913e853ea3dd77df4ee7678f10d018edc0254364e3fd8d4466f9e9cf9" -> "sha256:f5ec60ec7dea34a75f499264599bf7ad4f179f4ec08915531aa54f8cdceb5bd5" [label=""];
}

