[app/sources/275029772.Dockerfile]
digraph {
  "sha256:c4da1246caf2878de284d645e53effbf8812d0ea63fd03d307c62c2914f3ae13" [label="docker-image://docker.io/library/cqparts-env:ubuntu-py2" shape="ellipse"];
  "sha256:44ccc046625d2bbc69ddf4c6898d2e9f4148b91b17d48caa2f2049856c668cff" [label="local://context" shape="ellipse"];
  "sha256:9f08bcd696d39fadf96d571e85a62fe98729d9339166582844f9be0b13e6de67" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:69045c4d81521569ca02e7c15da6c814e98cb199100f8b4188528138e21b7c89" [label="mkdir{path=/code/tests}" shape="note"];
  "sha256:8f35b6243107d37609d92e17aca9512ae0cda587fdd483026060caf759fed6c6" [label="/bin/sh -c bash /code/${env_rel_path}/setup.sh" shape="box"];
  "sha256:339dde7bb82c90e1697f135f558b67b93c22f60d47cbefad1449b8a0ebf866e1" [label="sha256:339dde7bb82c90e1697f135f558b67b93c22f60d47cbefad1449b8a0ebf866e1" shape="plaintext"];
  "sha256:c4da1246caf2878de284d645e53effbf8812d0ea63fd03d307c62c2914f3ae13" -> "sha256:9f08bcd696d39fadf96d571e85a62fe98729d9339166582844f9be0b13e6de67" [label=""];
  "sha256:44ccc046625d2bbc69ddf4c6898d2e9f4148b91b17d48caa2f2049856c668cff" -> "sha256:9f08bcd696d39fadf96d571e85a62fe98729d9339166582844f9be0b13e6de67" [label=""];
  "sha256:9f08bcd696d39fadf96d571e85a62fe98729d9339166582844f9be0b13e6de67" -> "sha256:69045c4d81521569ca02e7c15da6c814e98cb199100f8b4188528138e21b7c89" [label=""];
  "sha256:69045c4d81521569ca02e7c15da6c814e98cb199100f8b4188528138e21b7c89" -> "sha256:8f35b6243107d37609d92e17aca9512ae0cda587fdd483026060caf759fed6c6" [label=""];
  "sha256:8f35b6243107d37609d92e17aca9512ae0cda587fdd483026060caf759fed6c6" -> "sha256:339dde7bb82c90e1697f135f558b67b93c22f60d47cbefad1449b8a0ebf866e1" [label=""];
}

