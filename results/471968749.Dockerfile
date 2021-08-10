[app/sources/471968749.Dockerfile]
digraph {
  "sha256:888adbd368a6bf7e72cb32367217f329014b78664421fcc66319bf9a7ab15e03" [label="docker-image://docker.io/chryswoods/acquire-base:latest@sha256:2fe6157a5dcb2109ffb85b54dc3f0d9a3977c0a80b8171670b546b19d1ffc81c" shape="ellipse"];
  "sha256:7bd089e857fa62b87e624c2af9b5fac2ab739ae489cb2fb5b49e3f57e6439be0" [label="mkdir{path=/function}" shape="note"];
  "sha256:c73894f4c61bc5f3ab529d836fcaca961d5fd9c62d44ee9b3a029183dfdb4a5d" [label="/bin/sh -c mkdir $PYTHON_EXT/compute" shape="box"];
  "sha256:20b1f48567b2a7798eace0ec6d23688e89342b9aa52fafa2b297ee9a14426b20" [label="local://context" shape="ellipse"];
  "sha256:612841e968a444c3751a3e8c181709f4b8222b254a86a601f5a45c4a1f37888b" [label="copy{src=/*.py, dest=/compute/}" shape="note"];
  "sha256:602ba7fd1db69033f3371e094656838de959e5ed960277700527637386cb2f5d" [label="/bin/sh -c python3 -m compileall $PYTHON_EXT/compute/*.py" shape="box"];
  "sha256:66ced36d7ddc1c0bc291d6e0186681160dcee7ecbfe3b18ba4710a83cc539cf6" [label="copy{src=/route.py, dest=/function/},copy{src=/secret_key, dest=/function/}" shape="note"];
  "sha256:15f9756c8b2eecf39f7c516cd97ecb858a53d1c34a82b369ea1786755e161c00" [label="sha256:15f9756c8b2eecf39f7c516cd97ecb858a53d1c34a82b369ea1786755e161c00" shape="plaintext"];
  "sha256:888adbd368a6bf7e72cb32367217f329014b78664421fcc66319bf9a7ab15e03" -> "sha256:7bd089e857fa62b87e624c2af9b5fac2ab739ae489cb2fb5b49e3f57e6439be0" [label=""];
  "sha256:7bd089e857fa62b87e624c2af9b5fac2ab739ae489cb2fb5b49e3f57e6439be0" -> "sha256:c73894f4c61bc5f3ab529d836fcaca961d5fd9c62d44ee9b3a029183dfdb4a5d" [label=""];
  "sha256:c73894f4c61bc5f3ab529d836fcaca961d5fd9c62d44ee9b3a029183dfdb4a5d" -> "sha256:612841e968a444c3751a3e8c181709f4b8222b254a86a601f5a45c4a1f37888b" [label=""];
  "sha256:20b1f48567b2a7798eace0ec6d23688e89342b9aa52fafa2b297ee9a14426b20" -> "sha256:612841e968a444c3751a3e8c181709f4b8222b254a86a601f5a45c4a1f37888b" [label=""];
  "sha256:612841e968a444c3751a3e8c181709f4b8222b254a86a601f5a45c4a1f37888b" -> "sha256:602ba7fd1db69033f3371e094656838de959e5ed960277700527637386cb2f5d" [label=""];
  "sha256:602ba7fd1db69033f3371e094656838de959e5ed960277700527637386cb2f5d" -> "sha256:66ced36d7ddc1c0bc291d6e0186681160dcee7ecbfe3b18ba4710a83cc539cf6" [label=""];
  "sha256:20b1f48567b2a7798eace0ec6d23688e89342b9aa52fafa2b297ee9a14426b20" -> "sha256:66ced36d7ddc1c0bc291d6e0186681160dcee7ecbfe3b18ba4710a83cc539cf6" [label=""];
  "sha256:66ced36d7ddc1c0bc291d6e0186681160dcee7ecbfe3b18ba4710a83cc539cf6" -> "sha256:15f9756c8b2eecf39f7c516cd97ecb858a53d1c34a82b369ea1786755e161c00" [label=""];
}

