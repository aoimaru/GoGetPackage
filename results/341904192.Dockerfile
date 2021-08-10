[app/sources/341904192.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:38483ecb402b1f4b1166c8ec823af9e9deb797d006a089e77d7f5be3419c0745" [label="local://context" shape="ellipse"];
  "sha256:e7b305fa47fbc0428102bcf717b847d06ecdc5981db4d25531360513ffe9e8cf" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:961199c666f3b342dbf6a57de711574c8f1b238974f124002bff1b2bddd42d1b" [label="pip install pykka" shape="box"];
  "sha256:c9dafc500486898e1de6e17c6e7a9ba39eb2974d3d3896db2dc3b463bbcae0f5" [label="sha256:c9dafc500486898e1de6e17c6e7a9ba39eb2974d3d3896db2dc3b463bbcae0f5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e7b305fa47fbc0428102bcf717b847d06ecdc5981db4d25531360513ffe9e8cf" [label=""];
  "sha256:38483ecb402b1f4b1166c8ec823af9e9deb797d006a089e77d7f5be3419c0745" -> "sha256:e7b305fa47fbc0428102bcf717b847d06ecdc5981db4d25531360513ffe9e8cf" [label=""];
  "sha256:e7b305fa47fbc0428102bcf717b847d06ecdc5981db4d25531360513ffe9e8cf" -> "sha256:961199c666f3b342dbf6a57de711574c8f1b238974f124002bff1b2bddd42d1b" [label=""];
  "sha256:961199c666f3b342dbf6a57de711574c8f1b238974f124002bff1b2bddd42d1b" -> "sha256:c9dafc500486898e1de6e17c6e7a9ba39eb2974d3d3896db2dc3b463bbcae0f5" [label=""];
}

