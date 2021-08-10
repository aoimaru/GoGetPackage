[app/sources/342067178.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f90180f74556e89cfd71cf058ef9e1e8738485cb051dba5768515d733fc927da" [label="local://context" shape="ellipse"];
  "sha256:bc7e6ff2ab0fbffe8d5132643ca2ccf42e66df12d9294ee20a0a0def653db63d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:f791fffe3d5ca92b89344cb0f6d4dfa803f7128a2e649d5edc76c775dd184046" [label="pip install enum" shape="box"];
  "sha256:4ead63d171c861b7063fffb68ba04c4d52072281ead6b84c436b7a405643b8d9" [label="pip install ijson" shape="box"];
  "sha256:4a17d4d4b0e83c43109b1e31dd2ffbb3c11c5cec15eea5ea422494cfc2044e34" [label="sha256:4a17d4d4b0e83c43109b1e31dd2ffbb3c11c5cec15eea5ea422494cfc2044e34" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:bc7e6ff2ab0fbffe8d5132643ca2ccf42e66df12d9294ee20a0a0def653db63d" [label=""];
  "sha256:f90180f74556e89cfd71cf058ef9e1e8738485cb051dba5768515d733fc927da" -> "sha256:bc7e6ff2ab0fbffe8d5132643ca2ccf42e66df12d9294ee20a0a0def653db63d" [label=""];
  "sha256:bc7e6ff2ab0fbffe8d5132643ca2ccf42e66df12d9294ee20a0a0def653db63d" -> "sha256:f791fffe3d5ca92b89344cb0f6d4dfa803f7128a2e649d5edc76c775dd184046" [label=""];
  "sha256:f791fffe3d5ca92b89344cb0f6d4dfa803f7128a2e649d5edc76c775dd184046" -> "sha256:4ead63d171c861b7063fffb68ba04c4d52072281ead6b84c436b7a405643b8d9" [label=""];
  "sha256:4ead63d171c861b7063fffb68ba04c4d52072281ead6b84c436b7a405643b8d9" -> "sha256:4a17d4d4b0e83c43109b1e31dd2ffbb3c11c5cec15eea5ea422494cfc2044e34" [label=""];
}

