[app/sources/252799825.Dockerfile]
digraph {
  "sha256:3ec31780978139b24a97cb3422beb35f8352ad2a58010cfd0e0abd231331d08b" [label="docker-image://docker.io/digitaldrummerj/android-nodejs:latest" shape="ellipse"];
  "sha256:596892f6f1fd4328670cca223a36e707bea05aaceb2f0178803e57847e30a0d0" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:3889a9d7c0666fef22a5e8e3198cf24b6c1e91dd25240659786d1e79f1435ec6" [label="/bin/sh -c npm i -g --unsafe-perm cordova bower gulp-cli" shape="box"];
  "sha256:a0df5dd2a12ac260007aaf89e0e5a3064315bb14708f33a8b8e946266c75086b" [label="sha256:a0df5dd2a12ac260007aaf89e0e5a3064315bb14708f33a8b8e946266c75086b" shape="plaintext"];
  "sha256:3ec31780978139b24a97cb3422beb35f8352ad2a58010cfd0e0abd231331d08b" -> "sha256:596892f6f1fd4328670cca223a36e707bea05aaceb2f0178803e57847e30a0d0" [label=""];
  "sha256:596892f6f1fd4328670cca223a36e707bea05aaceb2f0178803e57847e30a0d0" -> "sha256:3889a9d7c0666fef22a5e8e3198cf24b6c1e91dd25240659786d1e79f1435ec6" [label=""];
  "sha256:3889a9d7c0666fef22a5e8e3198cf24b6c1e91dd25240659786d1e79f1435ec6" -> "sha256:a0df5dd2a12ac260007aaf89e0e5a3064315bb14708f33a8b8e946266c75086b" [label=""];
}

