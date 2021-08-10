[app/sources/252794596.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6bfa3cecc680280e66ea1ceb480299009bf7b36c54c69e65edeae6d5840875c4" [label="local://context" shape="ellipse"];
  "sha256:3db00c282ca2fea1eed98ab55b0dea750496dda9faa2acb5547bf8b51ec0ed41" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:3397cb9fdf867f60a30cb42ad9aa47db10493144935928b7ff546cf58649086e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7706082044da985a281bf3ab6b8d1d0d8130fa1ca9d37d89d0fcce71096a967b" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:e086885adb669b824b5c55219493a228dccf2673a1c8519276914b999ce32cc8" [label="copy{src=/bower.json, dest=/usr/src/app/}" shape="note"];
  "sha256:fcb3879801711ac3add6c2d25d395fca3a832dcba61cf3be4c11527531eb7503" [label="/bin/sh -c bower install --allow-root" shape="box"];
  "sha256:02888084419f680eb37dd8901365b5830a0ee152668701c16f7b4a8d35de705c" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:a078d47cbc6e94eef2029bc6e213b468427a40891cfbff0131b766fb2857658a" [label="sha256:a078d47cbc6e94eef2029bc6e213b468427a40891cfbff0131b766fb2857658a" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label=""];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" -> "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label=""];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" -> "sha256:3db00c282ca2fea1eed98ab55b0dea750496dda9faa2acb5547bf8b51ec0ed41" [label=""];
  "sha256:6bfa3cecc680280e66ea1ceb480299009bf7b36c54c69e65edeae6d5840875c4" -> "sha256:3db00c282ca2fea1eed98ab55b0dea750496dda9faa2acb5547bf8b51ec0ed41" [label=""];
  "sha256:3db00c282ca2fea1eed98ab55b0dea750496dda9faa2acb5547bf8b51ec0ed41" -> "sha256:3397cb9fdf867f60a30cb42ad9aa47db10493144935928b7ff546cf58649086e" [label=""];
  "sha256:3397cb9fdf867f60a30cb42ad9aa47db10493144935928b7ff546cf58649086e" -> "sha256:7706082044da985a281bf3ab6b8d1d0d8130fa1ca9d37d89d0fcce71096a967b" [label=""];
  "sha256:7706082044da985a281bf3ab6b8d1d0d8130fa1ca9d37d89d0fcce71096a967b" -> "sha256:e086885adb669b824b5c55219493a228dccf2673a1c8519276914b999ce32cc8" [label=""];
  "sha256:6bfa3cecc680280e66ea1ceb480299009bf7b36c54c69e65edeae6d5840875c4" -> "sha256:e086885adb669b824b5c55219493a228dccf2673a1c8519276914b999ce32cc8" [label=""];
  "sha256:e086885adb669b824b5c55219493a228dccf2673a1c8519276914b999ce32cc8" -> "sha256:fcb3879801711ac3add6c2d25d395fca3a832dcba61cf3be4c11527531eb7503" [label=""];
  "sha256:fcb3879801711ac3add6c2d25d395fca3a832dcba61cf3be4c11527531eb7503" -> "sha256:02888084419f680eb37dd8901365b5830a0ee152668701c16f7b4a8d35de705c" [label=""];
  "sha256:6bfa3cecc680280e66ea1ceb480299009bf7b36c54c69e65edeae6d5840875c4" -> "sha256:02888084419f680eb37dd8901365b5830a0ee152668701c16f7b4a8d35de705c" [label=""];
  "sha256:02888084419f680eb37dd8901365b5830a0ee152668701c16f7b4a8d35de705c" -> "sha256:a078d47cbc6e94eef2029bc6e213b468427a40891cfbff0131b766fb2857658a" [label=""];
}

