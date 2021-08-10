[app/sources/170394713.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:63847f922d4fce9614b14bf7f387ff39d006c684c9c40f3e30707c6c9d71d0bf" [label="/bin/sh -c apt-get -y update &&     apt-get install -y graphviz z3 python-pip git" shape="box"];
  "sha256:88c966e9706cb469849de37a1db66108f49db9df28618ce60502d08b7fa3b552" [label="/bin/sh -c useradd -m barf" shape="box"];
  "sha256:6b4a4dfd6d7cc7067fa50b7cbe86c0813c7b8f5c498b602c2dd09d1c011253bf" [label="mkdir{path=/home/barf}" shape="note"];
  "sha256:7c26a4feac0206b24c6492dccd504f4e640735b6e62b7e577732163c5b17e139" [label="/bin/sh -c git clone https://github.com/programa-stic/barf-project.git &&     cd barf-project &&     pip install ." shape="box"];
  "sha256:a8a042ed2bbf0904ddb4d3b8e8da6cc42a185f93122c432ee978f1277779fe2f" [label="sha256:a8a042ed2bbf0904ddb4d3b8e8da6cc42a185f93122c432ee978f1277779fe2f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:63847f922d4fce9614b14bf7f387ff39d006c684c9c40f3e30707c6c9d71d0bf" [label=""];
  "sha256:63847f922d4fce9614b14bf7f387ff39d006c684c9c40f3e30707c6c9d71d0bf" -> "sha256:88c966e9706cb469849de37a1db66108f49db9df28618ce60502d08b7fa3b552" [label=""];
  "sha256:88c966e9706cb469849de37a1db66108f49db9df28618ce60502d08b7fa3b552" -> "sha256:6b4a4dfd6d7cc7067fa50b7cbe86c0813c7b8f5c498b602c2dd09d1c011253bf" [label=""];
  "sha256:6b4a4dfd6d7cc7067fa50b7cbe86c0813c7b8f5c498b602c2dd09d1c011253bf" -> "sha256:7c26a4feac0206b24c6492dccd504f4e640735b6e62b7e577732163c5b17e139" [label=""];
  "sha256:7c26a4feac0206b24c6492dccd504f4e640735b6e62b7e577732163c5b17e139" -> "sha256:a8a042ed2bbf0904ddb4d3b8e8da6cc42a185f93122c432ee978f1277779fe2f" [label=""];
}

