[app/sources/341900828.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1328b68148638ed07a31a5b71e80d145e571c5b801443a031cff0aded20f5b04" [label="local://context" shape="ellipse"];
  "sha256:3e689c599b6b0aa431ba0a53a9966c0503b0e733c17bc17fc43f743ac92d63a5" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:53045ec83a6ad4c5e142365048d5f7a1957aa40d33732fceb87589c3c411acaf" [label="pip install markdown" shape="box"];
  "sha256:7b56359ccae3d16f8dc0e6a6fb88b9f389cb01c49546bc81fea6e4158ee75193" [label="pip install jinja2" shape="box"];
  "sha256:bbf0968cf0b4281c1fb1eec920f09aa4c137a12671de325f3cbd29630b529b79" [label="sha256:bbf0968cf0b4281c1fb1eec920f09aa4c137a12671de325f3cbd29630b529b79" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3e689c599b6b0aa431ba0a53a9966c0503b0e733c17bc17fc43f743ac92d63a5" [label=""];
  "sha256:1328b68148638ed07a31a5b71e80d145e571c5b801443a031cff0aded20f5b04" -> "sha256:3e689c599b6b0aa431ba0a53a9966c0503b0e733c17bc17fc43f743ac92d63a5" [label=""];
  "sha256:3e689c599b6b0aa431ba0a53a9966c0503b0e733c17bc17fc43f743ac92d63a5" -> "sha256:53045ec83a6ad4c5e142365048d5f7a1957aa40d33732fceb87589c3c411acaf" [label=""];
  "sha256:53045ec83a6ad4c5e142365048d5f7a1957aa40d33732fceb87589c3c411acaf" -> "sha256:7b56359ccae3d16f8dc0e6a6fb88b9f389cb01c49546bc81fea6e4158ee75193" [label=""];
  "sha256:7b56359ccae3d16f8dc0e6a6fb88b9f389cb01c49546bc81fea6e4158ee75193" -> "sha256:bbf0968cf0b4281c1fb1eec920f09aa4c137a12671de325f3cbd29630b529b79" [label=""];
}

