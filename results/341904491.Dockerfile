[app/sources/341904491.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0858bb831672266a6ee43d317dcd21e456852d72e9252c7e9b4f28e1f2af90d1" [label="local://context" shape="ellipse"];
  "sha256:5e7d7d29a113f8351b50bdf0d039075e06919c823cc53d3f6900f91533d776d3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ba0b0b04c3a94323c5b83067a9d91a042f640d2092ed749338c2d5ba1332c8b9" [label="pip install nltk" shape="box"];
  "sha256:7e9909e0b3cc29de5a083ca63634a61aa9d2d62ccfdc980f32eac4d97f6032a5" [label="pip install nltk" shape="box"];
  "sha256:dcd7071aeb5930aa1260a8128fc8a010d285df5c6cfa3b2129c89acf81c90398" [label="pip install nltk" shape="box"];
  "sha256:95ddb3fa9ecb14ef17c486df0faa5b3b7a0c17502f5cdf327fc7cd11ae1913be" [label="sha256:95ddb3fa9ecb14ef17c486df0faa5b3b7a0c17502f5cdf327fc7cd11ae1913be" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:5e7d7d29a113f8351b50bdf0d039075e06919c823cc53d3f6900f91533d776d3" [label=""];
  "sha256:0858bb831672266a6ee43d317dcd21e456852d72e9252c7e9b4f28e1f2af90d1" -> "sha256:5e7d7d29a113f8351b50bdf0d039075e06919c823cc53d3f6900f91533d776d3" [label=""];
  "sha256:5e7d7d29a113f8351b50bdf0d039075e06919c823cc53d3f6900f91533d776d3" -> "sha256:ba0b0b04c3a94323c5b83067a9d91a042f640d2092ed749338c2d5ba1332c8b9" [label=""];
  "sha256:ba0b0b04c3a94323c5b83067a9d91a042f640d2092ed749338c2d5ba1332c8b9" -> "sha256:7e9909e0b3cc29de5a083ca63634a61aa9d2d62ccfdc980f32eac4d97f6032a5" [label=""];
  "sha256:7e9909e0b3cc29de5a083ca63634a61aa9d2d62ccfdc980f32eac4d97f6032a5" -> "sha256:dcd7071aeb5930aa1260a8128fc8a010d285df5c6cfa3b2129c89acf81c90398" [label=""];
  "sha256:dcd7071aeb5930aa1260a8128fc8a010d285df5c6cfa3b2129c89acf81c90398" -> "sha256:95ddb3fa9ecb14ef17c486df0faa5b3b7a0c17502f5cdf327fc7cd11ae1913be" [label=""];
}

