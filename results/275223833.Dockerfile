[app/sources/275223833.Dockerfile]
digraph {
  "sha256:ca0d70dc929972e0a3a3f5d2008a95c770e2c22f8bd8e96f163f69001daf5dac" [label="docker-image://docker.io/amazeeio/nginx-drupal:latest" shape="ellipse"];
  "sha256:40a813a701482f2ee4a77c9d14b65dae3b3882701283aaa353cf9e1d94aa9e33" [label="docker-image://docker.io/library/builder:latest" shape="ellipse"];
  "sha256:2989b7b8ce4d66195ebd07c9d0c739775f3d1938a607f21ff0aa88d451399836" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:c13ee4eac9b982df70424637a9b2c3d688eda6cdea58e7e4a283daf529f83300" [label="sha256:c13ee4eac9b982df70424637a9b2c3d688eda6cdea58e7e4a283daf529f83300" shape="plaintext"];
  "sha256:ca0d70dc929972e0a3a3f5d2008a95c770e2c22f8bd8e96f163f69001daf5dac" -> "sha256:2989b7b8ce4d66195ebd07c9d0c739775f3d1938a607f21ff0aa88d451399836" [label=""];
  "sha256:40a813a701482f2ee4a77c9d14b65dae3b3882701283aaa353cf9e1d94aa9e33" -> "sha256:2989b7b8ce4d66195ebd07c9d0c739775f3d1938a607f21ff0aa88d451399836" [label=""];
  "sha256:2989b7b8ce4d66195ebd07c9d0c739775f3d1938a607f21ff0aa88d451399836" -> "sha256:c13ee4eac9b982df70424637a9b2c3d688eda6cdea58e7e4a283daf529f83300" [label=""];
}

