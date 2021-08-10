[app/sources/331145104.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:c0a01f67a71fcfed3a67d261f952507d87b8a0fa3a0c84439561447099f24723" [label="local://context" shape="ellipse"];
  "sha256:e5ccbb3404de7a87f3fc8e5bddef6bfdb780a2f1bbaed28e34397719fc80fc5b" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:8ff832d298e19c333f70441a402568b783a0342240dc90526889966a350d1329" [label="/bin/sh -c pip install -r /requirements.txt" shape="box"];
  "sha256:0127e02d947758cbd8eea6992b73f410992bacee126bf3c39808b04b4928c584" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:19a7d11a5a84fd0932cb3a7a75dd1b5a9c6c029eea2a35b8f0805d35a1052e25" [label="/bin/sh -c adduser -S rsd_backend" shape="box"];
  "sha256:032c09189f5162aa54d94cf7294a1f86f23b7f2811db9c106a3d1b54213a4fec" [label="mkdir{path=/app}" shape="note"];
  "sha256:08c12b960c03a0b0db9843c7c69c009bf3b2a4bfde384476b8483c8d79290b55" [label="sha256:08c12b960c03a0b0db9843c7c69c009bf3b2a4bfde384476b8483c8d79290b55" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:e5ccbb3404de7a87f3fc8e5bddef6bfdb780a2f1bbaed28e34397719fc80fc5b" [label=""];
  "sha256:c0a01f67a71fcfed3a67d261f952507d87b8a0fa3a0c84439561447099f24723" -> "sha256:e5ccbb3404de7a87f3fc8e5bddef6bfdb780a2f1bbaed28e34397719fc80fc5b" [label=""];
  "sha256:e5ccbb3404de7a87f3fc8e5bddef6bfdb780a2f1bbaed28e34397719fc80fc5b" -> "sha256:8ff832d298e19c333f70441a402568b783a0342240dc90526889966a350d1329" [label=""];
  "sha256:8ff832d298e19c333f70441a402568b783a0342240dc90526889966a350d1329" -> "sha256:0127e02d947758cbd8eea6992b73f410992bacee126bf3c39808b04b4928c584" [label=""];
  "sha256:c0a01f67a71fcfed3a67d261f952507d87b8a0fa3a0c84439561447099f24723" -> "sha256:0127e02d947758cbd8eea6992b73f410992bacee126bf3c39808b04b4928c584" [label=""];
  "sha256:0127e02d947758cbd8eea6992b73f410992bacee126bf3c39808b04b4928c584" -> "sha256:19a7d11a5a84fd0932cb3a7a75dd1b5a9c6c029eea2a35b8f0805d35a1052e25" [label=""];
  "sha256:19a7d11a5a84fd0932cb3a7a75dd1b5a9c6c029eea2a35b8f0805d35a1052e25" -> "sha256:032c09189f5162aa54d94cf7294a1f86f23b7f2811db9c106a3d1b54213a4fec" [label=""];
  "sha256:032c09189f5162aa54d94cf7294a1f86f23b7f2811db9c106a3d1b54213a4fec" -> "sha256:08c12b960c03a0b0db9843c7c69c009bf3b2a4bfde384476b8483c8d79290b55" [label=""];
}

