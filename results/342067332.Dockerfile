[app/sources/342067332.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8b6cba01cecd49cd7491b0eb0084790ef4419c7258dd410f042b950bf4358126" [label="local://context" shape="ellipse"];
  "sha256:3e907abaf2ee70a42f323db0950c4b9583eb3f0cd345e08f41b1fada0df9cbd3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:05c1a34c4a43441a967a361d9054eab37ded938e33935a80e3f02212dc6ad8f9" [label="pip install gevent" shape="box"];
  "sha256:c8814397932c0ef1a52591772fd3a13f29cbc84cc3d5f1b79fe62682041ca328" [label="pip install gevent" shape="box"];
  "sha256:ff468bf4189d3edbdf57d0869119607dc5d3e08c6ca517a915343fd855cb80d9" [label="pip install netaddr" shape="box"];
  "sha256:eec23c467e1327188ef76b39d0fa99fd0f986b0ac950d845865e077a98e0c6fb" [label="sha256:eec23c467e1327188ef76b39d0fa99fd0f986b0ac950d845865e077a98e0c6fb" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3e907abaf2ee70a42f323db0950c4b9583eb3f0cd345e08f41b1fada0df9cbd3" [label=""];
  "sha256:8b6cba01cecd49cd7491b0eb0084790ef4419c7258dd410f042b950bf4358126" -> "sha256:3e907abaf2ee70a42f323db0950c4b9583eb3f0cd345e08f41b1fada0df9cbd3" [label=""];
  "sha256:3e907abaf2ee70a42f323db0950c4b9583eb3f0cd345e08f41b1fada0df9cbd3" -> "sha256:05c1a34c4a43441a967a361d9054eab37ded938e33935a80e3f02212dc6ad8f9" [label=""];
  "sha256:05c1a34c4a43441a967a361d9054eab37ded938e33935a80e3f02212dc6ad8f9" -> "sha256:c8814397932c0ef1a52591772fd3a13f29cbc84cc3d5f1b79fe62682041ca328" [label=""];
  "sha256:c8814397932c0ef1a52591772fd3a13f29cbc84cc3d5f1b79fe62682041ca328" -> "sha256:ff468bf4189d3edbdf57d0869119607dc5d3e08c6ca517a915343fd855cb80d9" [label=""];
  "sha256:ff468bf4189d3edbdf57d0869119607dc5d3e08c6ca517a915343fd855cb80d9" -> "sha256:eec23c467e1327188ef76b39d0fa99fd0f986b0ac950d845865e077a98e0c6fb" [label=""];
}

