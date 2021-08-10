[app/sources/305985145.Dockerfile]
digraph {
  "sha256:427c70d19b48aba1566820206d8468df1b16ad324ae5e5d9efb5e57946e8466f" [label="local://context" shape="ellipse"];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" [label="docker-image://docker.io/library/clojure:latest" shape="ellipse"];
  "sha256:48763ee320857fb1e87b33104bb7889fa9287e8091cc6c707b6f5e62116ab4dd" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:f7cbe6c89df89a3ce1fe08cc94a761bf90969e7b0c1488e07eea7d3a646ff831" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:9169a4c10012935a9c4eeb304ea413538a948146be6afe9b50b84adb9849e08a" [label="copy{src=/project.clj, dest=/usr/src/app/}" shape="note"];
  "sha256:6a9622b57caf3be5fdef2c080b7640ad912f6f6550f61a7d926f37d8353d7a21" [label="/bin/sh -c lein deps" shape="box"];
  "sha256:9e3727c3d38a52753442628de490fc0431b3ee28f0fdff3eefa42f8b317dd258" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:28e0ab7423a8f1e89389fce8d08c2b2a5578a92b9d7ec7fe26462bac44edbea2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:26b56e74f4a9fedec9362b238027ae14043bfdab0b0ef894f395108ca9622870" [label="/bin/sh -c apt-get install -y awscli" shape="box"];
  "sha256:44c3557b3702bd86f135623a1f3f44bb24fd117e0046fb898f9663f01079e5d8" [label="/bin/sh -c bench/bin/download_watdiv_files.sh" shape="box"];
  "sha256:d8a621ce346d48792e5fccc54c80a2f0804f2783e2b7f1b95229a58602b2fea6" [label="sha256:d8a621ce346d48792e5fccc54c80a2f0804f2783e2b7f1b95229a58602b2fea6" shape="plaintext"];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" -> "sha256:48763ee320857fb1e87b33104bb7889fa9287e8091cc6c707b6f5e62116ab4dd" [label=""];
  "sha256:48763ee320857fb1e87b33104bb7889fa9287e8091cc6c707b6f5e62116ab4dd" -> "sha256:f7cbe6c89df89a3ce1fe08cc94a761bf90969e7b0c1488e07eea7d3a646ff831" [label=""];
  "sha256:f7cbe6c89df89a3ce1fe08cc94a761bf90969e7b0c1488e07eea7d3a646ff831" -> "sha256:9169a4c10012935a9c4eeb304ea413538a948146be6afe9b50b84adb9849e08a" [label=""];
  "sha256:427c70d19b48aba1566820206d8468df1b16ad324ae5e5d9efb5e57946e8466f" -> "sha256:9169a4c10012935a9c4eeb304ea413538a948146be6afe9b50b84adb9849e08a" [label=""];
  "sha256:9169a4c10012935a9c4eeb304ea413538a948146be6afe9b50b84adb9849e08a" -> "sha256:6a9622b57caf3be5fdef2c080b7640ad912f6f6550f61a7d926f37d8353d7a21" [label=""];
  "sha256:6a9622b57caf3be5fdef2c080b7640ad912f6f6550f61a7d926f37d8353d7a21" -> "sha256:9e3727c3d38a52753442628de490fc0431b3ee28f0fdff3eefa42f8b317dd258" [label=""];
  "sha256:427c70d19b48aba1566820206d8468df1b16ad324ae5e5d9efb5e57946e8466f" -> "sha256:9e3727c3d38a52753442628de490fc0431b3ee28f0fdff3eefa42f8b317dd258" [label=""];
  "sha256:9e3727c3d38a52753442628de490fc0431b3ee28f0fdff3eefa42f8b317dd258" -> "sha256:28e0ab7423a8f1e89389fce8d08c2b2a5578a92b9d7ec7fe26462bac44edbea2" [label=""];
  "sha256:28e0ab7423a8f1e89389fce8d08c2b2a5578a92b9d7ec7fe26462bac44edbea2" -> "sha256:26b56e74f4a9fedec9362b238027ae14043bfdab0b0ef894f395108ca9622870" [label=""];
  "sha256:26b56e74f4a9fedec9362b238027ae14043bfdab0b0ef894f395108ca9622870" -> "sha256:44c3557b3702bd86f135623a1f3f44bb24fd117e0046fb898f9663f01079e5d8" [label=""];
  "sha256:44c3557b3702bd86f135623a1f3f44bb24fd117e0046fb898f9663f01079e5d8" -> "sha256:d8a621ce346d48792e5fccc54c80a2f0804f2783e2b7f1b95229a58602b2fea6" [label=""];
}

