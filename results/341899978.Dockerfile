[app/sources/341899978.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:3c2df8f197710bdefadac3dd7c0a6c255c8c1c368829f3dd948c6548fe8f04c7" [label="local://context" shape="ellipse"];
  "sha256:c4565a5deb33eabc38b299fcab2bb8591f6aee5bbcddb815114f6f4229514212" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2bc935da2ac91442d21a241d646854162b3d121f9bf9bc7cf6f5d66c1af41fb2" [label="sha256:2bc935da2ac91442d21a241d646854162b3d121f9bf9bc7cf6f5d66c1af41fb2" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:c4565a5deb33eabc38b299fcab2bb8591f6aee5bbcddb815114f6f4229514212" [label=""];
  "sha256:3c2df8f197710bdefadac3dd7c0a6c255c8c1c368829f3dd948c6548fe8f04c7" -> "sha256:c4565a5deb33eabc38b299fcab2bb8591f6aee5bbcddb815114f6f4229514212" [label=""];
  "sha256:c4565a5deb33eabc38b299fcab2bb8591f6aee5bbcddb815114f6f4229514212" -> "sha256:2bc935da2ac91442d21a241d646854162b3d121f9bf9bc7cf6f5d66c1af41fb2" [label=""];
}

