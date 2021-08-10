[app/sources/351090434.Dockerfile]
digraph {
  "sha256:348efdc1c31966fd3bb4e40f06f63117e8149a87e1fd66ea7ff8dfdd1094fc9f" [label="local://context" shape="ellipse"];
  "sha256:6e65f007e58b4143a662cbecf741392c72f0496d497ae00de3616b8fa6b428d4" [label="docker-image://docker.io/library/python:3.6.1-onbuild@sha256:d2975d912d675da27d2299c59aa388455385e9733921e7d746570431f9594cb3" shape="ellipse"];
  "sha256:1536ac3146e883715e7b746907c2e3ad0f5d34e114aea68b3fe5c16ba1795dfe" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:16aa94f090ecdfdb743a8fe7c4d203c5f1ba4f45196ba289ef179d3e4a2d4db6" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:ccf52ec0ebe3511446b8b77f72bc211c6c6b3e488fc0ababe89b2b87deb89324" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:4df2ef23578e790e5cda1528f67255fd30bf7fc4d06def7198dbe0213b9a33c1" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:b3226923da5b34fdc999f49a3ce4050c1bca1039dd4cd3325b197c59320fa2f1" [label="sha256:b3226923da5b34fdc999f49a3ce4050c1bca1039dd4cd3325b197c59320fa2f1" shape="plaintext"];
  "sha256:6e65f007e58b4143a662cbecf741392c72f0496d497ae00de3616b8fa6b428d4" -> "sha256:1536ac3146e883715e7b746907c2e3ad0f5d34e114aea68b3fe5c16ba1795dfe" [label=""];
  "sha256:348efdc1c31966fd3bb4e40f06f63117e8149a87e1fd66ea7ff8dfdd1094fc9f" -> "sha256:1536ac3146e883715e7b746907c2e3ad0f5d34e114aea68b3fe5c16ba1795dfe" [label=""];
  "sha256:1536ac3146e883715e7b746907c2e3ad0f5d34e114aea68b3fe5c16ba1795dfe" -> "sha256:16aa94f090ecdfdb743a8fe7c4d203c5f1ba4f45196ba289ef179d3e4a2d4db6" [label=""];
  "sha256:16aa94f090ecdfdb743a8fe7c4d203c5f1ba4f45196ba289ef179d3e4a2d4db6" -> "sha256:ccf52ec0ebe3511446b8b77f72bc211c6c6b3e488fc0ababe89b2b87deb89324" [label=""];
  "sha256:348efdc1c31966fd3bb4e40f06f63117e8149a87e1fd66ea7ff8dfdd1094fc9f" -> "sha256:ccf52ec0ebe3511446b8b77f72bc211c6c6b3e488fc0ababe89b2b87deb89324" [label=""];
  "sha256:ccf52ec0ebe3511446b8b77f72bc211c6c6b3e488fc0ababe89b2b87deb89324" -> "sha256:4df2ef23578e790e5cda1528f67255fd30bf7fc4d06def7198dbe0213b9a33c1" [label=""];
  "sha256:4df2ef23578e790e5cda1528f67255fd30bf7fc4d06def7198dbe0213b9a33c1" -> "sha256:b3226923da5b34fdc999f49a3ce4050c1bca1039dd4cd3325b197c59320fa2f1" [label=""];
}

