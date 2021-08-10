[app/sources/341902748.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e46895c51fa7286206199f36e4d705fe9863021c63d2cf9701752f6d2cddf713" [label="local://context" shape="ellipse"];
  "sha256:ad13140e17af566102eb85acbb8de1f35cf8bf384d3cb0d5c4aa6558a4df5ff3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bf04935b1f288652a61d73723edb1c2ce6a8fa8bb2f644ca87a032b3ffde3504" [label="sha256:bf04935b1f288652a61d73723edb1c2ce6a8fa8bb2f644ca87a032b3ffde3504" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ad13140e17af566102eb85acbb8de1f35cf8bf384d3cb0d5c4aa6558a4df5ff3" [label=""];
  "sha256:e46895c51fa7286206199f36e4d705fe9863021c63d2cf9701752f6d2cddf713" -> "sha256:ad13140e17af566102eb85acbb8de1f35cf8bf384d3cb0d5c4aa6558a4df5ff3" [label=""];
  "sha256:ad13140e17af566102eb85acbb8de1f35cf8bf384d3cb0d5c4aa6558a4df5ff3" -> "sha256:bf04935b1f288652a61d73723edb1c2ce6a8fa8bb2f644ca87a032b3ffde3504" [label=""];
}

