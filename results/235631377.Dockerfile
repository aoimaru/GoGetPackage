[app/sources/235631377.Dockerfile]
digraph {
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" [label="docker-image://docker.io/microsoft/dotnet:latest" shape="ellipse"];
  "sha256:1337c97a765667d0b388210b2a9397ad82ba606de8c9e483771eb15b04055b8f" [label="local://context" shape="ellipse"];
  "sha256:9e8bac9df5b78adba25d93a1e914c01dfc059cca15b192652c28e56f6f8a0adf" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:85d081a19981243a03d680e47331e55afad5a8b2fa559128452e66105d218317" [label="mkdir{path=/app}" shape="note"];
  "sha256:93edaa13f6d63e8336f9facdb25c156ff80dabd85143a13a3de1d75175fd5c67" [label="dotnet restore" shape="box"];
  "sha256:b1b563833b583174af0f025550b9469291c6a82537633073c5ee99ab60b3e7d8" [label="dotnet build" shape="box"];
  "sha256:a40a08da7b2c1b6c5337c778a972b484435017502bf75d2b53c3b28ee1b007b7" [label="sha256:a40a08da7b2c1b6c5337c778a972b484435017502bf75d2b53c3b28ee1b007b7" shape="plaintext"];
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" -> "sha256:9e8bac9df5b78adba25d93a1e914c01dfc059cca15b192652c28e56f6f8a0adf" [label=""];
  "sha256:1337c97a765667d0b388210b2a9397ad82ba606de8c9e483771eb15b04055b8f" -> "sha256:9e8bac9df5b78adba25d93a1e914c01dfc059cca15b192652c28e56f6f8a0adf" [label=""];
  "sha256:9e8bac9df5b78adba25d93a1e914c01dfc059cca15b192652c28e56f6f8a0adf" -> "sha256:85d081a19981243a03d680e47331e55afad5a8b2fa559128452e66105d218317" [label=""];
  "sha256:85d081a19981243a03d680e47331e55afad5a8b2fa559128452e66105d218317" -> "sha256:93edaa13f6d63e8336f9facdb25c156ff80dabd85143a13a3de1d75175fd5c67" [label=""];
  "sha256:93edaa13f6d63e8336f9facdb25c156ff80dabd85143a13a3de1d75175fd5c67" -> "sha256:b1b563833b583174af0f025550b9469291c6a82537633073c5ee99ab60b3e7d8" [label=""];
  "sha256:b1b563833b583174af0f025550b9469291c6a82537633073c5ee99ab60b3e7d8" -> "sha256:a40a08da7b2c1b6c5337c778a972b484435017502bf75d2b53c3b28ee1b007b7" [label=""];
}

