[app/sources/303607398.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:a171376eefec230121e1f41bd96bbd5fe0b85cd068ec3e10ebb9f457f3413817" [label="/bin/sh -c apk update && apk add   bash   make   patch   gcc   g++   gfortran   perl" shape="box"];
  "sha256:96af607f98fe485c1d28edc3e7c00be3720913b9e1206099280e42ec05fa4efb" [label="local://context" shape="ellipse"];
  "sha256:ab61ef9cd70356283d387078277440fb3de6aba038a424053c2796ae07876259" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:dec17d41b8d1d2605fdcd84f50fbe8f57294e0ae7deb446f3549a11fde91dd17" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:cc04d078c30eae204dc9ab222f5c2f671a95c47c3357edf68a75d05d819afc89" [label="copy{src=/src, dest=/pyglow/src/}" shape="note"];
  "sha256:54b5318877b4972a8efd38c1424ede2743722359efdd07671e97b5805d515763" [label="copy{src=/test, dest=/pyglow/test/}" shape="note"];
  "sha256:a947194d8ce600b56271df09577c8f1eeb2d596e7dcde6c63fc75c81ed881dfe" [label="copy{src=/setup.py, dest=/pyglow}" shape="note"];
  "sha256:5fe1d69ce708122b4dcf16d72a496bde907c88c96ccfabfcd97131c0f45d4502" [label="mkdir{path=/pyglow}" shape="note"];
  "sha256:0807d77acda5b73bbe29273c9aebda38bfb4e9f3b29a58b0d2d51a85bb9f6971" [label="/bin/sh -c make -C src/pyglow/models source" shape="box"];
  "sha256:19287f195ce8535aa62e114aa36f09b910574ad85e2a2b063041c763606c8a70" [label="/bin/sh -c python3 setup.py install --user" shape="box"];
  "sha256:42486f9deb05a3853a155134d3c66465b464232094bb07984c13563612f713e1" [label="sha256:42486f9deb05a3853a155134d3c66465b464232094bb07984c13563612f713e1" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:a171376eefec230121e1f41bd96bbd5fe0b85cd068ec3e10ebb9f457f3413817" [label=""];
  "sha256:a171376eefec230121e1f41bd96bbd5fe0b85cd068ec3e10ebb9f457f3413817" -> "sha256:ab61ef9cd70356283d387078277440fb3de6aba038a424053c2796ae07876259" [label=""];
  "sha256:96af607f98fe485c1d28edc3e7c00be3720913b9e1206099280e42ec05fa4efb" -> "sha256:ab61ef9cd70356283d387078277440fb3de6aba038a424053c2796ae07876259" [label=""];
  "sha256:ab61ef9cd70356283d387078277440fb3de6aba038a424053c2796ae07876259" -> "sha256:dec17d41b8d1d2605fdcd84f50fbe8f57294e0ae7deb446f3549a11fde91dd17" [label=""];
  "sha256:dec17d41b8d1d2605fdcd84f50fbe8f57294e0ae7deb446f3549a11fde91dd17" -> "sha256:cc04d078c30eae204dc9ab222f5c2f671a95c47c3357edf68a75d05d819afc89" [label=""];
  "sha256:96af607f98fe485c1d28edc3e7c00be3720913b9e1206099280e42ec05fa4efb" -> "sha256:cc04d078c30eae204dc9ab222f5c2f671a95c47c3357edf68a75d05d819afc89" [label=""];
  "sha256:cc04d078c30eae204dc9ab222f5c2f671a95c47c3357edf68a75d05d819afc89" -> "sha256:54b5318877b4972a8efd38c1424ede2743722359efdd07671e97b5805d515763" [label=""];
  "sha256:96af607f98fe485c1d28edc3e7c00be3720913b9e1206099280e42ec05fa4efb" -> "sha256:54b5318877b4972a8efd38c1424ede2743722359efdd07671e97b5805d515763" [label=""];
  "sha256:54b5318877b4972a8efd38c1424ede2743722359efdd07671e97b5805d515763" -> "sha256:a947194d8ce600b56271df09577c8f1eeb2d596e7dcde6c63fc75c81ed881dfe" [label=""];
  "sha256:96af607f98fe485c1d28edc3e7c00be3720913b9e1206099280e42ec05fa4efb" -> "sha256:a947194d8ce600b56271df09577c8f1eeb2d596e7dcde6c63fc75c81ed881dfe" [label=""];
  "sha256:a947194d8ce600b56271df09577c8f1eeb2d596e7dcde6c63fc75c81ed881dfe" -> "sha256:5fe1d69ce708122b4dcf16d72a496bde907c88c96ccfabfcd97131c0f45d4502" [label=""];
  "sha256:5fe1d69ce708122b4dcf16d72a496bde907c88c96ccfabfcd97131c0f45d4502" -> "sha256:0807d77acda5b73bbe29273c9aebda38bfb4e9f3b29a58b0d2d51a85bb9f6971" [label=""];
  "sha256:0807d77acda5b73bbe29273c9aebda38bfb4e9f3b29a58b0d2d51a85bb9f6971" -> "sha256:19287f195ce8535aa62e114aa36f09b910574ad85e2a2b063041c763606c8a70" [label=""];
  "sha256:19287f195ce8535aa62e114aa36f09b910574ad85e2a2b063041c763606c8a70" -> "sha256:42486f9deb05a3853a155134d3c66465b464232094bb07984c13563612f713e1" [label=""];
}

