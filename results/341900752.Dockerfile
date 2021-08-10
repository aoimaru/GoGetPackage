[app/sources/341900752.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dc7205460f9b9c6e8a9e055e2b0a79743341b89cd71379de4bd7ff8d8dd93d36" [label="local://context" shape="ellipse"];
  "sha256:b088ec58cc1f7bcc17180c97a669db0ecf45e61187de0b7b367b397ef60598d9" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9237456d0c1f4737a25c95f1e0b1dbccfaab3905be270e907839efa727b49276" [label="pip install nose" shape="box"];
  "sha256:abdce226fe6e9b17cd279bae9a578b8782e1871f7acd6869e811a33e69bf5127" [label="pip install numpy" shape="box"];
  "sha256:b6e066be6dbbbdde699028863d0637047a0d18517ea0569ac16fa4251dc286df" [label="pip install numpy" shape="box"];
  "sha256:3f4aecf847cfb32065ead0681b25fd8b8366e468bd15d35c1410a071462b7e4f" [label="sha256:3f4aecf847cfb32065ead0681b25fd8b8366e468bd15d35c1410a071462b7e4f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b088ec58cc1f7bcc17180c97a669db0ecf45e61187de0b7b367b397ef60598d9" [label=""];
  "sha256:dc7205460f9b9c6e8a9e055e2b0a79743341b89cd71379de4bd7ff8d8dd93d36" -> "sha256:b088ec58cc1f7bcc17180c97a669db0ecf45e61187de0b7b367b397ef60598d9" [label=""];
  "sha256:b088ec58cc1f7bcc17180c97a669db0ecf45e61187de0b7b367b397ef60598d9" -> "sha256:9237456d0c1f4737a25c95f1e0b1dbccfaab3905be270e907839efa727b49276" [label=""];
  "sha256:9237456d0c1f4737a25c95f1e0b1dbccfaab3905be270e907839efa727b49276" -> "sha256:abdce226fe6e9b17cd279bae9a578b8782e1871f7acd6869e811a33e69bf5127" [label=""];
  "sha256:abdce226fe6e9b17cd279bae9a578b8782e1871f7acd6869e811a33e69bf5127" -> "sha256:b6e066be6dbbbdde699028863d0637047a0d18517ea0569ac16fa4251dc286df" [label=""];
  "sha256:b6e066be6dbbbdde699028863d0637047a0d18517ea0569ac16fa4251dc286df" -> "sha256:3f4aecf847cfb32065ead0681b25fd8b8366e468bd15d35c1410a071462b7e4f" [label=""];
}

