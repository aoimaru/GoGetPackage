[app/sources/341898574.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3b86631981e3cdc4c2d25d5a32f5c02a58e8f6bb790ace2a4cef7d6a9625272e" [label="local://context" shape="ellipse"];
  "sha256:673602c6fc5c1d29f1f1920c0d869772838ce30b7be0867afde829afe11d8bb1" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e74af466643975d0a29941baa82ab09ff8ad415b3bb22503949f0cd88f0a4211" [label="pip install fiona" shape="box"];
  "sha256:e3d743deb5096421b2adddd17997880cd817c2cbe07c3bdf58b627f63f1f4c3f" [label="pip install fiona" shape="box"];
  "sha256:60015ecb5e82cfda16eaecb6e2e81870b945422d3cd6f588904426616b562834" [label="pip install shapely" shape="box"];
  "sha256:f147bf7da83b3fe7491b2d52d4490ef3ad52ae392a19e11361cec9e381601ab0" [label="sha256:f147bf7da83b3fe7491b2d52d4490ef3ad52ae392a19e11361cec9e381601ab0" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:673602c6fc5c1d29f1f1920c0d869772838ce30b7be0867afde829afe11d8bb1" [label=""];
  "sha256:3b86631981e3cdc4c2d25d5a32f5c02a58e8f6bb790ace2a4cef7d6a9625272e" -> "sha256:673602c6fc5c1d29f1f1920c0d869772838ce30b7be0867afde829afe11d8bb1" [label=""];
  "sha256:673602c6fc5c1d29f1f1920c0d869772838ce30b7be0867afde829afe11d8bb1" -> "sha256:e74af466643975d0a29941baa82ab09ff8ad415b3bb22503949f0cd88f0a4211" [label=""];
  "sha256:e74af466643975d0a29941baa82ab09ff8ad415b3bb22503949f0cd88f0a4211" -> "sha256:e3d743deb5096421b2adddd17997880cd817c2cbe07c3bdf58b627f63f1f4c3f" [label=""];
  "sha256:e3d743deb5096421b2adddd17997880cd817c2cbe07c3bdf58b627f63f1f4c3f" -> "sha256:60015ecb5e82cfda16eaecb6e2e81870b945422d3cd6f588904426616b562834" [label=""];
  "sha256:60015ecb5e82cfda16eaecb6e2e81870b945422d3cd6f588904426616b562834" -> "sha256:f147bf7da83b3fe7491b2d52d4490ef3ad52ae392a19e11361cec9e381601ab0" [label=""];
}

