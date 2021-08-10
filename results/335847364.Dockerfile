[app/sources/335847364.Dockerfile]
digraph {
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2@sha256:08277d629af9d5324b63420a650cd96f86e73c4cfdcef6ea3c45912e7578956d" shape="ellipse"];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label="mkdir{path=/app}" shape="note"];
  "sha256:40a813a701482f2ee4a77c9d14b65dae3b3882701283aaa353cf9e1d94aa9e33" [label="docker-image://docker.io/library/builder:latest" shape="ellipse"];
  "sha256:b3011db3499818730dbfd0e209e9c71922e5014ac9220e72560ca1fb28522a71" [label="copy{src=/app/src/DShop.Services.Signalr/out, dest=/app/}" shape="note"];
  "sha256:4c1c4061fefceebe0c1ed857b58919d76465bf428e956036d146bda8df9bb9cf" [label="sha256:4c1c4061fefceebe0c1ed857b58919d76465bf428e956036d146bda8df9bb9cf" shape="plaintext"];
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" -> "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label=""];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" -> "sha256:b3011db3499818730dbfd0e209e9c71922e5014ac9220e72560ca1fb28522a71" [label=""];
  "sha256:40a813a701482f2ee4a77c9d14b65dae3b3882701283aaa353cf9e1d94aa9e33" -> "sha256:b3011db3499818730dbfd0e209e9c71922e5014ac9220e72560ca1fb28522a71" [label=""];
  "sha256:b3011db3499818730dbfd0e209e9c71922e5014ac9220e72560ca1fb28522a71" -> "sha256:4c1c4061fefceebe0c1ed857b58919d76465bf428e956036d146bda8df9bb9cf" [label=""];
}

