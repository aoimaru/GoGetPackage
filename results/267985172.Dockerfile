[app/sources/267985172.Dockerfile]
digraph {
  "sha256:88a6a2c2c174430819f375e3909f7270452dff3566d3653be9a58d2d0d2f43f3" [label="docker-image://docker.io/library/elixir:1.7" shape="ellipse"];
  "sha256:053baed74d9ce96eb74747e206f0f68dc9ab6a827827a392746e749b8afb855c" [label="/bin/sh -c mix local.rebar --force &&     mix local.hex --force" shape="box"];
  "sha256:7ebfd9b785f580234704c9417ea8b849d302f8ea6ba3ce8c35cd7e344973df46" [label="mkdir{path=/app}" shape="note"];
  "sha256:1af15973be9eb5d07a9adfcdb690e9fd3f67696b35cacc0efe5c976aeb6254d8" [label="local://context" shape="ellipse"];
  "sha256:43b73e011333ff39826f2c6c27a63a8ee08fc231f9fa9757791e8fc8d44e188c" [label="copy{src=/mix.*, dest=/app/}" shape="note"];
  "sha256:36bff39acff4c33e172de8b45d922e540c39b136a1ebf35a2fc99c8c4c571897" [label="/bin/sh -c mix deps.get --only prod" shape="box"];
  "sha256:35c465a063d094b9a47ada93d777884eee93270020fb3e7289c87ab0ec40a7c0" [label="/bin/sh -c mix deps.compile" shape="box"];
  "sha256:6e306df420935a0b0c859c8fb3269a46085c76dff223df3e29a3eb9da5440af0" [label="docker-image://docker.io/library/node:10.9" shape="ellipse"];
  "sha256:e58eca0ed775b0486344048c7a99e68998adad14cca33fb6aa1495502147e065" [label="mkdir{path=/app}" shape="note"];
  "sha256:82b4f6b181daa90dd9cb3d047d2a6a47a3c24a6a56f0545f3780bc0282a32608" [label="copy{src=/assets/package.json, dest=/app/},copy{src=/assets/yarn.lock, dest=/app/}" shape="note"];
  "sha256:0e6a2cb79b64bd9fff034e4a059e1ae63bb740a23b843896aa90b42692d59ca6" [label="copy{src=/app/deps/phoenix, dest=/deps/phoenix}" shape="note"];
  "sha256:86fa4c9c7d524ecdb1e23716b637f3a53bbc7fc3349addce451f95457a75621b" [label="copy{src=/app/deps/phoenix_html, dest=/deps/phoenix_html}" shape="note"];
  "sha256:c162d52f581617d526297467b4e0cacaa64177f2eccbea77bc1579fbad4fb940" [label="/bin/sh -c npm install -g yarn && yarn install" shape="box"];
  "sha256:58257396607eaf17ced263c236bb03878eadc7d1dca0bed2162ce11ca00d1b6e" [label="copy{src=/assets, dest=/app}" shape="note"];
  "sha256:9a510b84211ad7c7401c04ecd0fea8d8b3c21c47f988b3d7c131eda5971621a0" [label="/bin/sh -c npm run deploy" shape="box"];
  "sha256:eed0bd3fae7c2ccdc96fe8a8ce4ac20f3ebf102cc2126f356fa3d550a13bfb98" [label="copy{src=/priv/static, dest=/app/priv/static}" shape="note"];
  "sha256:fc0a6f6dad2f3901f6a4a83914e5ed1023e76ba692696f5f60fc9e56d5aa3013" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:bf5724509a882a4ea3012cc2d59b6347245e2bf2024b152c4be2f8bc70cbf385" [label="/bin/sh -c mix deps.clean mime --build && mix deps.compile mime &&   mix phx.digest" shape="box"];
  "sha256:5f3a6f8e8bb70394f7b9fe7a6fbcf6c4943484307f8d34ad69a3edad8a386a79" [label="/bin/sh -c mix release --env=prod" shape="box"];
  "sha256:a7024348409f053506cad6df5a69c78deba160bdadf6146953ad507e970f5916" [label="sha256:a7024348409f053506cad6df5a69c78deba160bdadf6146953ad507e970f5916" shape="plaintext"];
  "sha256:88a6a2c2c174430819f375e3909f7270452dff3566d3653be9a58d2d0d2f43f3" -> "sha256:053baed74d9ce96eb74747e206f0f68dc9ab6a827827a392746e749b8afb855c" [label=""];
  "sha256:053baed74d9ce96eb74747e206f0f68dc9ab6a827827a392746e749b8afb855c" -> "sha256:7ebfd9b785f580234704c9417ea8b849d302f8ea6ba3ce8c35cd7e344973df46" [label=""];
  "sha256:7ebfd9b785f580234704c9417ea8b849d302f8ea6ba3ce8c35cd7e344973df46" -> "sha256:43b73e011333ff39826f2c6c27a63a8ee08fc231f9fa9757791e8fc8d44e188c" [label=""];
  "sha256:1af15973be9eb5d07a9adfcdb690e9fd3f67696b35cacc0efe5c976aeb6254d8" -> "sha256:43b73e011333ff39826f2c6c27a63a8ee08fc231f9fa9757791e8fc8d44e188c" [label=""];
  "sha256:43b73e011333ff39826f2c6c27a63a8ee08fc231f9fa9757791e8fc8d44e188c" -> "sha256:36bff39acff4c33e172de8b45d922e540c39b136a1ebf35a2fc99c8c4c571897" [label=""];
  "sha256:36bff39acff4c33e172de8b45d922e540c39b136a1ebf35a2fc99c8c4c571897" -> "sha256:35c465a063d094b9a47ada93d777884eee93270020fb3e7289c87ab0ec40a7c0" [label=""];
  "sha256:6e306df420935a0b0c859c8fb3269a46085c76dff223df3e29a3eb9da5440af0" -> "sha256:e58eca0ed775b0486344048c7a99e68998adad14cca33fb6aa1495502147e065" [label=""];
  "sha256:e58eca0ed775b0486344048c7a99e68998adad14cca33fb6aa1495502147e065" -> "sha256:82b4f6b181daa90dd9cb3d047d2a6a47a3c24a6a56f0545f3780bc0282a32608" [label=""];
  "sha256:1af15973be9eb5d07a9adfcdb690e9fd3f67696b35cacc0efe5c976aeb6254d8" -> "sha256:82b4f6b181daa90dd9cb3d047d2a6a47a3c24a6a56f0545f3780bc0282a32608" [label=""];
  "sha256:82b4f6b181daa90dd9cb3d047d2a6a47a3c24a6a56f0545f3780bc0282a32608" -> "sha256:0e6a2cb79b64bd9fff034e4a059e1ae63bb740a23b843896aa90b42692d59ca6" [label=""];
  "sha256:35c465a063d094b9a47ada93d777884eee93270020fb3e7289c87ab0ec40a7c0" -> "sha256:0e6a2cb79b64bd9fff034e4a059e1ae63bb740a23b843896aa90b42692d59ca6" [label=""];
  "sha256:0e6a2cb79b64bd9fff034e4a059e1ae63bb740a23b843896aa90b42692d59ca6" -> "sha256:86fa4c9c7d524ecdb1e23716b637f3a53bbc7fc3349addce451f95457a75621b" [label=""];
  "sha256:35c465a063d094b9a47ada93d777884eee93270020fb3e7289c87ab0ec40a7c0" -> "sha256:86fa4c9c7d524ecdb1e23716b637f3a53bbc7fc3349addce451f95457a75621b" [label=""];
  "sha256:86fa4c9c7d524ecdb1e23716b637f3a53bbc7fc3349addce451f95457a75621b" -> "sha256:c162d52f581617d526297467b4e0cacaa64177f2eccbea77bc1579fbad4fb940" [label=""];
  "sha256:c162d52f581617d526297467b4e0cacaa64177f2eccbea77bc1579fbad4fb940" -> "sha256:58257396607eaf17ced263c236bb03878eadc7d1dca0bed2162ce11ca00d1b6e" [label=""];
  "sha256:1af15973be9eb5d07a9adfcdb690e9fd3f67696b35cacc0efe5c976aeb6254d8" -> "sha256:58257396607eaf17ced263c236bb03878eadc7d1dca0bed2162ce11ca00d1b6e" [label=""];
  "sha256:58257396607eaf17ced263c236bb03878eadc7d1dca0bed2162ce11ca00d1b6e" -> "sha256:9a510b84211ad7c7401c04ecd0fea8d8b3c21c47f988b3d7c131eda5971621a0" [label=""];
  "sha256:35c465a063d094b9a47ada93d777884eee93270020fb3e7289c87ab0ec40a7c0" -> "sha256:eed0bd3fae7c2ccdc96fe8a8ce4ac20f3ebf102cc2126f356fa3d550a13bfb98" [label=""];
  "sha256:9a510b84211ad7c7401c04ecd0fea8d8b3c21c47f988b3d7c131eda5971621a0" -> "sha256:eed0bd3fae7c2ccdc96fe8a8ce4ac20f3ebf102cc2126f356fa3d550a13bfb98" [label=""];
  "sha256:eed0bd3fae7c2ccdc96fe8a8ce4ac20f3ebf102cc2126f356fa3d550a13bfb98" -> "sha256:fc0a6f6dad2f3901f6a4a83914e5ed1023e76ba692696f5f60fc9e56d5aa3013" [label=""];
  "sha256:1af15973be9eb5d07a9adfcdb690e9fd3f67696b35cacc0efe5c976aeb6254d8" -> "sha256:fc0a6f6dad2f3901f6a4a83914e5ed1023e76ba692696f5f60fc9e56d5aa3013" [label=""];
  "sha256:fc0a6f6dad2f3901f6a4a83914e5ed1023e76ba692696f5f60fc9e56d5aa3013" -> "sha256:bf5724509a882a4ea3012cc2d59b6347245e2bf2024b152c4be2f8bc70cbf385" [label=""];
  "sha256:bf5724509a882a4ea3012cc2d59b6347245e2bf2024b152c4be2f8bc70cbf385" -> "sha256:5f3a6f8e8bb70394f7b9fe7a6fbcf6c4943484307f8d34ad69a3edad8a386a79" [label=""];
  "sha256:5f3a6f8e8bb70394f7b9fe7a6fbcf6c4943484307f8d34ad69a3edad8a386a79" -> "sha256:a7024348409f053506cad6df5a69c78deba160bdadf6146953ad507e970f5916" [label=""];
}

