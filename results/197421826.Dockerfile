[app/sources/197421826.Dockerfile]
digraph {
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" [label="docker-image://docker.io/library/node:4" shape="ellipse"];
  "sha256:0ebe0dc6ad3b7a82a599daca89946a29516bdc1db2564140d675350864ae6e7b" [label="local://context" shape="ellipse"];
  "sha256:8c21e069c656c99985938224ddc5c3d3f6115821353d98ad1a597420dc9e21b2" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:b1719cd36e0db65c8d2caeae9c0f7f98fca570ca40f890c84b55c6645eb69b86" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:490fa40de84347ac1440256d1d41a678921846b9265b18972b262c6c28328dcc" [label="sha256:490fa40de84347ac1440256d1d41a678921846b9265b18972b262c6c28328dcc" shape="plaintext"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" -> "sha256:8c21e069c656c99985938224ddc5c3d3f6115821353d98ad1a597420dc9e21b2" [label=""];
  "sha256:0ebe0dc6ad3b7a82a599daca89946a29516bdc1db2564140d675350864ae6e7b" -> "sha256:8c21e069c656c99985938224ddc5c3d3f6115821353d98ad1a597420dc9e21b2" [label=""];
  "sha256:8c21e069c656c99985938224ddc5c3d3f6115821353d98ad1a597420dc9e21b2" -> "sha256:b1719cd36e0db65c8d2caeae9c0f7f98fca570ca40f890c84b55c6645eb69b86" [label=""];
  "sha256:b1719cd36e0db65c8d2caeae9c0f7f98fca570ca40f890c84b55c6645eb69b86" -> "sha256:490fa40de84347ac1440256d1d41a678921846b9265b18972b262c6c28328dcc" [label=""];
}
