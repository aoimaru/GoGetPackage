[app/sources/341900124.Dockerfile]
digraph {
  "sha256:2cf0413600279f29f2c75cd741f5c40e40f77142094d2c2d03fc7590d50b31bb" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3ca550ec2083f1179c201b1108a7de65bf936dd287dc66493e30dd0759153432" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bead22dd40450258155dc2ca742d9d25faef8bf7b567e066ce78f6a6fc8a7067" [label="pip install tweepy" shape="box"];
  "sha256:4cd8cfe851a0d6a1b71f2c5633bbd2f2ebd924a3018e135c020b73dfba59d68c" [label="sha256:4cd8cfe851a0d6a1b71f2c5633bbd2f2ebd924a3018e135c020b73dfba59d68c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3ca550ec2083f1179c201b1108a7de65bf936dd287dc66493e30dd0759153432" [label=""];
  "sha256:2cf0413600279f29f2c75cd741f5c40e40f77142094d2c2d03fc7590d50b31bb" -> "sha256:3ca550ec2083f1179c201b1108a7de65bf936dd287dc66493e30dd0759153432" [label=""];
  "sha256:3ca550ec2083f1179c201b1108a7de65bf936dd287dc66493e30dd0759153432" -> "sha256:bead22dd40450258155dc2ca742d9d25faef8bf7b567e066ce78f6a6fc8a7067" [label=""];
  "sha256:bead22dd40450258155dc2ca742d9d25faef8bf7b567e066ce78f6a6fc8a7067" -> "sha256:4cd8cfe851a0d6a1b71f2c5633bbd2f2ebd924a3018e135c020b73dfba59d68c" [label=""];
}

