[app/sources/456437402.Dockerfile]
digraph {
  "sha256:5ecad5f9b6dcda6e87bdd607ab26eb7bd36ecb352759a6ac818f6605ae9b1db6" [label="docker-image://docker.io/microsoft/aspnetcore-build:latest" shape="ellipse"];
  "sha256:11eed3ac581e3823bcca51e420aa0cfa52d24794e2c288fe1722c481a63328ad" [label="/bin/sh -c curl -o /tmp/packagescache.tar.gz https://dist.asp.net/packagecache/aspnetcore.packagecache-1.0.1-debian.8-x64.tar.gz &&     mkdir /packagescache && cd /packagescache &&     tar xvf /tmp/packagescache.tar.gz &&     rm /tmp/packagescache.tar.gz &&     cd /" shape="box"];
  "sha256:341cdde21395476f0b8a896826e3545c35fddf0894ba6640b3609b01c37df3a1" [label="local://context" shape="ellipse"];
  "sha256:0f7db24e9e66bbb908e139f214fbf72de58ab5d974dc7dff6d2d39382d2f4eb8" [label="copy{src=/, dest=/sampleAspnetCoreWebApiApp}" shape="note"];
  "sha256:2f7ee6399c4e7f6dca72e96a32701a9ff29047125f3f200d65f62e73e6be3132" [label="mkdir{path=/sampleAspnetCoreWebApiApp}" shape="note"];
  "sha256:a14c930bd669c871fe0d3393f7024ad64840482684ed7ad025f63074009d64a9" [label="sha256:a14c930bd669c871fe0d3393f7024ad64840482684ed7ad025f63074009d64a9" shape="plaintext"];
  "sha256:5ecad5f9b6dcda6e87bdd607ab26eb7bd36ecb352759a6ac818f6605ae9b1db6" -> "sha256:11eed3ac581e3823bcca51e420aa0cfa52d24794e2c288fe1722c481a63328ad" [label=""];
  "sha256:11eed3ac581e3823bcca51e420aa0cfa52d24794e2c288fe1722c481a63328ad" -> "sha256:0f7db24e9e66bbb908e139f214fbf72de58ab5d974dc7dff6d2d39382d2f4eb8" [label=""];
  "sha256:341cdde21395476f0b8a896826e3545c35fddf0894ba6640b3609b01c37df3a1" -> "sha256:0f7db24e9e66bbb908e139f214fbf72de58ab5d974dc7dff6d2d39382d2f4eb8" [label=""];
  "sha256:0f7db24e9e66bbb908e139f214fbf72de58ab5d974dc7dff6d2d39382d2f4eb8" -> "sha256:2f7ee6399c4e7f6dca72e96a32701a9ff29047125f3f200d65f62e73e6be3132" [label=""];
  "sha256:2f7ee6399c4e7f6dca72e96a32701a9ff29047125f3f200d65f62e73e6be3132" -> "sha256:a14c930bd669c871fe0d3393f7024ad64840482684ed7ad025f63074009d64a9" [label=""];
}

