[app/sources/352685065.Dockerfile]
digraph {
  "sha256:5a5b57ac4c0bc614e86ebf7c7ef2d3dedfee3ecc5d87e3787bb534ccbda31a11" [label="docker-image://docker.io/danisla/rpi-omxplayer:latest" shape="ellipse"];
  "sha256:6a4dd6148c69c6fa96f384c71d6d0b442803bd46bf81b996bde94faaae32e87f" [label="local://context" shape="ellipse"];
  "sha256:70d8e59003a79fefe264172162c2e835d1bbc580d7cf046ade786198bacda9df" [label="copy{src=/start.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:a60dd217f1bc4ca1f7f7d14948875d9198f1ddc950417791291fc42f511de1c9" [label="/bin/sh -c chmod +x /usr/local/bin/start.sh" shape="box"];
  "sha256:76faa8ab52d25cbf0266c2fe22eab9534a0142d1126233ca112c29dde4e7f9e2" [label="sha256:76faa8ab52d25cbf0266c2fe22eab9534a0142d1126233ca112c29dde4e7f9e2" shape="plaintext"];
  "sha256:5a5b57ac4c0bc614e86ebf7c7ef2d3dedfee3ecc5d87e3787bb534ccbda31a11" -> "sha256:70d8e59003a79fefe264172162c2e835d1bbc580d7cf046ade786198bacda9df" [label=""];
  "sha256:6a4dd6148c69c6fa96f384c71d6d0b442803bd46bf81b996bde94faaae32e87f" -> "sha256:70d8e59003a79fefe264172162c2e835d1bbc580d7cf046ade786198bacda9df" [label=""];
  "sha256:70d8e59003a79fefe264172162c2e835d1bbc580d7cf046ade786198bacda9df" -> "sha256:a60dd217f1bc4ca1f7f7d14948875d9198f1ddc950417791291fc42f511de1c9" [label=""];
  "sha256:a60dd217f1bc4ca1f7f7d14948875d9198f1ddc950417791291fc42f511de1c9" -> "sha256:76faa8ab52d25cbf0266c2fe22eab9534a0142d1126233ca112c29dde4e7f9e2" [label=""];
}

