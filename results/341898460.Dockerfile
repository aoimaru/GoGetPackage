[app/sources/341898460.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b1aaafdd98edff271420d76cdf041d602c19766c591a20bdd7680b88f4ab92e9" [label="local://context" shape="ellipse"];
  "sha256:9b7ce7b8191b91835a0ba0138050a6d10da7215c8d55326d3aad19160919a19f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:35d4b6b7e3fc8ca9ad7659a56d097772170c0afdcdee3ee91fb4cb1ee767e03a" [label="sha256:35d4b6b7e3fc8ca9ad7659a56d097772170c0afdcdee3ee91fb4cb1ee767e03a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:9b7ce7b8191b91835a0ba0138050a6d10da7215c8d55326d3aad19160919a19f" [label=""];
  "sha256:b1aaafdd98edff271420d76cdf041d602c19766c591a20bdd7680b88f4ab92e9" -> "sha256:9b7ce7b8191b91835a0ba0138050a6d10da7215c8d55326d3aad19160919a19f" [label=""];
  "sha256:9b7ce7b8191b91835a0ba0138050a6d10da7215c8d55326d3aad19160919a19f" -> "sha256:35d4b6b7e3fc8ca9ad7659a56d097772170c0afdcdee3ee91fb4cb1ee767e03a" [label=""];
}

