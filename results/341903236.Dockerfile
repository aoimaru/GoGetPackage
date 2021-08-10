[app/sources/341903236.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:9191c66e5197b495e50dcd712aa03646fa966be9a6dd8abbf5794e990c6e411d" [label="local://context" shape="ellipse"];
  "sha256:db8544f3e2d1a5f626d71646d6f0d3c116aa38d0ed8414d752df3a8a1fd99c33" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:90575e938069e21207ef092ab4c5e1c368ab1600b3ce37b6c58e185903bda583" [label="pip install requests" shape="box"];
  "sha256:2c2d7b63e39091fce73c7e228146d1653c7ff76ad3d59abc51df84ef53062bc9" [label="pip install nltk" shape="box"];
  "sha256:1549c9ec7429bc2a8cd085477f67382713f64141f07a7d7a3a6f7cbeb01aad75" [label="sha256:1549c9ec7429bc2a8cd085477f67382713f64141f07a7d7a3a6f7cbeb01aad75" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:db8544f3e2d1a5f626d71646d6f0d3c116aa38d0ed8414d752df3a8a1fd99c33" [label=""];
  "sha256:9191c66e5197b495e50dcd712aa03646fa966be9a6dd8abbf5794e990c6e411d" -> "sha256:db8544f3e2d1a5f626d71646d6f0d3c116aa38d0ed8414d752df3a8a1fd99c33" [label=""];
  "sha256:db8544f3e2d1a5f626d71646d6f0d3c116aa38d0ed8414d752df3a8a1fd99c33" -> "sha256:90575e938069e21207ef092ab4c5e1c368ab1600b3ce37b6c58e185903bda583" [label=""];
  "sha256:90575e938069e21207ef092ab4c5e1c368ab1600b3ce37b6c58e185903bda583" -> "sha256:2c2d7b63e39091fce73c7e228146d1653c7ff76ad3d59abc51df84ef53062bc9" [label=""];
  "sha256:2c2d7b63e39091fce73c7e228146d1653c7ff76ad3d59abc51df84ef53062bc9" -> "sha256:1549c9ec7429bc2a8cd085477f67382713f64141f07a7d7a3a6f7cbeb01aad75" [label=""];
}

