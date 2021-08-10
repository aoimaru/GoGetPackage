[app/sources/310686971.Dockerfile]
digraph {
  "sha256:5e4cc43974942decbc12114125dfb7558c37b9a44b338eb95acc104b96370aa2" [label="docker-image://docker.io/jfloff/thrike:8.5" shape="ellipse"];
  "sha256:d22cb0706d85347a262b894d6ba4f137be58976e35cc979adf411f287d75f06d" [label="mkdir{path=/home/client}" shape="note"];
  "sha256:288a5e60f90753e3a76aea80f266f98c26b99087069a42b36485354e9c9bc62e" [label="local://context" shape="ellipse"];
  "sha256:a728049c90ebc5ba36ddbf96a446cc9ff0dcc4c022010407943a3836271c68b5" [label="copy{src=/build.gradle, dest=/home/client}" shape="note"];
  "sha256:b2de6ac3656f79e5355223a9664c1b6eb3214a3a35f2b95e842b5284598d3d18" [label="/bin/sh -c gradle getDependencies" shape="box"];
  "sha256:6547a83994ed9a52b7e6bb72a9116dde4484c8a3a9454cd0451528d2ec58ea5f" [label="copy{src=/, dest=/home/client}" shape="note"];
  "sha256:0c68e59bdfa876aa43435c22dc314b7097d923af5645e90e621625f5f9e8af0e" [label="/bin/sh -c gradle build &&     cp build/libs/client.war /usr/local/tomcat/webapps/" shape="box"];
  "sha256:e4708a1ca8eae7446d4de90006092ff85e79f729b87fa4c1a6c37f116bda1ed4" [label="sha256:e4708a1ca8eae7446d4de90006092ff85e79f729b87fa4c1a6c37f116bda1ed4" shape="plaintext"];
  "sha256:5e4cc43974942decbc12114125dfb7558c37b9a44b338eb95acc104b96370aa2" -> "sha256:d22cb0706d85347a262b894d6ba4f137be58976e35cc979adf411f287d75f06d" [label=""];
  "sha256:d22cb0706d85347a262b894d6ba4f137be58976e35cc979adf411f287d75f06d" -> "sha256:a728049c90ebc5ba36ddbf96a446cc9ff0dcc4c022010407943a3836271c68b5" [label=""];
  "sha256:288a5e60f90753e3a76aea80f266f98c26b99087069a42b36485354e9c9bc62e" -> "sha256:a728049c90ebc5ba36ddbf96a446cc9ff0dcc4c022010407943a3836271c68b5" [label=""];
  "sha256:a728049c90ebc5ba36ddbf96a446cc9ff0dcc4c022010407943a3836271c68b5" -> "sha256:b2de6ac3656f79e5355223a9664c1b6eb3214a3a35f2b95e842b5284598d3d18" [label=""];
  "sha256:b2de6ac3656f79e5355223a9664c1b6eb3214a3a35f2b95e842b5284598d3d18" -> "sha256:6547a83994ed9a52b7e6bb72a9116dde4484c8a3a9454cd0451528d2ec58ea5f" [label=""];
  "sha256:288a5e60f90753e3a76aea80f266f98c26b99087069a42b36485354e9c9bc62e" -> "sha256:6547a83994ed9a52b7e6bb72a9116dde4484c8a3a9454cd0451528d2ec58ea5f" [label=""];
  "sha256:6547a83994ed9a52b7e6bb72a9116dde4484c8a3a9454cd0451528d2ec58ea5f" -> "sha256:0c68e59bdfa876aa43435c22dc314b7097d923af5645e90e621625f5f9e8af0e" [label=""];
  "sha256:0c68e59bdfa876aa43435c22dc314b7097d923af5645e90e621625f5f9e8af0e" -> "sha256:e4708a1ca8eae7446d4de90006092ff85e79f729b87fa4c1a6c37f116bda1ed4" [label=""];
}

