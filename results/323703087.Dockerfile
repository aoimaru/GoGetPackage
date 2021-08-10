[app/sources/323703087.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:283eb8cb571ee2c5270d8e91e0be1cff0961d7a291dff61fc74c856b311b7045" [label="local://context" shape="ellipse"];
  "sha256:f8f025f082b6191aa38a749999f8a3490291fb8b7f05ebd13939f487a9af81ba" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:a4348ceaafbe00dd7e7a122fc50d846769f50b509465d7dd8b75693bb85a610e" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:08924356348727b93e4382c0a80fc266a82234cbaf95a533bfff4bc70e8c93dd" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:a046c209a909c9e07ae20dcf53d6c9975e3417b630170ef592333b52b6fa0844" [label="mkdir{path=/app}" shape="note"];
  "sha256:5cfeb2b527efd9e3925153666a8c86bd5a22d0c0fc5553eeb22879c8a2773f2a" [label="sha256:5cfeb2b527efd9e3925153666a8c86bd5a22d0c0fc5553eeb22879c8a2773f2a" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:f8f025f082b6191aa38a749999f8a3490291fb8b7f05ebd13939f487a9af81ba" [label=""];
  "sha256:283eb8cb571ee2c5270d8e91e0be1cff0961d7a291dff61fc74c856b311b7045" -> "sha256:f8f025f082b6191aa38a749999f8a3490291fb8b7f05ebd13939f487a9af81ba" [label=""];
  "sha256:f8f025f082b6191aa38a749999f8a3490291fb8b7f05ebd13939f487a9af81ba" -> "sha256:a4348ceaafbe00dd7e7a122fc50d846769f50b509465d7dd8b75693bb85a610e" [label=""];
  "sha256:a4348ceaafbe00dd7e7a122fc50d846769f50b509465d7dd8b75693bb85a610e" -> "sha256:08924356348727b93e4382c0a80fc266a82234cbaf95a533bfff4bc70e8c93dd" [label=""];
  "sha256:283eb8cb571ee2c5270d8e91e0be1cff0961d7a291dff61fc74c856b311b7045" -> "sha256:08924356348727b93e4382c0a80fc266a82234cbaf95a533bfff4bc70e8c93dd" [label=""];
  "sha256:08924356348727b93e4382c0a80fc266a82234cbaf95a533bfff4bc70e8c93dd" -> "sha256:a046c209a909c9e07ae20dcf53d6c9975e3417b630170ef592333b52b6fa0844" [label=""];
  "sha256:a046c209a909c9e07ae20dcf53d6c9975e3417b630170ef592333b52b6fa0844" -> "sha256:5cfeb2b527efd9e3925153666a8c86bd5a22d0c0fc5553eeb22879c8a2773f2a" [label=""];
}

