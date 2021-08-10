[app/sources/310276743.Dockerfile]
digraph {
  "sha256:fbf9cde7c46fcbf3f0979e293002fafa51310cfe1230616586d46c12cfb8c28b" [label="docker-image://docker.io/library/mongo:3.4.2" shape="ellipse"];
  "sha256:27061ff618c6f18e50ea1b5333b83ba592e11c654256fe317a805bece811f7d4" [label="local://context" shape="ellipse"];
  "sha256:9aafd412238b79639316260ca6a2305423f83ab965a8d2b93290727868a7340f" [label="copy{src=/users.sh, dest=/docker-entrypoint-initdb.d/users.sh}" shape="note"];
  "sha256:e79f8b9b688c377594a56e2153d4b848a1fd558a44b256e212dbdec1b40b6266" [label="sha256:e79f8b9b688c377594a56e2153d4b848a1fd558a44b256e212dbdec1b40b6266" shape="plaintext"];
  "sha256:fbf9cde7c46fcbf3f0979e293002fafa51310cfe1230616586d46c12cfb8c28b" -> "sha256:9aafd412238b79639316260ca6a2305423f83ab965a8d2b93290727868a7340f" [label=""];
  "sha256:27061ff618c6f18e50ea1b5333b83ba592e11c654256fe317a805bece811f7d4" -> "sha256:9aafd412238b79639316260ca6a2305423f83ab965a8d2b93290727868a7340f" [label=""];
  "sha256:9aafd412238b79639316260ca6a2305423f83ab965a8d2b93290727868a7340f" -> "sha256:e79f8b9b688c377594a56e2153d4b848a1fd558a44b256e212dbdec1b40b6266" [label=""];
}

