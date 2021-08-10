[app/sources/314937797.Dockerfile]
digraph {
  "sha256:36db10077aaa68c83cb693d63718204ec3bcaef2be9f52df61307f80d12fa62b" [label="local://context" shape="ellipse"];
  "sha256:f742e3d626dbc4dd0508232351abc164fbff255497fc98adb9391d64c4b93ab9" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu" shape="ellipse"];
  "sha256:67a537f8e9eba41be01dc1c6ac03794822301f983ff2abe2b87d8bf54337b930" [label="mkdir{path=/model}" shape="note"];
  "sha256:aee81bd4cfd2954ab53e2e3370a56efa61111e6e4108d8349a5aa8e002c580f2" [label="copy{src=/vggish, dest=/model/vggish}" shape="note"];
  "sha256:2cc9aa38031f81db2369c7bc9bc6c3f2369c39ab9826979fef9c2d4f9fffafce" [label="copy{src=/requirements-docker.txt, dest=/model/requirements.txt}" shape="note"];
  "sha256:0c475fbacba24502b84930b18c1488889b94bd5fc02a0ae025c69b1564b2c400" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:3305f183946414122e59a7edfdbc43175cb35238f101a00dead75256413a2e1d" [label="copy{src=/code, dest=/model/code}" shape="note"];
  "sha256:1f7a01c9c89167b89cc2360720681ceb45a94229f272bf618d7da3d4dbc78308" [label="mkdir{path=/model/code}" shape="note"];
  "sha256:ade54a1f4df9a6f75bd0b976ae38896f4186b2da6da9a271d79c835f89653697" [label="sha256:ade54a1f4df9a6f75bd0b976ae38896f4186b2da6da9a271d79c835f89653697" shape="plaintext"];
  "sha256:f742e3d626dbc4dd0508232351abc164fbff255497fc98adb9391d64c4b93ab9" -> "sha256:67a537f8e9eba41be01dc1c6ac03794822301f983ff2abe2b87d8bf54337b930" [label=""];
  "sha256:67a537f8e9eba41be01dc1c6ac03794822301f983ff2abe2b87d8bf54337b930" -> "sha256:aee81bd4cfd2954ab53e2e3370a56efa61111e6e4108d8349a5aa8e002c580f2" [label=""];
  "sha256:36db10077aaa68c83cb693d63718204ec3bcaef2be9f52df61307f80d12fa62b" -> "sha256:aee81bd4cfd2954ab53e2e3370a56efa61111e6e4108d8349a5aa8e002c580f2" [label=""];
  "sha256:aee81bd4cfd2954ab53e2e3370a56efa61111e6e4108d8349a5aa8e002c580f2" -> "sha256:2cc9aa38031f81db2369c7bc9bc6c3f2369c39ab9826979fef9c2d4f9fffafce" [label=""];
  "sha256:36db10077aaa68c83cb693d63718204ec3bcaef2be9f52df61307f80d12fa62b" -> "sha256:2cc9aa38031f81db2369c7bc9bc6c3f2369c39ab9826979fef9c2d4f9fffafce" [label=""];
  "sha256:2cc9aa38031f81db2369c7bc9bc6c3f2369c39ab9826979fef9c2d4f9fffafce" -> "sha256:0c475fbacba24502b84930b18c1488889b94bd5fc02a0ae025c69b1564b2c400" [label=""];
  "sha256:0c475fbacba24502b84930b18c1488889b94bd5fc02a0ae025c69b1564b2c400" -> "sha256:3305f183946414122e59a7edfdbc43175cb35238f101a00dead75256413a2e1d" [label=""];
  "sha256:36db10077aaa68c83cb693d63718204ec3bcaef2be9f52df61307f80d12fa62b" -> "sha256:3305f183946414122e59a7edfdbc43175cb35238f101a00dead75256413a2e1d" [label=""];
  "sha256:3305f183946414122e59a7edfdbc43175cb35238f101a00dead75256413a2e1d" -> "sha256:1f7a01c9c89167b89cc2360720681ceb45a94229f272bf618d7da3d4dbc78308" [label=""];
  "sha256:1f7a01c9c89167b89cc2360720681ceb45a94229f272bf618d7da3d4dbc78308" -> "sha256:ade54a1f4df9a6f75bd0b976ae38896f4186b2da6da9a271d79c835f89653697" [label=""];
}

