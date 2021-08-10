[app/sources/251331131.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f8f8f44c824de388982f563ef0a9d93bf6830ff462e0dccbbc60628d61bbfcd4" [label="/bin/sh -c apt-get update &&         apt-get install -y             python2.7             python-pkg-resources             python-setuptools             python-virtualenv             python-pip             curl             git" shape="box"];
  "sha256:358e5be4dc53b39443eb2c0683a15e31c4d2befda95557bf75cd362901dcffac" [label="/bin/sh -c apt-get install -y libyaml-0-2             libxml2             libxml2-dev             libxslt1-dev             libpython2.7             libmysqlclient-dev             libssl0.9.8             m4             python-dev" shape="box"];
  "sha256:a076f2523556c68939aed11b0e7b49e91074c38fdf9ccf4198069c6494ce7cdd" [label="local://context" shape="ellipse"];
  "sha256:a85a91d7c2fcc06e1db0f7b0fe3549eb84444fac1f1e3107ff8d58829d26da3a" [label="copy{src=/requirements.txt, dest=/code/requirements.txt}" shape="note"];
  "sha256:5dd0bcc0c3719625d2ffb174cc4a432f8c1ce72b24d04384c4a8598db2e35a87" [label="/bin/sh -c virtualenv --python python2.7 /code/virtualenv_run" shape="box"];
  "sha256:14fc6c7bcc641cd47af100143f3cfad4d56159f46aa7052c05ce3d0704c74a44" [label="/bin/sh -c /code/virtualenv_run/bin/pip install             -r /code/requirements.txt" shape="box"];
  "sha256:eaa2c55489388d5e25c5289f5428ff7ca45cce0e2e04c22eebbe053bdf7e5cd2" [label="/bin/sh -c mkdir /tmp/logs && chown -R nobody /tmp/logs/" shape="box"];
  "sha256:28e3dff36beb9d898243d9e006424f145fbceb6f6042fa3da0790bfa3915d85f" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:9e3bbbddfb55d3b840149f6eb0de4ebeaa2d6ebe91c2fcbacd5cd1e54122e256" [label="mkdir{path=/code}" shape="note"];
  "sha256:bcab17b5038b56ee210b9e6e340b726fa794b95c3faed44e4448a52c788629b8" [label="sha256:bcab17b5038b56ee210b9e6e340b726fa794b95c3faed44e4448a52c788629b8" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f8f8f44c824de388982f563ef0a9d93bf6830ff462e0dccbbc60628d61bbfcd4" [label=""];
  "sha256:f8f8f44c824de388982f563ef0a9d93bf6830ff462e0dccbbc60628d61bbfcd4" -> "sha256:358e5be4dc53b39443eb2c0683a15e31c4d2befda95557bf75cd362901dcffac" [label=""];
  "sha256:358e5be4dc53b39443eb2c0683a15e31c4d2befda95557bf75cd362901dcffac" -> "sha256:a85a91d7c2fcc06e1db0f7b0fe3549eb84444fac1f1e3107ff8d58829d26da3a" [label=""];
  "sha256:a076f2523556c68939aed11b0e7b49e91074c38fdf9ccf4198069c6494ce7cdd" -> "sha256:a85a91d7c2fcc06e1db0f7b0fe3549eb84444fac1f1e3107ff8d58829d26da3a" [label=""];
  "sha256:a85a91d7c2fcc06e1db0f7b0fe3549eb84444fac1f1e3107ff8d58829d26da3a" -> "sha256:5dd0bcc0c3719625d2ffb174cc4a432f8c1ce72b24d04384c4a8598db2e35a87" [label=""];
  "sha256:5dd0bcc0c3719625d2ffb174cc4a432f8c1ce72b24d04384c4a8598db2e35a87" -> "sha256:14fc6c7bcc641cd47af100143f3cfad4d56159f46aa7052c05ce3d0704c74a44" [label=""];
  "sha256:14fc6c7bcc641cd47af100143f3cfad4d56159f46aa7052c05ce3d0704c74a44" -> "sha256:eaa2c55489388d5e25c5289f5428ff7ca45cce0e2e04c22eebbe053bdf7e5cd2" [label=""];
  "sha256:eaa2c55489388d5e25c5289f5428ff7ca45cce0e2e04c22eebbe053bdf7e5cd2" -> "sha256:28e3dff36beb9d898243d9e006424f145fbceb6f6042fa3da0790bfa3915d85f" [label=""];
  "sha256:a076f2523556c68939aed11b0e7b49e91074c38fdf9ccf4198069c6494ce7cdd" -> "sha256:28e3dff36beb9d898243d9e006424f145fbceb6f6042fa3da0790bfa3915d85f" [label=""];
  "sha256:28e3dff36beb9d898243d9e006424f145fbceb6f6042fa3da0790bfa3915d85f" -> "sha256:9e3bbbddfb55d3b840149f6eb0de4ebeaa2d6ebe91c2fcbacd5cd1e54122e256" [label=""];
  "sha256:9e3bbbddfb55d3b840149f6eb0de4ebeaa2d6ebe91c2fcbacd5cd1e54122e256" -> "sha256:bcab17b5038b56ee210b9e6e340b726fa794b95c3faed44e4448a52c788629b8" [label=""];
}

