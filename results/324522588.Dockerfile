[app/sources/324522588.Dockerfile]
digraph {
  "sha256:50a3f5c5ddf887e4b4f7310d8f72ad00ab570c6d3282f93db96c16340574b8be" [label="local://context" shape="ellipse"];
  "sha256:83ee0e128900e561b5eb91b9a306db57097e9e11e38cc58f409adfda7d94a20f" [label="docker-image://docker.io/library/node:10.9.0-alpine" shape="ellipse"];
  "sha256:8968fcbece05a982062a9574b16f272eb381d2f851d7a35d583a49f3b20ece13" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f5db45512b7287aeea82e0e57c967e1c368d35560009e3bd3c42619fe14d7b97" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:451a9e09f08f8e7d28f53684699c6e0e32bc732c473b3aec9a266fe4772af6ca" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:1364df47924e81ac0543d9805d9c1f93b59d3ba7b018ab37a4de2d7d7d43a6a7" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:5ec28232a19a6f60c0fa757b281d0ac78b083ac92a7c25dab98903aa96ccc92a" [label="sha256:5ec28232a19a6f60c0fa757b281d0ac78b083ac92a7c25dab98903aa96ccc92a" shape="plaintext"];
  "sha256:83ee0e128900e561b5eb91b9a306db57097e9e11e38cc58f409adfda7d94a20f" -> "sha256:8968fcbece05a982062a9574b16f272eb381d2f851d7a35d583a49f3b20ece13" [label=""];
  "sha256:8968fcbece05a982062a9574b16f272eb381d2f851d7a35d583a49f3b20ece13" -> "sha256:f5db45512b7287aeea82e0e57c967e1c368d35560009e3bd3c42619fe14d7b97" [label=""];
  "sha256:50a3f5c5ddf887e4b4f7310d8f72ad00ab570c6d3282f93db96c16340574b8be" -> "sha256:f5db45512b7287aeea82e0e57c967e1c368d35560009e3bd3c42619fe14d7b97" [label=""];
  "sha256:f5db45512b7287aeea82e0e57c967e1c368d35560009e3bd3c42619fe14d7b97" -> "sha256:451a9e09f08f8e7d28f53684699c6e0e32bc732c473b3aec9a266fe4772af6ca" [label=""];
  "sha256:451a9e09f08f8e7d28f53684699c6e0e32bc732c473b3aec9a266fe4772af6ca" -> "sha256:1364df47924e81ac0543d9805d9c1f93b59d3ba7b018ab37a4de2d7d7d43a6a7" [label=""];
  "sha256:50a3f5c5ddf887e4b4f7310d8f72ad00ab570c6d3282f93db96c16340574b8be" -> "sha256:1364df47924e81ac0543d9805d9c1f93b59d3ba7b018ab37a4de2d7d7d43a6a7" [label=""];
  "sha256:1364df47924e81ac0543d9805d9c1f93b59d3ba7b018ab37a4de2d7d7d43a6a7" -> "sha256:5ec28232a19a6f60c0fa757b281d0ac78b083ac92a7c25dab98903aa96ccc92a" [label=""];
}

