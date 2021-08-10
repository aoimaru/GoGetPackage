[app/sources/315497429.Dockerfile]
digraph {
  "sha256:49aba05e34c50f05780900b7c61f7ba36ac293773334393d1af46136acc9c574" [label="docker-image://docker.io/library/nginx:1.13.9-alpine" shape="ellipse"];
  "sha256:66f5a63f342bb4a1e356931c0c827ff1050c0be28b1ce201906470794416a372" [label="/bin/sh -c rm -rf /etc/nginx/conf.d" shape="box"];
  "sha256:ac2f16609c8f84bfb40842a2f0a2d86fbb1c93454b1807ebcd8a0730e98feb2c" [label="local://context" shape="ellipse"];
  "sha256:8b4f8f8c08d801be45bca6fc17ee2776da36fb850607a481c9835f375d18e88a" [label="copy{src=/nginx/conf, dest=/etc/nginx}" shape="note"];
  "sha256:01c9ad5753929099520ce6bc8d2910f497d466ae4343b6f3d370f439a861e11c" [label="docker-image://docker.io/library/node:9.6.1" shape="ellipse"];
  "sha256:7d548cddf98514c396fd555440d50fa9912186bb9c743ed3fc65bab9bdb3b53b" [label="/bin/sh -c mkdir /usr/src/app" shape="box"];
  "sha256:119d80420a77601b5e1892a5f10832b6c26cc0b830e3549219732e6cdccc2d32" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d0d63341dd19dcd527a9ee2f798de582ba9a79121cc5e15f4da0a482f51bc399" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:4f5d477af5452b0b20d3f2afd4487289a4356d8c71cf4717905ebbba38c157fe" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:5c61469ef29cf35c7acdad61f5f79975931a6f275e95e54ba049c377fdb8fb46" [label="/bin/sh -c npm install react-scripts@1.1.1 -g --silent" shape="box"];
  "sha256:e786d0c3943901e921c61ce4be1cd82faa6bfa1e2873012b774a303e50337d89" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:724ae7c54addf0c18e988833aaa135a64d0ae9b0e110077202bb548344cf032f" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:44760a326b354837e32a1910c20b1733b8632225f80709bac9e9640570f77c77" [label="copy{src=/usr/src/app/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:c5372ab31e340a88328dd436eef3cd159582c172eb508fedf3850cfef70ca57a" [label="sha256:c5372ab31e340a88328dd436eef3cd159582c172eb508fedf3850cfef70ca57a" shape="plaintext"];
  "sha256:49aba05e34c50f05780900b7c61f7ba36ac293773334393d1af46136acc9c574" -> "sha256:66f5a63f342bb4a1e356931c0c827ff1050c0be28b1ce201906470794416a372" [label=""];
  "sha256:66f5a63f342bb4a1e356931c0c827ff1050c0be28b1ce201906470794416a372" -> "sha256:8b4f8f8c08d801be45bca6fc17ee2776da36fb850607a481c9835f375d18e88a" [label=""];
  "sha256:ac2f16609c8f84bfb40842a2f0a2d86fbb1c93454b1807ebcd8a0730e98feb2c" -> "sha256:8b4f8f8c08d801be45bca6fc17ee2776da36fb850607a481c9835f375d18e88a" [label=""];
  "sha256:01c9ad5753929099520ce6bc8d2910f497d466ae4343b6f3d370f439a861e11c" -> "sha256:7d548cddf98514c396fd555440d50fa9912186bb9c743ed3fc65bab9bdb3b53b" [label=""];
  "sha256:7d548cddf98514c396fd555440d50fa9912186bb9c743ed3fc65bab9bdb3b53b" -> "sha256:119d80420a77601b5e1892a5f10832b6c26cc0b830e3549219732e6cdccc2d32" [label=""];
  "sha256:119d80420a77601b5e1892a5f10832b6c26cc0b830e3549219732e6cdccc2d32" -> "sha256:d0d63341dd19dcd527a9ee2f798de582ba9a79121cc5e15f4da0a482f51bc399" [label=""];
  "sha256:ac2f16609c8f84bfb40842a2f0a2d86fbb1c93454b1807ebcd8a0730e98feb2c" -> "sha256:d0d63341dd19dcd527a9ee2f798de582ba9a79121cc5e15f4da0a482f51bc399" [label=""];
  "sha256:d0d63341dd19dcd527a9ee2f798de582ba9a79121cc5e15f4da0a482f51bc399" -> "sha256:4f5d477af5452b0b20d3f2afd4487289a4356d8c71cf4717905ebbba38c157fe" [label=""];
  "sha256:4f5d477af5452b0b20d3f2afd4487289a4356d8c71cf4717905ebbba38c157fe" -> "sha256:5c61469ef29cf35c7acdad61f5f79975931a6f275e95e54ba049c377fdb8fb46" [label=""];
  "sha256:5c61469ef29cf35c7acdad61f5f79975931a6f275e95e54ba049c377fdb8fb46" -> "sha256:e786d0c3943901e921c61ce4be1cd82faa6bfa1e2873012b774a303e50337d89" [label=""];
  "sha256:ac2f16609c8f84bfb40842a2f0a2d86fbb1c93454b1807ebcd8a0730e98feb2c" -> "sha256:e786d0c3943901e921c61ce4be1cd82faa6bfa1e2873012b774a303e50337d89" [label=""];
  "sha256:e786d0c3943901e921c61ce4be1cd82faa6bfa1e2873012b774a303e50337d89" -> "sha256:724ae7c54addf0c18e988833aaa135a64d0ae9b0e110077202bb548344cf032f" [label=""];
  "sha256:8b4f8f8c08d801be45bca6fc17ee2776da36fb850607a481c9835f375d18e88a" -> "sha256:44760a326b354837e32a1910c20b1733b8632225f80709bac9e9640570f77c77" [label=""];
  "sha256:724ae7c54addf0c18e988833aaa135a64d0ae9b0e110077202bb548344cf032f" -> "sha256:44760a326b354837e32a1910c20b1733b8632225f80709bac9e9640570f77c77" [label=""];
  "sha256:44760a326b354837e32a1910c20b1733b8632225f80709bac9e9640570f77c77" -> "sha256:c5372ab31e340a88328dd436eef3cd159582c172eb508fedf3850cfef70ca57a" [label=""];
}

