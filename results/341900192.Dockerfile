[app/sources/341900192.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2d0fa8f4e7e3fd11610cfe7554fddddf559e675f0cb525cb9bacae4a4fcf6d59" [label="local://context" shape="ellipse"];
  "sha256:650a5fd04e7f90c0f7abdf7e25cbde96b7ff843489e7ea147b20bf9b1300135c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:634918a5c6e5633840f938ea16e1119cde7d707917a70f2321c7c0224a87b6ca" [label="pip install mock" shape="box"];
  "sha256:97949eda0d0a7bc35a5abe0b2c9e20dac57667e302789cad0b3b7662b2f13032" [label="sha256:97949eda0d0a7bc35a5abe0b2c9e20dac57667e302789cad0b3b7662b2f13032" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:650a5fd04e7f90c0f7abdf7e25cbde96b7ff843489e7ea147b20bf9b1300135c" [label=""];
  "sha256:2d0fa8f4e7e3fd11610cfe7554fddddf559e675f0cb525cb9bacae4a4fcf6d59" -> "sha256:650a5fd04e7f90c0f7abdf7e25cbde96b7ff843489e7ea147b20bf9b1300135c" [label=""];
  "sha256:650a5fd04e7f90c0f7abdf7e25cbde96b7ff843489e7ea147b20bf9b1300135c" -> "sha256:634918a5c6e5633840f938ea16e1119cde7d707917a70f2321c7c0224a87b6ca" [label=""];
  "sha256:634918a5c6e5633840f938ea16e1119cde7d707917a70f2321c7c0224a87b6ca" -> "sha256:97949eda0d0a7bc35a5abe0b2c9e20dac57667e302789cad0b3b7662b2f13032" [label=""];
}

