[app/sources/129138764.Dockerfile]
digraph {
  "sha256:e5636f42daeb8c2496c49351e635bf8e0f5e57b22f367204303730732208a205" [label="docker-image://docker.io/pytorch/pytorch:0.4-cuda9-cudnn7-devel@sha256:3f5cd953abc8dae3bdb12d1686982f88f5445ac3f1a325398e834201d0f3580e" shape="ellipse"];
  "sha256:d259e75b682b874ad78100355d1b8928179fb927a3dc833f3a4ddf93f7f35caa" [label="/bin/sh -c apt-get update --fix-missing" shape="box"];
  "sha256:c3ad27de5ffc3c6fabe66f17592c77e3ecd8001cbfecac2251b921e40835b1bf" [label="/bin/sh -c apt-get install -y software-properties-common" shape="box"];
  "sha256:3d05a07935631097bacfe43919bc894bddf0ba03181bd10beea0f5ef7319d0f0" [label="/bin/sh -c apt-get install -y libsm6 libxext6 libxrender1 libfontconfig1" shape="box"];
  "sha256:07fdb7f44f482d5d977d7621182c9e409f6cca7d4e80be0723aeff8b6b521d49" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:0a87bb41129fa6ac383f83bffc8e5142c75a410daa9e44aa6b9c0b4b5fc0d988" [label="/bin/sh -c pip install Cython matplotlib numpy scipy pyyaml packaging tensorboardX scikit-image pillow tqdm gensim" shape="box"];
  "sha256:34bdc00315b309225a421dce28550700226b9600c3f4478b382b26922ac9e4a8" [label="/bin/sh -c pip install pycocotools" shape="box"];
  "sha256:00e294a4c0c673b1d038ce67cf1b6a3c928d53eb159c074b159092787d723ba2" [label="/bin/sh -c conda install opencv" shape="box"];
  "sha256:4b8bc4de6fffae62b99938213920e2f98544ee3bd5ac7586a99b9a8e27f6d42a" [label="sha256:4b8bc4de6fffae62b99938213920e2f98544ee3bd5ac7586a99b9a8e27f6d42a" shape="plaintext"];
  "sha256:e5636f42daeb8c2496c49351e635bf8e0f5e57b22f367204303730732208a205" -> "sha256:d259e75b682b874ad78100355d1b8928179fb927a3dc833f3a4ddf93f7f35caa" [label=""];
  "sha256:d259e75b682b874ad78100355d1b8928179fb927a3dc833f3a4ddf93f7f35caa" -> "sha256:c3ad27de5ffc3c6fabe66f17592c77e3ecd8001cbfecac2251b921e40835b1bf" [label=""];
  "sha256:c3ad27de5ffc3c6fabe66f17592c77e3ecd8001cbfecac2251b921e40835b1bf" -> "sha256:3d05a07935631097bacfe43919bc894bddf0ba03181bd10beea0f5ef7319d0f0" [label=""];
  "sha256:3d05a07935631097bacfe43919bc894bddf0ba03181bd10beea0f5ef7319d0f0" -> "sha256:07fdb7f44f482d5d977d7621182c9e409f6cca7d4e80be0723aeff8b6b521d49" [label=""];
  "sha256:07fdb7f44f482d5d977d7621182c9e409f6cca7d4e80be0723aeff8b6b521d49" -> "sha256:0a87bb41129fa6ac383f83bffc8e5142c75a410daa9e44aa6b9c0b4b5fc0d988" [label=""];
  "sha256:0a87bb41129fa6ac383f83bffc8e5142c75a410daa9e44aa6b9c0b4b5fc0d988" -> "sha256:34bdc00315b309225a421dce28550700226b9600c3f4478b382b26922ac9e4a8" [label=""];
  "sha256:34bdc00315b309225a421dce28550700226b9600c3f4478b382b26922ac9e4a8" -> "sha256:00e294a4c0c673b1d038ce67cf1b6a3c928d53eb159c074b159092787d723ba2" [label=""];
  "sha256:00e294a4c0c673b1d038ce67cf1b6a3c928d53eb159c074b159092787d723ba2" -> "sha256:4b8bc4de6fffae62b99938213920e2f98544ee3bd5ac7586a99b9a8e27f6d42a" [label=""];
}

