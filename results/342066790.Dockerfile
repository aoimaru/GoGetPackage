[app/sources/342066790.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:18c3dae99d1381753992bf4df2f49778f18263d01fe2c809933a5e287f945743" [label="local://context" shape="ellipse"];
  "sha256:f7a5e1ba94f041fc12c43ae2e16812cdec6ec0077450f57bf987f9688ad44c00" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:000cd2771de117ae56928a57b457f4b9f7823782c4b630fac3b32cd79b31361a" [label="pip install console" shape="box"];
  "sha256:d31d5726b9f74f07198215484ebd1e2cfeb7f59122b10d8d2bba81ff050cbe7b" [label="sha256:d31d5726b9f74f07198215484ebd1e2cfeb7f59122b10d8d2bba81ff050cbe7b" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:f7a5e1ba94f041fc12c43ae2e16812cdec6ec0077450f57bf987f9688ad44c00" [label=""];
  "sha256:18c3dae99d1381753992bf4df2f49778f18263d01fe2c809933a5e287f945743" -> "sha256:f7a5e1ba94f041fc12c43ae2e16812cdec6ec0077450f57bf987f9688ad44c00" [label=""];
  "sha256:f7a5e1ba94f041fc12c43ae2e16812cdec6ec0077450f57bf987f9688ad44c00" -> "sha256:000cd2771de117ae56928a57b457f4b9f7823782c4b630fac3b32cd79b31361a" [label=""];
  "sha256:000cd2771de117ae56928a57b457f4b9f7823782c4b630fac3b32cd79b31361a" -> "sha256:d31d5726b9f74f07198215484ebd1e2cfeb7f59122b10d8d2bba81ff050cbe7b" [label=""];
}
