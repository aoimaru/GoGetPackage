[app/sources/341899016.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:d2b68f89a545694a10092548fc943875d7511ace028bba0a4ab6ac5a707e6ca8" [label="local://context" shape="ellipse"];
  "sha256:5474663d20ef83bf4e3a9a83a97beb4b5e07fdf066a5da12e726651c371dac32" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:78f4742492a121a5016eb9cc110c1d4b1026e2d48043efca246c96464f068a30" [label="pip install elasticsearch" shape="box"];
  "sha256:193a9cad3ffd6c12888100bc65fec1f0734106a66d77221644764c5bf51ababa" [label="sha256:193a9cad3ffd6c12888100bc65fec1f0734106a66d77221644764c5bf51ababa" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:5474663d20ef83bf4e3a9a83a97beb4b5e07fdf066a5da12e726651c371dac32" [label=""];
  "sha256:d2b68f89a545694a10092548fc943875d7511ace028bba0a4ab6ac5a707e6ca8" -> "sha256:5474663d20ef83bf4e3a9a83a97beb4b5e07fdf066a5da12e726651c371dac32" [label=""];
  "sha256:5474663d20ef83bf4e3a9a83a97beb4b5e07fdf066a5da12e726651c371dac32" -> "sha256:78f4742492a121a5016eb9cc110c1d4b1026e2d48043efca246c96464f068a30" [label=""];
  "sha256:78f4742492a121a5016eb9cc110c1d4b1026e2d48043efca246c96464f068a30" -> "sha256:193a9cad3ffd6c12888100bc65fec1f0734106a66d77221644764c5bf51ababa" [label=""];
}

