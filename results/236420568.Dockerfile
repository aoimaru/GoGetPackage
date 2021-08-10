[app/sources/236420568.Dockerfile]
digraph {
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" [label="docker-image://docker.io/library/node:boron-alpine" shape="ellipse"];
  "sha256:bbcca2a04abfbf0a48f7d42a90454e10b12f85dfec668653e854d51d594de8f6" [label="/bin/sh -c npm install yarn --global --no-progress --silent --depth 0" shape="box"];
  "sha256:c46488744f2f3aae728dbcf49e011016d094c7f1c15e389b7bec49313c6dfe5c" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:ce45785c27889b10093e62145b0c3ab231fa53ee8791ebe6235b7511527bb39b" [label="local://context" shape="ellipse"];
  "sha256:c54fe0b1f2b21ee798fbb6d2dd88537ee1c779d9b42b48bbc7084dfc7fb56ec2" [label="copy{src=/package.json, dest=/tmp/}" shape="note"];
  "sha256:11ea29b28a2171d5551b681674ac255852ec22abf9bbda63827f8e7d4ddb45e2" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:27a8d9f94fb8edf4dd19da674e8c3006c606fd6d567add571eaaada3e1faf70b" [label="mkdir{path=/app}" shape="note"];
  "sha256:64a3f8de1601b85fe50a992ece86cc7bfa5c7744e74d274ba03aef1ef7fd8518" [label="/bin/sh -c mkdir dist" shape="box"];
  "sha256:8711571001b0a2f240d001e420c8d7dd723dd7ffa2fa008f26e6ec7b64cc3691" [label="/bin/sh -c cp -a /tmp/node_modules /app/node_modules && cp -a /tmp/package.json /app/package.json" shape="box"];
  "sha256:eede9566307cc1f81860c99e5d32dd5265ec656a62796d650e57c461ac0bb940" [label="copy{src=/config, dest=/app/config}" shape="note"];
  "sha256:53df70e3d13784518f5bbf5e77fc27a03839775512818819b7de1d02e976d385" [label="copy{src=/.babelrc, dest=/app/.babelrc}" shape="note"];
  "sha256:75d0511ce20a82930115486830cc6fc5f6b4ddc22ec6329e769e34a11af7a79e" [label="copy{src=/src/client, dest=/app/src/client}" shape="note"];
  "sha256:c979ea1b78758befe35aa8a98cdd27303866a6c2772aca9d5cc069de0ffc7d3b" [label="sha256:c979ea1b78758befe35aa8a98cdd27303866a6c2772aca9d5cc069de0ffc7d3b" shape="plaintext"];
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" -> "sha256:bbcca2a04abfbf0a48f7d42a90454e10b12f85dfec668653e854d51d594de8f6" [label=""];
  "sha256:bbcca2a04abfbf0a48f7d42a90454e10b12f85dfec668653e854d51d594de8f6" -> "sha256:c46488744f2f3aae728dbcf49e011016d094c7f1c15e389b7bec49313c6dfe5c" [label=""];
  "sha256:c46488744f2f3aae728dbcf49e011016d094c7f1c15e389b7bec49313c6dfe5c" -> "sha256:c54fe0b1f2b21ee798fbb6d2dd88537ee1c779d9b42b48bbc7084dfc7fb56ec2" [label=""];
  "sha256:ce45785c27889b10093e62145b0c3ab231fa53ee8791ebe6235b7511527bb39b" -> "sha256:c54fe0b1f2b21ee798fbb6d2dd88537ee1c779d9b42b48bbc7084dfc7fb56ec2" [label=""];
  "sha256:c54fe0b1f2b21ee798fbb6d2dd88537ee1c779d9b42b48bbc7084dfc7fb56ec2" -> "sha256:11ea29b28a2171d5551b681674ac255852ec22abf9bbda63827f8e7d4ddb45e2" [label=""];
  "sha256:11ea29b28a2171d5551b681674ac255852ec22abf9bbda63827f8e7d4ddb45e2" -> "sha256:27a8d9f94fb8edf4dd19da674e8c3006c606fd6d567add571eaaada3e1faf70b" [label=""];
  "sha256:27a8d9f94fb8edf4dd19da674e8c3006c606fd6d567add571eaaada3e1faf70b" -> "sha256:64a3f8de1601b85fe50a992ece86cc7bfa5c7744e74d274ba03aef1ef7fd8518" [label=""];
  "sha256:64a3f8de1601b85fe50a992ece86cc7bfa5c7744e74d274ba03aef1ef7fd8518" -> "sha256:8711571001b0a2f240d001e420c8d7dd723dd7ffa2fa008f26e6ec7b64cc3691" [label=""];
  "sha256:8711571001b0a2f240d001e420c8d7dd723dd7ffa2fa008f26e6ec7b64cc3691" -> "sha256:eede9566307cc1f81860c99e5d32dd5265ec656a62796d650e57c461ac0bb940" [label=""];
  "sha256:ce45785c27889b10093e62145b0c3ab231fa53ee8791ebe6235b7511527bb39b" -> "sha256:eede9566307cc1f81860c99e5d32dd5265ec656a62796d650e57c461ac0bb940" [label=""];
  "sha256:eede9566307cc1f81860c99e5d32dd5265ec656a62796d650e57c461ac0bb940" -> "sha256:53df70e3d13784518f5bbf5e77fc27a03839775512818819b7de1d02e976d385" [label=""];
  "sha256:ce45785c27889b10093e62145b0c3ab231fa53ee8791ebe6235b7511527bb39b" -> "sha256:53df70e3d13784518f5bbf5e77fc27a03839775512818819b7de1d02e976d385" [label=""];
  "sha256:53df70e3d13784518f5bbf5e77fc27a03839775512818819b7de1d02e976d385" -> "sha256:75d0511ce20a82930115486830cc6fc5f6b4ddc22ec6329e769e34a11af7a79e" [label=""];
  "sha256:ce45785c27889b10093e62145b0c3ab231fa53ee8791ebe6235b7511527bb39b" -> "sha256:75d0511ce20a82930115486830cc6fc5f6b4ddc22ec6329e769e34a11af7a79e" [label=""];
  "sha256:75d0511ce20a82930115486830cc6fc5f6b4ddc22ec6329e769e34a11af7a79e" -> "sha256:c979ea1b78758befe35aa8a98cdd27303866a6c2772aca9d5cc069de0ffc7d3b" [label=""];
}

