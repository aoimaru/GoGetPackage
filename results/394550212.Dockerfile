[app/sources/394550212.Dockerfile]
digraph {
  "sha256:fffaa084f5150535ef482461ed5e4bd8a68ff387cf5b4258ba327ffd0dacb301" [label="docker-image://docker.io/library/ruby:2.4.0" shape="ellipse"];
  "sha256:181d10d109dec3d3125ae67f507c801e48df63eaf8d6397cb84311e1cdbdb829" [label="/bin/sh -c mkdir -p $APP_HOME/$LIB_DIR" shape="box"];
  "sha256:2e6d2a2e3d435f7314f9dce2afc8223715f342a0216e52c385dc6cf89869ad38" [label="mkdir{path=/app}" shape="note"];
  "sha256:02fa05566d7118121c6b1cb938674915fcd98a50c61151182298abda08c71067" [label="local://context" shape="ellipse"];
  "sha256:22dab4d76b86651c86aac0b90d403660f79ba8fbe7a367c627e0c9252c21b5a4" [label="copy{src=/Gemfile, dest=/app/},copy{src=/*gemspec, dest=/app/}" shape="note"];
  "sha256:a9296f24a108188329436530b799fd5b0a44b39a783faadaab318dad113ec333" [label="copy{src=/lib/front_matter_parser/version.rb, dest=/app/lib/front_matter_parser/}" shape="note"];
  "sha256:abc612e728e3ab2b73836a80f955feacc0e902d4a271c9806c9acad2fa36af1b" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:47be6fde4af1af72ae62af89f56cf4bdec2afc7d7494eca1f83008771f71a5ae" [label="sha256:47be6fde4af1af72ae62af89f56cf4bdec2afc7d7494eca1f83008771f71a5ae" shape="plaintext"];
  "sha256:fffaa084f5150535ef482461ed5e4bd8a68ff387cf5b4258ba327ffd0dacb301" -> "sha256:181d10d109dec3d3125ae67f507c801e48df63eaf8d6397cb84311e1cdbdb829" [label=""];
  "sha256:181d10d109dec3d3125ae67f507c801e48df63eaf8d6397cb84311e1cdbdb829" -> "sha256:2e6d2a2e3d435f7314f9dce2afc8223715f342a0216e52c385dc6cf89869ad38" [label=""];
  "sha256:2e6d2a2e3d435f7314f9dce2afc8223715f342a0216e52c385dc6cf89869ad38" -> "sha256:22dab4d76b86651c86aac0b90d403660f79ba8fbe7a367c627e0c9252c21b5a4" [label=""];
  "sha256:02fa05566d7118121c6b1cb938674915fcd98a50c61151182298abda08c71067" -> "sha256:22dab4d76b86651c86aac0b90d403660f79ba8fbe7a367c627e0c9252c21b5a4" [label=""];
  "sha256:22dab4d76b86651c86aac0b90d403660f79ba8fbe7a367c627e0c9252c21b5a4" -> "sha256:a9296f24a108188329436530b799fd5b0a44b39a783faadaab318dad113ec333" [label=""];
  "sha256:02fa05566d7118121c6b1cb938674915fcd98a50c61151182298abda08c71067" -> "sha256:a9296f24a108188329436530b799fd5b0a44b39a783faadaab318dad113ec333" [label=""];
  "sha256:a9296f24a108188329436530b799fd5b0a44b39a783faadaab318dad113ec333" -> "sha256:abc612e728e3ab2b73836a80f955feacc0e902d4a271c9806c9acad2fa36af1b" [label=""];
  "sha256:abc612e728e3ab2b73836a80f955feacc0e902d4a271c9806c9acad2fa36af1b" -> "sha256:47be6fde4af1af72ae62af89f56cf4bdec2afc7d7494eca1f83008771f71a5ae" [label=""];
}

