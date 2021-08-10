[app/sources/167153206.Dockerfile]
digraph {
  "sha256:4cd500b3bc5898e70673f39755d7aa04f050582ebcce527b90a8fcd203213e31" [label="docker-image://docker.io/kitware/smqtk:latest" shape="ellipse"];
  "sha256:8cb2c5b7f7953eff816cd572444822a8ec2d5b6aa34738a3487507935cb1f95b" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys     B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8 &&     echo \"deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main\" >>     /etc/apt/sources.list &&     apt-get update && apt-get install -y -q postgresql-client" shape="box"];
  "sha256:02c4047305f6ae63f8e67678e8dd3f7355c0900f9f37fde291089a3f7b7761bf" [label="local://context" shape="ellipse"];
  "sha256:2f65746d61619df84a099c420317bb89afff6ebc522c33a9bc8e14bdf5e8b637" [label="copy{src=/custom-entry-point.sh, dest=/app/scripts}" shape="note"];
  "sha256:abea0fd23475174170cb02d3f283fc1df1940c5dfd3a979f9d245d647dd8d0c9" [label="sha256:abea0fd23475174170cb02d3f283fc1df1940c5dfd3a979f9d245d647dd8d0c9" shape="plaintext"];
  "sha256:4cd500b3bc5898e70673f39755d7aa04f050582ebcce527b90a8fcd203213e31" -> "sha256:8cb2c5b7f7953eff816cd572444822a8ec2d5b6aa34738a3487507935cb1f95b" [label=""];
  "sha256:8cb2c5b7f7953eff816cd572444822a8ec2d5b6aa34738a3487507935cb1f95b" -> "sha256:2f65746d61619df84a099c420317bb89afff6ebc522c33a9bc8e14bdf5e8b637" [label=""];
  "sha256:02c4047305f6ae63f8e67678e8dd3f7355c0900f9f37fde291089a3f7b7761bf" -> "sha256:2f65746d61619df84a099c420317bb89afff6ebc522c33a9bc8e14bdf5e8b637" [label=""];
  "sha256:2f65746d61619df84a099c420317bb89afff6ebc522c33a9bc8e14bdf5e8b637" -> "sha256:abea0fd23475174170cb02d3f283fc1df1940c5dfd3a979f9d245d647dd8d0c9" [label=""];
}

