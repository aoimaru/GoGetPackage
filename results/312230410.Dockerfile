[app/sources/312230410.Dockerfile]
digraph {
  "sha256:59dc65af6ea46319eced2ce5d5b24378b4c5173700e494820d8f4db4b8345486" [label="docker-image://docker.io/wqael/docker:conda3-cuda9" shape="ellipse"];
  "sha256:b913b97995661c8247f5e3fd8bd9fa1c4254bda34e2a7e24cccafd5941ddad70" [label="/bin/sh -c conda install pytorch torchvision cudatoolkit=9.0 -c pytorch --quiet     && conda clean -tipsy" shape="box"];
  "sha256:751a67e4fdf8fa52a5df3b229660e1c5058f00750f03ee10d6018a2f05cdef02" [label="sha256:751a67e4fdf8fa52a5df3b229660e1c5058f00750f03ee10d6018a2f05cdef02" shape="plaintext"];
  "sha256:59dc65af6ea46319eced2ce5d5b24378b4c5173700e494820d8f4db4b8345486" -> "sha256:b913b97995661c8247f5e3fd8bd9fa1c4254bda34e2a7e24cccafd5941ddad70" [label=""];
  "sha256:b913b97995661c8247f5e3fd8bd9fa1c4254bda34e2a7e24cccafd5941ddad70" -> "sha256:751a67e4fdf8fa52a5df3b229660e1c5058f00750f03ee10d6018a2f05cdef02" [label=""];
}

