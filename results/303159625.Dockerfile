[app/sources/303159625.Dockerfile]
digraph {
  "sha256:db37d4865bb0df8efd2541d70fecd12c732da134b915bc095011f4456cf882cb" [label="docker-image://docker.io/library/nginx:stable-alpine" shape="ellipse"];
  "sha256:73cf17d6cdf18208b362639be58cb0f0376d8bee604b551625890c7acb8e4b6b" [label="local://context" shape="ellipse"];
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" [label="docker-image://docker.io/library/node:lts-alpine" shape="ellipse"];
  "sha256:0e434e53744ccddb54e8d0d2468bb35ebefbb05ae0c8ce832393ecadd40dd2ad" [label="mkdir{path=/app}" shape="note"];
  "sha256:a852a62367d56a101c1fd4435d909a1e0f260f69cf385e302067163b74f47691" [label="copy{src=/package*.json, dest=/app/}" shape="note"];
  "sha256:63a4c04e943394f23eacb86fd2523bd092651b3a0288188f1a3f8f0f00ad8693" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:6343c8f014bddfdca845f84d3cd39fabae539f0ca08a8d31a9e40b19d864dd3d" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:516acfbe291e03adc0ee12054a5ee403b9590b2bbc122e04e01912944206ab05" [label="/bin/sh -c yarn run build" shape="box"];
  "sha256:6ca1d93e98be2c559a31393ab83b5e5d4ca10ef97eaa89247b88b59636219bc5" [label="copy{src=/app/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:30499c5b1b372404664108d94596e0a16e3792ef3eb4317a5c58469569e63770" [label="sha256:30499c5b1b372404664108d94596e0a16e3792ef3eb4317a5c58469569e63770" shape="plaintext"];
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" -> "sha256:0e434e53744ccddb54e8d0d2468bb35ebefbb05ae0c8ce832393ecadd40dd2ad" [label=""];
  "sha256:0e434e53744ccddb54e8d0d2468bb35ebefbb05ae0c8ce832393ecadd40dd2ad" -> "sha256:a852a62367d56a101c1fd4435d909a1e0f260f69cf385e302067163b74f47691" [label=""];
  "sha256:73cf17d6cdf18208b362639be58cb0f0376d8bee604b551625890c7acb8e4b6b" -> "sha256:a852a62367d56a101c1fd4435d909a1e0f260f69cf385e302067163b74f47691" [label=""];
  "sha256:a852a62367d56a101c1fd4435d909a1e0f260f69cf385e302067163b74f47691" -> "sha256:63a4c04e943394f23eacb86fd2523bd092651b3a0288188f1a3f8f0f00ad8693" [label=""];
  "sha256:63a4c04e943394f23eacb86fd2523bd092651b3a0288188f1a3f8f0f00ad8693" -> "sha256:6343c8f014bddfdca845f84d3cd39fabae539f0ca08a8d31a9e40b19d864dd3d" [label=""];
  "sha256:73cf17d6cdf18208b362639be58cb0f0376d8bee604b551625890c7acb8e4b6b" -> "sha256:6343c8f014bddfdca845f84d3cd39fabae539f0ca08a8d31a9e40b19d864dd3d" [label=""];
  "sha256:6343c8f014bddfdca845f84d3cd39fabae539f0ca08a8d31a9e40b19d864dd3d" -> "sha256:516acfbe291e03adc0ee12054a5ee403b9590b2bbc122e04e01912944206ab05" [label=""];
  "sha256:db37d4865bb0df8efd2541d70fecd12c732da134b915bc095011f4456cf882cb" -> "sha256:6ca1d93e98be2c559a31393ab83b5e5d4ca10ef97eaa89247b88b59636219bc5" [label=""];
  "sha256:516acfbe291e03adc0ee12054a5ee403b9590b2bbc122e04e01912944206ab05" -> "sha256:6ca1d93e98be2c559a31393ab83b5e5d4ca10ef97eaa89247b88b59636219bc5" [label=""];
  "sha256:6ca1d93e98be2c559a31393ab83b5e5d4ca10ef97eaa89247b88b59636219bc5" -> "sha256:30499c5b1b372404664108d94596e0a16e3792ef3eb4317a5c58469569e63770" [label=""];
}

