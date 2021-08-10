[app/sources/291104917.Dockerfile]
digraph {
  "sha256:b16e11f1d82a47927d6c435f26c8f22a61d453386073a0ae7e2a6ba9b5e792fa" [label="docker-image://docker.io/fholzer/nginx-brotli:latest" shape="ellipse"];
  "sha256:408fc72d6eb67ad0b253916ffda46990f459905271934f023313790ec341ded5" [label="docker-image://docker.io/library/node:8.6" shape="ellipse"];
  "sha256:635e3f83ed6a696c70d40d3cfc404c7128960ffaef260652963ef6384934ee4b" [label="mkdir{path=/app}" shape="note"];
  "sha256:b6dbb0ab5bc647ab6b5c01ee1b3686160cf38aa61b6247402646bb85f7e19282" [label="local://context" shape="ellipse"];
  "sha256:c42432314306a8a439de784418cc0ee202f55f3e3b87907d88d721bc59a9014c" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:e959b277ec113d7d7dac95c3fc41c3ab1bdf817dd467179b5defdf670e08e070" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5515f6391b0391dc2b6f4ce4dd3a7abd586c217a275b64d6b96973bc27f7b648" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d9ad80ebc62820c9e1f54bcbae51dc246aefdc590205ca9d73131fc8d307b2a2" [label="/bin/sh -c npm run build-aot" shape="box"];
  "sha256:f2ab3732b9496dd627edc13dda22dd521da82b30665d52e5607ea4f385004785" [label="copy{src=/app/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:5623d89ed1b13807a832649c7804b0200f770673854d3f3b3d918dbee89bdbca" [label="copy{src=/nginx-custom.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:4d0ee61186e0874e78d5b2bcebaccf1e61a9744e4f4d8a5d91c7924c04741ef3" [label="sha256:4d0ee61186e0874e78d5b2bcebaccf1e61a9744e4f4d8a5d91c7924c04741ef3" shape="plaintext"];
  "sha256:408fc72d6eb67ad0b253916ffda46990f459905271934f023313790ec341ded5" -> "sha256:635e3f83ed6a696c70d40d3cfc404c7128960ffaef260652963ef6384934ee4b" [label=""];
  "sha256:635e3f83ed6a696c70d40d3cfc404c7128960ffaef260652963ef6384934ee4b" -> "sha256:c42432314306a8a439de784418cc0ee202f55f3e3b87907d88d721bc59a9014c" [label=""];
  "sha256:b6dbb0ab5bc647ab6b5c01ee1b3686160cf38aa61b6247402646bb85f7e19282" -> "sha256:c42432314306a8a439de784418cc0ee202f55f3e3b87907d88d721bc59a9014c" [label=""];
  "sha256:c42432314306a8a439de784418cc0ee202f55f3e3b87907d88d721bc59a9014c" -> "sha256:e959b277ec113d7d7dac95c3fc41c3ab1bdf817dd467179b5defdf670e08e070" [label=""];
  "sha256:e959b277ec113d7d7dac95c3fc41c3ab1bdf817dd467179b5defdf670e08e070" -> "sha256:5515f6391b0391dc2b6f4ce4dd3a7abd586c217a275b64d6b96973bc27f7b648" [label=""];
  "sha256:b6dbb0ab5bc647ab6b5c01ee1b3686160cf38aa61b6247402646bb85f7e19282" -> "sha256:5515f6391b0391dc2b6f4ce4dd3a7abd586c217a275b64d6b96973bc27f7b648" [label=""];
  "sha256:5515f6391b0391dc2b6f4ce4dd3a7abd586c217a275b64d6b96973bc27f7b648" -> "sha256:d9ad80ebc62820c9e1f54bcbae51dc246aefdc590205ca9d73131fc8d307b2a2" [label=""];
  "sha256:b16e11f1d82a47927d6c435f26c8f22a61d453386073a0ae7e2a6ba9b5e792fa" -> "sha256:f2ab3732b9496dd627edc13dda22dd521da82b30665d52e5607ea4f385004785" [label=""];
  "sha256:d9ad80ebc62820c9e1f54bcbae51dc246aefdc590205ca9d73131fc8d307b2a2" -> "sha256:f2ab3732b9496dd627edc13dda22dd521da82b30665d52e5607ea4f385004785" [label=""];
  "sha256:f2ab3732b9496dd627edc13dda22dd521da82b30665d52e5607ea4f385004785" -> "sha256:5623d89ed1b13807a832649c7804b0200f770673854d3f3b3d918dbee89bdbca" [label=""];
  "sha256:b6dbb0ab5bc647ab6b5c01ee1b3686160cf38aa61b6247402646bb85f7e19282" -> "sha256:5623d89ed1b13807a832649c7804b0200f770673854d3f3b3d918dbee89bdbca" [label=""];
  "sha256:5623d89ed1b13807a832649c7804b0200f770673854d3f3b3d918dbee89bdbca" -> "sha256:4d0ee61186e0874e78d5b2bcebaccf1e61a9744e4f4d8a5d91c7924c04741ef3" [label=""];
}

