[app/sources/341905033.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:fd77b2f33a66ace7be493b5a2397a5e778ae8f1158b2d2f16291c8500d32a645" [label="local://context" shape="ellipse"];
  "sha256:1917f4ed389ece34081323e9677326bc19a29f1538d82079da240b93e12e8a80" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0acce4b9c2c182e4c3f2aea72faf146784dde203d38ab382f40cc391ad3fdd73" [label="pip install simplejson" shape="box"];
  "sha256:22f7e7fcbfdccd4664a8d77ceed01c23124c438085e9834100446b35518e91ae" [label="sha256:22f7e7fcbfdccd4664a8d77ceed01c23124c438085e9834100446b35518e91ae" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1917f4ed389ece34081323e9677326bc19a29f1538d82079da240b93e12e8a80" [label=""];
  "sha256:fd77b2f33a66ace7be493b5a2397a5e778ae8f1158b2d2f16291c8500d32a645" -> "sha256:1917f4ed389ece34081323e9677326bc19a29f1538d82079da240b93e12e8a80" [label=""];
  "sha256:1917f4ed389ece34081323e9677326bc19a29f1538d82079da240b93e12e8a80" -> "sha256:0acce4b9c2c182e4c3f2aea72faf146784dde203d38ab382f40cc391ad3fdd73" [label=""];
  "sha256:0acce4b9c2c182e4c3f2aea72faf146784dde203d38ab382f40cc391ad3fdd73" -> "sha256:22f7e7fcbfdccd4664a8d77ceed01c23124c438085e9834100446b35518e91ae" [label=""];
}

