[app/sources/252788045.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:3e64b421be0f6965a7b4496e6f8900960979d2e533e49fcb2b9ddd7b7a82b9bf" [label="/bin/sh -c pip install autobahn requests pycrypto numpy prettytable" shape="box"];
  "sha256:6e5de4b22a377442b458551159ba6c370d64c05b43ae2262ecc91a9b6faf6d66" [label="/bin/sh -c git clone https://github.com/xeroc/python-graphenelib" shape="box"];
  "sha256:30348767febc95ce95f9a1cdd5b8784cf2713aaed10055125c9fce2261113494" [label="mkdir{path=/python-graphenelib}" shape="note"];
  "sha256:5d9c7fc7cf0a6cd48e71623f8941dc91affc7d576103929fb99e38ff6267bf64" [label="/bin/sh -c python3 setup.py install" shape="box"];
  "sha256:5b8b317a555cd4b21bcae4f861b6e6d4d89612c07f32ea55f686cadc5c0ce934" [label="local://context" shape="ellipse"];
  "sha256:204a86571beee5dc660ba8b222585b5547d6e25203afa6c072e2bf2599de2dbf" [label="copy{src=/docker/start.py, dest=/start.py}" shape="note"];
  "sha256:73fc27bcb7c822229ff6031b7d8af53e1b0eaec6fc018dc14ac653ef6112bfce" [label="sha256:73fc27bcb7c822229ff6031b7d8af53e1b0eaec6fc018dc14ac653ef6112bfce" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:3e64b421be0f6965a7b4496e6f8900960979d2e533e49fcb2b9ddd7b7a82b9bf" [label=""];
  "sha256:3e64b421be0f6965a7b4496e6f8900960979d2e533e49fcb2b9ddd7b7a82b9bf" -> "sha256:6e5de4b22a377442b458551159ba6c370d64c05b43ae2262ecc91a9b6faf6d66" [label=""];
  "sha256:6e5de4b22a377442b458551159ba6c370d64c05b43ae2262ecc91a9b6faf6d66" -> "sha256:30348767febc95ce95f9a1cdd5b8784cf2713aaed10055125c9fce2261113494" [label=""];
  "sha256:30348767febc95ce95f9a1cdd5b8784cf2713aaed10055125c9fce2261113494" -> "sha256:5d9c7fc7cf0a6cd48e71623f8941dc91affc7d576103929fb99e38ff6267bf64" [label=""];
  "sha256:5d9c7fc7cf0a6cd48e71623f8941dc91affc7d576103929fb99e38ff6267bf64" -> "sha256:204a86571beee5dc660ba8b222585b5547d6e25203afa6c072e2bf2599de2dbf" [label=""];
  "sha256:5b8b317a555cd4b21bcae4f861b6e6d4d89612c07f32ea55f686cadc5c0ce934" -> "sha256:204a86571beee5dc660ba8b222585b5547d6e25203afa6c072e2bf2599de2dbf" [label=""];
  "sha256:204a86571beee5dc660ba8b222585b5547d6e25203afa6c072e2bf2599de2dbf" -> "sha256:73fc27bcb7c822229ff6031b7d8af53e1b0eaec6fc018dc14ac653ef6112bfce" [label=""];
}

