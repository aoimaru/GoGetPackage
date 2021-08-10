[app/sources/214757916.Dockerfile]
digraph {
  "sha256:337bc9a8c7369326a995a7f681dfa480988836e942c15c9fe5dec6e917ae0390" [label="docker-image://docker.io/blacklabelops/jenkins:latest" shape="ellipse"];
  "sha256:ea6a12e9d7e99fffa68575fc4edb8c2d7c6d29dfca71a37c3844955e2dda7d9c" [label="/bin/sh -c echo \"Install Your Tools\"" shape="box"];
  "sha256:390adf5478c3d7dbcd33c0c5bcf4cb81730b61762c5dd7f3dc88a192edd2a239" [label="local://context" shape="ellipse"];
  "sha256:aa4a55597836b0b575c1d10bcd0ed24ba14101c56bf4110d66ffb69a00cbe5aa" [label="copy{src=/custom-entrypoint.sh, dest=/home/jenkins/custom-entrypoint.sh}" shape="note"];
  "sha256:95abe762df493b84df7f77bd5aa74ff95126a3dd1deda9854266eb25b83b1d7e" [label="sha256:95abe762df493b84df7f77bd5aa74ff95126a3dd1deda9854266eb25b83b1d7e" shape="plaintext"];
  "sha256:337bc9a8c7369326a995a7f681dfa480988836e942c15c9fe5dec6e917ae0390" -> "sha256:ea6a12e9d7e99fffa68575fc4edb8c2d7c6d29dfca71a37c3844955e2dda7d9c" [label=""];
  "sha256:ea6a12e9d7e99fffa68575fc4edb8c2d7c6d29dfca71a37c3844955e2dda7d9c" -> "sha256:aa4a55597836b0b575c1d10bcd0ed24ba14101c56bf4110d66ffb69a00cbe5aa" [label=""];
  "sha256:390adf5478c3d7dbcd33c0c5bcf4cb81730b61762c5dd7f3dc88a192edd2a239" -> "sha256:aa4a55597836b0b575c1d10bcd0ed24ba14101c56bf4110d66ffb69a00cbe5aa" [label=""];
  "sha256:aa4a55597836b0b575c1d10bcd0ed24ba14101c56bf4110d66ffb69a00cbe5aa" -> "sha256:95abe762df493b84df7f77bd5aa74ff95126a3dd1deda9854266eb25b83b1d7e" [label=""];
}

