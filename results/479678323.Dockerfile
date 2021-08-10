[app/sources/479678323.Dockerfile]
digraph {
  "sha256:0bf6f04daf8a80dbc9b1579e2435ff49a93fe9671ac1ae123bc8e2b6de81664f" [label="docker-image://docker.io/sscaling/mtail:latest" shape="ellipse"];
  "sha256:c4b62aef131cfeaedd2afc50518c51d4cf0ae5b17614331732ace394b0e4256e" [label="local://context" shape="ellipse"];
  "sha256:6d2c66d1c336d42e4ab918758c0cb3c182837e9df0f516751c271d40784b54c7" [label="copy{src=/toil.mtail, dest=/home/toil.mtail}" shape="note"];
  "sha256:95e428dacf6630886f028b14511a00e669c0b365b342214d29a77765b3d29068" [label="sha256:95e428dacf6630886f028b14511a00e669c0b365b342214d29a77765b3d29068" shape="plaintext"];
  "sha256:0bf6f04daf8a80dbc9b1579e2435ff49a93fe9671ac1ae123bc8e2b6de81664f" -> "sha256:6d2c66d1c336d42e4ab918758c0cb3c182837e9df0f516751c271d40784b54c7" [label=""];
  "sha256:c4b62aef131cfeaedd2afc50518c51d4cf0ae5b17614331732ace394b0e4256e" -> "sha256:6d2c66d1c336d42e4ab918758c0cb3c182837e9df0f516751c271d40784b54c7" [label=""];
  "sha256:6d2c66d1c336d42e4ab918758c0cb3c182837e9df0f516751c271d40784b54c7" -> "sha256:95e428dacf6630886f028b14511a00e669c0b365b342214d29a77765b3d29068" [label=""];
}

