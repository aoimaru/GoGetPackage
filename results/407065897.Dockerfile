[app/sources/407065897.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:28f08fff56e00fd94638dc5e1c1444cdc58145217d80acd22a3bd2087c0bd1fd" [label="local://context" shape="ellipse"];
  "sha256:9969937ae49be86949fa9ad5ca486a688910500f2520d2afe95a121ae7ba06e9" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:54f6f778f124e474f12cf7b42d8987a26790189534dbcbb870b5022b6a9afb57" [label="sha256:54f6f778f124e474f12cf7b42d8987a26790189534dbcbb870b5022b6a9afb57" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:9969937ae49be86949fa9ad5ca486a688910500f2520d2afe95a121ae7ba06e9" [label=""];
  "sha256:28f08fff56e00fd94638dc5e1c1444cdc58145217d80acd22a3bd2087c0bd1fd" -> "sha256:9969937ae49be86949fa9ad5ca486a688910500f2520d2afe95a121ae7ba06e9" [label=""];
  "sha256:9969937ae49be86949fa9ad5ca486a688910500f2520d2afe95a121ae7ba06e9" -> "sha256:54f6f778f124e474f12cf7b42d8987a26790189534dbcbb870b5022b6a9afb57" [label=""];
}

