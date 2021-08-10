[app/sources/202988219.Dockerfile]
digraph {
  "sha256:811313d0dc4cdfd069b8ac520865ca298ff08d066758bb555120e4b0220ee403" [label="docker-image://docker.io/library/talek-base:latest" shape="ellipse"];
  "sha256:836e1825657e398ab7cd0ad21eac96585931f36b5564a53262eee8d5d7b5e76f" [label="/bin/sh -c apt-get update && apt-get install -y opencl-headers ocl-icd-opencl-dev" shape="box"];
  "sha256:9b7d6ce06260adae15c55a6cc4ca1157e888e15dabcd8c5bbd7359b275500784" [label="mkdir{path=/talek/pird}" shape="note"];
  "sha256:f54db91095b119e7e8c00bbeffabf1bb83e0486415df462432886a91c98d624b" [label="/bin/sh -c rm pird" shape="box"];
  "sha256:0caebd84871c779c205ccca9464d8aa2aed781655aa7931950cd1fd03edb6db6" [label="/bin/sh -c make" shape="box"];
  "sha256:1f64e9cae11f01f962d1fdfb61b32cb20915b567ba13f2d8629b952500ad4e8d" [label="mkdir{path=/talek}" shape="note"];
  "sha256:2e7ddddd303282885052b652c7fbb3498ae582a8fc2eebeca4a0c1ebca7d1d93" [label="sha256:2e7ddddd303282885052b652c7fbb3498ae582a8fc2eebeca4a0c1ebca7d1d93" shape="plaintext"];
  "sha256:811313d0dc4cdfd069b8ac520865ca298ff08d066758bb555120e4b0220ee403" -> "sha256:836e1825657e398ab7cd0ad21eac96585931f36b5564a53262eee8d5d7b5e76f" [label=""];
  "sha256:836e1825657e398ab7cd0ad21eac96585931f36b5564a53262eee8d5d7b5e76f" -> "sha256:9b7d6ce06260adae15c55a6cc4ca1157e888e15dabcd8c5bbd7359b275500784" [label=""];
  "sha256:9b7d6ce06260adae15c55a6cc4ca1157e888e15dabcd8c5bbd7359b275500784" -> "sha256:f54db91095b119e7e8c00bbeffabf1bb83e0486415df462432886a91c98d624b" [label=""];
  "sha256:f54db91095b119e7e8c00bbeffabf1bb83e0486415df462432886a91c98d624b" -> "sha256:0caebd84871c779c205ccca9464d8aa2aed781655aa7931950cd1fd03edb6db6" [label=""];
  "sha256:0caebd84871c779c205ccca9464d8aa2aed781655aa7931950cd1fd03edb6db6" -> "sha256:1f64e9cae11f01f962d1fdfb61b32cb20915b567ba13f2d8629b952500ad4e8d" [label=""];
  "sha256:1f64e9cae11f01f962d1fdfb61b32cb20915b567ba13f2d8629b952500ad4e8d" -> "sha256:2e7ddddd303282885052b652c7fbb3498ae582a8fc2eebeca4a0c1ebca7d1d93" [label=""];
}

