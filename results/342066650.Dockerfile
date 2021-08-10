[app/sources/342066650.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2dc0c35c620373c492d921f0c270538adcabd325829069b9f17e46e4e4586adc" [label="local://context" shape="ellipse"];
  "sha256:708a8eddc4ec18b68c94ba6b7692e721172fa96cdd566282950ec492e2e7577e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:b9cd4cae217f60a52ab51ddc192c02c25a5ba0c61053b57ceea18bfbad2cd684" [label="pip install dxpy" shape="box"];
  "sha256:c89f298dfbbccd35c9419215122119ba4ba36e1439cfafe492ef2376528c3623" [label="sha256:c89f298dfbbccd35c9419215122119ba4ba36e1439cfafe492ef2376528c3623" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:708a8eddc4ec18b68c94ba6b7692e721172fa96cdd566282950ec492e2e7577e" [label=""];
  "sha256:2dc0c35c620373c492d921f0c270538adcabd325829069b9f17e46e4e4586adc" -> "sha256:708a8eddc4ec18b68c94ba6b7692e721172fa96cdd566282950ec492e2e7577e" [label=""];
  "sha256:708a8eddc4ec18b68c94ba6b7692e721172fa96cdd566282950ec492e2e7577e" -> "sha256:b9cd4cae217f60a52ab51ddc192c02c25a5ba0c61053b57ceea18bfbad2cd684" [label=""];
  "sha256:b9cd4cae217f60a52ab51ddc192c02c25a5ba0c61053b57ceea18bfbad2cd684" -> "sha256:c89f298dfbbccd35c9419215122119ba4ba36e1439cfafe492ef2376528c3623" [label=""];
}

