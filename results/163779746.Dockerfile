[app/sources/163779746.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:80b9f4f629d7d6b807ef3f021ed0d54b0603df2d4aa106b57675507d6964517b" [label="/bin/sh -c apt-get update  && apt-get install -y libdb-dev" shape="box"];
  "sha256:5538fdf721ed1a9d7ec6152aac04fb707e521c03eb26fb3a1b5d18fc9afc051b" [label="mkdir{path=/app}" shape="note"];
  "sha256:edc6f3eb3e5bfbe7112d303f75a110065256d2d24d5c2c5af8ddbcb469dc7f60" [label="local://context" shape="ellipse"];
  "sha256:c2ce7c8c69faec23c46460ecb2701591e966e4d6cbdaa46306cb645c5cfa7fd2" [label="copy{src=/requirements-dev.pip, dest=/app/requirements-dev.pip}" shape="note"];
  "sha256:c76b6133a28a142e97c525186db8cd875c693b5588934c10d85fe0aa269f5d6c" [label="/bin/sh -c pip install -r /app/requirements-dev.pip" shape="box"];
  "sha256:45535aab0aa50c7769abbbe693c311c36e537347c04eb8e2bdfe06f572bf3da7" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:70c991a141912809b668bd1771d51f11170d46493c6760814523fb1a93d7d88f" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:508b3787cab6a088cfd8048d0d104d9653a8ac597d03d8432aa5dbc9dd50f5d9" [label="sha256:508b3787cab6a088cfd8048d0d104d9653a8ac597d03d8432aa5dbc9dd50f5d9" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:80b9f4f629d7d6b807ef3f021ed0d54b0603df2d4aa106b57675507d6964517b" [label=""];
  "sha256:80b9f4f629d7d6b807ef3f021ed0d54b0603df2d4aa106b57675507d6964517b" -> "sha256:5538fdf721ed1a9d7ec6152aac04fb707e521c03eb26fb3a1b5d18fc9afc051b" [label=""];
  "sha256:5538fdf721ed1a9d7ec6152aac04fb707e521c03eb26fb3a1b5d18fc9afc051b" -> "sha256:c2ce7c8c69faec23c46460ecb2701591e966e4d6cbdaa46306cb645c5cfa7fd2" [label=""];
  "sha256:edc6f3eb3e5bfbe7112d303f75a110065256d2d24d5c2c5af8ddbcb469dc7f60" -> "sha256:c2ce7c8c69faec23c46460ecb2701591e966e4d6cbdaa46306cb645c5cfa7fd2" [label=""];
  "sha256:c2ce7c8c69faec23c46460ecb2701591e966e4d6cbdaa46306cb645c5cfa7fd2" -> "sha256:c76b6133a28a142e97c525186db8cd875c693b5588934c10d85fe0aa269f5d6c" [label=""];
  "sha256:c76b6133a28a142e97c525186db8cd875c693b5588934c10d85fe0aa269f5d6c" -> "sha256:45535aab0aa50c7769abbbe693c311c36e537347c04eb8e2bdfe06f572bf3da7" [label=""];
  "sha256:edc6f3eb3e5bfbe7112d303f75a110065256d2d24d5c2c5af8ddbcb469dc7f60" -> "sha256:45535aab0aa50c7769abbbe693c311c36e537347c04eb8e2bdfe06f572bf3da7" [label=""];
  "sha256:45535aab0aa50c7769abbbe693c311c36e537347c04eb8e2bdfe06f572bf3da7" -> "sha256:70c991a141912809b668bd1771d51f11170d46493c6760814523fb1a93d7d88f" [label=""];
  "sha256:70c991a141912809b668bd1771d51f11170d46493c6760814523fb1a93d7d88f" -> "sha256:508b3787cab6a088cfd8048d0d104d9653a8ac597d03d8432aa5dbc9dd50f5d9" [label=""];
}

