[app/sources/339610017.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:b1dad73dc4ed5b1f8d4f792ab8c08771d0bca650e5ea11fac2df43f391d9c66f" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6755adb52b9daadc4575b57b75e665f5da88dd2191b68ba8833092835e5cdbcc" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a88a3b288925ad91876d039032663c7a90ec78e91caf73834c3a17a8ad1ac96f" [label="/bin/sh -c pip install --no-cache-dir --upgrade pip" shape="box"];
  "sha256:84428ab56b92dbbdcebcb50ab6c3217ecb9a0d72eec656d90e5320b1b066b98f" [label="local://context" shape="ellipse"];
  "sha256:52fb0597add2bbfa370f3fb29e16cb52118606800b8cc5ccadc34e285f6b0cda" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:4cb29bb9473df176052fd7d9ed071e35f57162d75cbdc2337595e88eccc4d859" [label="/bin/sh -c pip install --no-cache-dir --process-dependency-links -e .[dev]" shape="box"];
  "sha256:0665b11c89d8b90021b5a2d78ead1a8831869786d292e95634fad0effed91ee0" [label="sha256:0665b11c89d8b90021b5a2d78ead1a8831869786d292e95634fad0effed91ee0" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:b1dad73dc4ed5b1f8d4f792ab8c08771d0bca650e5ea11fac2df43f391d9c66f" [label=""];
  "sha256:b1dad73dc4ed5b1f8d4f792ab8c08771d0bca650e5ea11fac2df43f391d9c66f" -> "sha256:6755adb52b9daadc4575b57b75e665f5da88dd2191b68ba8833092835e5cdbcc" [label=""];
  "sha256:6755adb52b9daadc4575b57b75e665f5da88dd2191b68ba8833092835e5cdbcc" -> "sha256:a88a3b288925ad91876d039032663c7a90ec78e91caf73834c3a17a8ad1ac96f" [label=""];
  "sha256:a88a3b288925ad91876d039032663c7a90ec78e91caf73834c3a17a8ad1ac96f" -> "sha256:52fb0597add2bbfa370f3fb29e16cb52118606800b8cc5ccadc34e285f6b0cda" [label=""];
  "sha256:84428ab56b92dbbdcebcb50ab6c3217ecb9a0d72eec656d90e5320b1b066b98f" -> "sha256:52fb0597add2bbfa370f3fb29e16cb52118606800b8cc5ccadc34e285f6b0cda" [label=""];
  "sha256:52fb0597add2bbfa370f3fb29e16cb52118606800b8cc5ccadc34e285f6b0cda" -> "sha256:4cb29bb9473df176052fd7d9ed071e35f57162d75cbdc2337595e88eccc4d859" [label=""];
  "sha256:4cb29bb9473df176052fd7d9ed071e35f57162d75cbdc2337595e88eccc4d859" -> "sha256:0665b11c89d8b90021b5a2d78ead1a8831869786d292e95634fad0effed91ee0" [label=""];
}

