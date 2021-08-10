[app/sources/341905085.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ed1d37cfdf4154dba06a65a59b9db2780713c2249b5d79e7cc7f9c30ca87fd44" [label="local://context" shape="ellipse"];
  "sha256:2b2ef4d86e7149ff7f7f2de685cb6ea021b13be4a28882a48a56a15136b1366e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8b586ec3e404c809731372614db2cbaac80102598e36eaf466dfb193fe67bc53" [label="pip install requests" shape="box"];
  "sha256:4039804f10991552b81e679e21cfe7eb46abb3340e6173c575d7349754d3ceb3" [label="sha256:4039804f10991552b81e679e21cfe7eb46abb3340e6173c575d7349754d3ceb3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:2b2ef4d86e7149ff7f7f2de685cb6ea021b13be4a28882a48a56a15136b1366e" [label=""];
  "sha256:ed1d37cfdf4154dba06a65a59b9db2780713c2249b5d79e7cc7f9c30ca87fd44" -> "sha256:2b2ef4d86e7149ff7f7f2de685cb6ea021b13be4a28882a48a56a15136b1366e" [label=""];
  "sha256:2b2ef4d86e7149ff7f7f2de685cb6ea021b13be4a28882a48a56a15136b1366e" -> "sha256:8b586ec3e404c809731372614db2cbaac80102598e36eaf466dfb193fe67bc53" [label=""];
  "sha256:8b586ec3e404c809731372614db2cbaac80102598e36eaf466dfb193fe67bc53" -> "sha256:4039804f10991552b81e679e21cfe7eb46abb3340e6173c575d7349754d3ceb3" [label=""];
}

