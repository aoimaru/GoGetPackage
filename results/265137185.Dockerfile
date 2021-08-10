[app/sources/265137185.Dockerfile]
digraph {
  "sha256:c533a726f047605b426ea2955aca45157e467789694cf38e7e35a971ab9d19ef" [label="docker-image://docker.io/microsoft/aspnet:latest" shape="ellipse"];
  "sha256:f2ff911a05acac3e723ec32506d21d4c74b010b1a2add42f50d2a3946de3941e" [label="mkdir{path=/inetpub/wwwroot}" shape="note"];
  "sha256:220eb1756700e0737460eaede02dabb93f3d67e9cf48b2807362e408e5efea1c" [label="local://context" shape="ellipse"];
  "sha256:6b78ad015b7bb6b5c0a3da1c66317f739768546bd8e7fe7fd57c70b22d0a6730" [label="copy{src=/obj/Docker/publish, dest=/inetpub/wwwroot/}" shape="note"];
  "sha256:66fb3cd04dc96fd62a855e09b44a346b71dee613c0d54fda444e86306b332006" [label="sha256:66fb3cd04dc96fd62a855e09b44a346b71dee613c0d54fda444e86306b332006" shape="plaintext"];
  "sha256:c533a726f047605b426ea2955aca45157e467789694cf38e7e35a971ab9d19ef" -> "sha256:f2ff911a05acac3e723ec32506d21d4c74b010b1a2add42f50d2a3946de3941e" [label=""];
  "sha256:f2ff911a05acac3e723ec32506d21d4c74b010b1a2add42f50d2a3946de3941e" -> "sha256:6b78ad015b7bb6b5c0a3da1c66317f739768546bd8e7fe7fd57c70b22d0a6730" [label=""];
  "sha256:220eb1756700e0737460eaede02dabb93f3d67e9cf48b2807362e408e5efea1c" -> "sha256:6b78ad015b7bb6b5c0a3da1c66317f739768546bd8e7fe7fd57c70b22d0a6730" [label=""];
  "sha256:6b78ad015b7bb6b5c0a3da1c66317f739768546bd8e7fe7fd57c70b22d0a6730" -> "sha256:66fb3cd04dc96fd62a855e09b44a346b71dee613c0d54fda444e86306b332006" [label=""];
}

