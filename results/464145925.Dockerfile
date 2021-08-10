[app/sources/464145925.Dockerfile]
digraph {
  "sha256:19608c711a8c33bb56d0be479e0233f0cdd9bf96f8305c924a4fd6578322ca5a" [label="docker-image://docker.io/library/nginx:1.13.5-alpine" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:f5be4c559a78b365e84ad44155d4fad76975a0acd963f7d9614af877f1a20fb8" [label="local://context" shape="ellipse"];
  "sha256:67197e12e512ce18ac48c7e6e4e32a61fb87ff7265b298c174b6b8e02c00e702" [label="copy{src=/package.json, dest=/},copy{src=/package-lock.json, dest=/}" shape="note"];
  "sha256:38ee203e4a16f40a1c48aa5d70d06d6e5a571095018ee310cb6a2d6303b92322" [label="/bin/sh -c npm set progress=false && npm config set depth 0 && npm cache clean --force" shape="box"];
  "sha256:f708878d698572a136c70466add6ade32c10d9de59aa3925255368349cea816a" [label="/bin/sh -c npm i && mkdir /ng-alain && cp -R ./node_modules ./ng-alain" shape="box"];
  "sha256:8adddeaa04a2bde787fd08b36785e9d2676d1ce4ba91ffedfce45d8e6275b3cd" [label="mkdir{path=/ng-alain}" shape="note"];
  "sha256:38313639eb3b69df2008673cc133e2b67057bc9e388988f4ed35ff9f67df8ea9" [label="copy{src=/, dest=/ng-alain/}" shape="note"];
  "sha256:a43e4c71c94128db7a88f23f0d8ccb43412349c147d30bfd7d373445703b8a90" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:edcfc65efcfb2bc351362fb99d3bbed0c56c03ef7d14439a48321f697a879d55" [label="copy{src=/ng-alain/_nginx/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:130398432a7474cc8ced9b952f9a4336e8dc81017e467168bb7ebf9f9f4fd282" [label="copy{src=/ng-alain/_nginx/ssl/*, dest=/etc/nginx/ssl/}" shape="note"];
  "sha256:95c6de8d994d9fb0b38a87fc7a9ea91fc68dc5f6895981e3a10ed93c2acf0260" [label="/bin/sh -c rm -rf /usr/share/nginx/html/*" shape="box"];
  "sha256:a495ee18ab65cb8ee51807b25c5356fc623ecd62260dc25e55e72453d4faa8ae" [label="copy{src=/ng-alain/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:31205ed6c21072c18562a2b6344452bf707afedd14e72879ccca87e2710226ef" [label="sha256:31205ed6c21072c18562a2b6344452bf707afedd14e72879ccca87e2710226ef" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:67197e12e512ce18ac48c7e6e4e32a61fb87ff7265b298c174b6b8e02c00e702" [label=""];
  "sha256:f5be4c559a78b365e84ad44155d4fad76975a0acd963f7d9614af877f1a20fb8" -> "sha256:67197e12e512ce18ac48c7e6e4e32a61fb87ff7265b298c174b6b8e02c00e702" [label=""];
  "sha256:67197e12e512ce18ac48c7e6e4e32a61fb87ff7265b298c174b6b8e02c00e702" -> "sha256:38ee203e4a16f40a1c48aa5d70d06d6e5a571095018ee310cb6a2d6303b92322" [label=""];
  "sha256:38ee203e4a16f40a1c48aa5d70d06d6e5a571095018ee310cb6a2d6303b92322" -> "sha256:f708878d698572a136c70466add6ade32c10d9de59aa3925255368349cea816a" [label=""];
  "sha256:f708878d698572a136c70466add6ade32c10d9de59aa3925255368349cea816a" -> "sha256:8adddeaa04a2bde787fd08b36785e9d2676d1ce4ba91ffedfce45d8e6275b3cd" [label=""];
  "sha256:8adddeaa04a2bde787fd08b36785e9d2676d1ce4ba91ffedfce45d8e6275b3cd" -> "sha256:38313639eb3b69df2008673cc133e2b67057bc9e388988f4ed35ff9f67df8ea9" [label=""];
  "sha256:f5be4c559a78b365e84ad44155d4fad76975a0acd963f7d9614af877f1a20fb8" -> "sha256:38313639eb3b69df2008673cc133e2b67057bc9e388988f4ed35ff9f67df8ea9" [label=""];
  "sha256:38313639eb3b69df2008673cc133e2b67057bc9e388988f4ed35ff9f67df8ea9" -> "sha256:a43e4c71c94128db7a88f23f0d8ccb43412349c147d30bfd7d373445703b8a90" [label=""];
  "sha256:19608c711a8c33bb56d0be479e0233f0cdd9bf96f8305c924a4fd6578322ca5a" -> "sha256:edcfc65efcfb2bc351362fb99d3bbed0c56c03ef7d14439a48321f697a879d55" [label=""];
  "sha256:a43e4c71c94128db7a88f23f0d8ccb43412349c147d30bfd7d373445703b8a90" -> "sha256:edcfc65efcfb2bc351362fb99d3bbed0c56c03ef7d14439a48321f697a879d55" [label=""];
  "sha256:edcfc65efcfb2bc351362fb99d3bbed0c56c03ef7d14439a48321f697a879d55" -> "sha256:130398432a7474cc8ced9b952f9a4336e8dc81017e467168bb7ebf9f9f4fd282" [label=""];
  "sha256:a43e4c71c94128db7a88f23f0d8ccb43412349c147d30bfd7d373445703b8a90" -> "sha256:130398432a7474cc8ced9b952f9a4336e8dc81017e467168bb7ebf9f9f4fd282" [label=""];
  "sha256:130398432a7474cc8ced9b952f9a4336e8dc81017e467168bb7ebf9f9f4fd282" -> "sha256:95c6de8d994d9fb0b38a87fc7a9ea91fc68dc5f6895981e3a10ed93c2acf0260" [label=""];
  "sha256:95c6de8d994d9fb0b38a87fc7a9ea91fc68dc5f6895981e3a10ed93c2acf0260" -> "sha256:a495ee18ab65cb8ee51807b25c5356fc623ecd62260dc25e55e72453d4faa8ae" [label=""];
  "sha256:a43e4c71c94128db7a88f23f0d8ccb43412349c147d30bfd7d373445703b8a90" -> "sha256:a495ee18ab65cb8ee51807b25c5356fc623ecd62260dc25e55e72453d4faa8ae" [label=""];
  "sha256:a495ee18ab65cb8ee51807b25c5356fc623ecd62260dc25e55e72453d4faa8ae" -> "sha256:31205ed6c21072c18562a2b6344452bf707afedd14e72879ccca87e2710226ef" [label=""];
}

