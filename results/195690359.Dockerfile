[app/sources/195690359.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:cfc8384e495f172567932b3f597f4810a82631e8ebd5d052dd4da1a52d04a4f7" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y netcat python-virtualenv python-pip &&     apt-get clean" shape="box"];
  "sha256:41695efce21c87c786f5f5ba822c9c6b6b95ca9986b20a0715eeba68ba850e3e" [label="/bin/sh -c set -x   go get \tgithub.com/pierrre/gotestcover \tgithub.com/tsg/goautotest \tgolang.org/x/tools/cmd/vet" shape="box"];
  "sha256:041b42a732c810f472cb08fed8cd3eb53b8e5c6f0de31f2fde8bc5bd358cc0c4" [label="/bin/sh -c test -d ${PYTHON_ENV} || virtualenv ${PYTHON_ENV}" shape="box"];
  "sha256:58c7a19786304fcb7eeeb886f9550229e32a43b7b831b8735ca84ee86117d33d" [label="local://context" shape="ellipse"];
  "sha256:189294c551b378b5509d1cc0491c0f2ac96b57e7b0175e9f87dd46204ffdeae6" [label="copy{src=/tests/system/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:841fb7939a33258bb0419ce700ff01c4c91451b1920b19936754ffca3faa1893" [label="/bin/sh -c . ${PYTHON_ENV}/bin/activate && pip install -U pip" shape="box"];
  "sha256:fd74b3b2a6f11fe19fbc65af54a03b1284e701dacefd06e0be6b25c1ca39efac" [label="/bin/sh -c . ${PYTHON_ENV}/bin/activate && pip install -Ur /tmp/requirements.txt" shape="box"];
  "sha256:5b6937206cf70f29cc3a9ba5241a71700c8816c8600701c2c356d192a034648e" [label="/bin/sh -c mkdir -p /etc/pki/tls/certs" shape="box"];
  "sha256:97e5d4e6145eefe0f307b87fff44f02d45e47e65e8453c352ffd4e28f0e1d4c3" [label="sha256:97e5d4e6145eefe0f307b87fff44f02d45e47e65e8453c352ffd4e28f0e1d4c3" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:cfc8384e495f172567932b3f597f4810a82631e8ebd5d052dd4da1a52d04a4f7" [label=""];
  "sha256:cfc8384e495f172567932b3f597f4810a82631e8ebd5d052dd4da1a52d04a4f7" -> "sha256:41695efce21c87c786f5f5ba822c9c6b6b95ca9986b20a0715eeba68ba850e3e" [label=""];
  "sha256:41695efce21c87c786f5f5ba822c9c6b6b95ca9986b20a0715eeba68ba850e3e" -> "sha256:041b42a732c810f472cb08fed8cd3eb53b8e5c6f0de31f2fde8bc5bd358cc0c4" [label=""];
  "sha256:041b42a732c810f472cb08fed8cd3eb53b8e5c6f0de31f2fde8bc5bd358cc0c4" -> "sha256:189294c551b378b5509d1cc0491c0f2ac96b57e7b0175e9f87dd46204ffdeae6" [label=""];
  "sha256:58c7a19786304fcb7eeeb886f9550229e32a43b7b831b8735ca84ee86117d33d" -> "sha256:189294c551b378b5509d1cc0491c0f2ac96b57e7b0175e9f87dd46204ffdeae6" [label=""];
  "sha256:189294c551b378b5509d1cc0491c0f2ac96b57e7b0175e9f87dd46204ffdeae6" -> "sha256:841fb7939a33258bb0419ce700ff01c4c91451b1920b19936754ffca3faa1893" [label=""];
  "sha256:841fb7939a33258bb0419ce700ff01c4c91451b1920b19936754ffca3faa1893" -> "sha256:fd74b3b2a6f11fe19fbc65af54a03b1284e701dacefd06e0be6b25c1ca39efac" [label=""];
  "sha256:fd74b3b2a6f11fe19fbc65af54a03b1284e701dacefd06e0be6b25c1ca39efac" -> "sha256:5b6937206cf70f29cc3a9ba5241a71700c8816c8600701c2c356d192a034648e" [label=""];
  "sha256:5b6937206cf70f29cc3a9ba5241a71700c8816c8600701c2c356d192a034648e" -> "sha256:97e5d4e6145eefe0f307b87fff44f02d45e47e65e8453c352ffd4e28f0e1d4c3" [label=""];
}

