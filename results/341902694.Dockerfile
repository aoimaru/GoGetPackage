[app/sources/341902694.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1f561ca2d299d11a2bb517a7adfbef243e506000879576248223e5add2233d1b" [label="local://context" shape="ellipse"];
  "sha256:7d563bac95bf81d40912f3a086d5fac1ccceba8315d70bc8ff992e21b2612dd7" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7745df8d172a2882e0324e38acc90b206a6e94114569771fc503b06eaa2393d0" [label="sha256:7745df8d172a2882e0324e38acc90b206a6e94114569771fc503b06eaa2393d0" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7d563bac95bf81d40912f3a086d5fac1ccceba8315d70bc8ff992e21b2612dd7" [label=""];
  "sha256:1f561ca2d299d11a2bb517a7adfbef243e506000879576248223e5add2233d1b" -> "sha256:7d563bac95bf81d40912f3a086d5fac1ccceba8315d70bc8ff992e21b2612dd7" [label=""];
  "sha256:7d563bac95bf81d40912f3a086d5fac1ccceba8315d70bc8ff992e21b2612dd7" -> "sha256:7745df8d172a2882e0324e38acc90b206a6e94114569771fc503b06eaa2393d0" [label=""];
}

