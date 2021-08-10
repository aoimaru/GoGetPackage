[app/sources/282178032.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label="mkdir{path=/app}" shape="note"];
  "sha256:abe8256ae5dc455c8230ac3a7d10a4b3d18988b5fdb833c541ba759c65c4e051" [label="local://context" shape="ellipse"];
  "sha256:62e8ab77684fefa8d407e23bc17032986238c92d0e0bbbbcb6e2de4a93bd46d1" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:7330251d69d38762ad7c6be6ef574de611a79bc7d19a700503b1c074c1896b8a" [label="sha256:7330251d69d38762ad7c6be6ef574de611a79bc7d19a700503b1c074c1896b8a" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label=""];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" -> "sha256:62e8ab77684fefa8d407e23bc17032986238c92d0e0bbbbcb6e2de4a93bd46d1" [label=""];
  "sha256:abe8256ae5dc455c8230ac3a7d10a4b3d18988b5fdb833c541ba759c65c4e051" -> "sha256:62e8ab77684fefa8d407e23bc17032986238c92d0e0bbbbcb6e2de4a93bd46d1" [label=""];
  "sha256:62e8ab77684fefa8d407e23bc17032986238c92d0e0bbbbcb6e2de4a93bd46d1" -> "sha256:7330251d69d38762ad7c6be6ef574de611a79bc7d19a700503b1c074c1896b8a" [label=""];
}

