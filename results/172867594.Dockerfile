[app/sources/172867594.Dockerfile]
digraph {
  "sha256:a01f9d5666c869d81d7cbc00436b3ecab741360308c70fbf76722a0633d91a7f" [label="local://context" shape="ellipse"];
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" [label="docker-image://docker.io/library/ruby:2.4" shape="ellipse"];
  "sha256:96512407f168acbd0e90be99051a972a0a83be5e2fc9805dcafb11536eb34ca4" [label="mkdir{path=/app}" shape="note"];
  "sha256:10e7c369882522f9975cbb02e449e31b8c295024d48abc62ffa14dcabc3db3b7" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends libssl1.0-dev" shape="box"];
  "sha256:da390ba264865def5b533abbe1d2e0dd5d79414c406811837092a3bedcfc2e61" [label="copy{src=/Gemfile*, dest=/app/}" shape="note"];
  "sha256:c7627632b21a87bf647f25ba31cb2daf66c8e7a332c5e40345e267062a7a985e" [label="/bin/sh -c gem install bundler && bundle config build.nokogiri --use-system-libraries && bundle install --jobs 4 --retry 5" shape="box"];
  "sha256:4f349b57e33096c0b43eb01776e7ae1f2de0a8c710bf2e84f32e57886cc37b56" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:55433557eedc5bca389d1b8b4ac167b00bc32540b781fdd0bd15dbfe649c8f48" [label="/bin/sh -c bundle exec rubocop -f fuubar" shape="box"];
  "sha256:a849805585563678ca66fc2d366641fa8d37f2b2f2e3c05fab0eb747ab0344f1" [label="/bin/sh -c bundle exec foodcritic -f any cookbooks" shape="box"];
  "sha256:3eac884523d0a539a814a6ce86e356782450ec3a26fcbf0235ab60f11df94e37" [label="sha256:3eac884523d0a539a814a6ce86e356782450ec3a26fcbf0235ab60f11df94e37" shape="plaintext"];
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" -> "sha256:96512407f168acbd0e90be99051a972a0a83be5e2fc9805dcafb11536eb34ca4" [label=""];
  "sha256:96512407f168acbd0e90be99051a972a0a83be5e2fc9805dcafb11536eb34ca4" -> "sha256:10e7c369882522f9975cbb02e449e31b8c295024d48abc62ffa14dcabc3db3b7" [label=""];
  "sha256:10e7c369882522f9975cbb02e449e31b8c295024d48abc62ffa14dcabc3db3b7" -> "sha256:da390ba264865def5b533abbe1d2e0dd5d79414c406811837092a3bedcfc2e61" [label=""];
  "sha256:a01f9d5666c869d81d7cbc00436b3ecab741360308c70fbf76722a0633d91a7f" -> "sha256:da390ba264865def5b533abbe1d2e0dd5d79414c406811837092a3bedcfc2e61" [label=""];
  "sha256:da390ba264865def5b533abbe1d2e0dd5d79414c406811837092a3bedcfc2e61" -> "sha256:c7627632b21a87bf647f25ba31cb2daf66c8e7a332c5e40345e267062a7a985e" [label=""];
  "sha256:c7627632b21a87bf647f25ba31cb2daf66c8e7a332c5e40345e267062a7a985e" -> "sha256:4f349b57e33096c0b43eb01776e7ae1f2de0a8c710bf2e84f32e57886cc37b56" [label=""];
  "sha256:a01f9d5666c869d81d7cbc00436b3ecab741360308c70fbf76722a0633d91a7f" -> "sha256:4f349b57e33096c0b43eb01776e7ae1f2de0a8c710bf2e84f32e57886cc37b56" [label=""];
  "sha256:4f349b57e33096c0b43eb01776e7ae1f2de0a8c710bf2e84f32e57886cc37b56" -> "sha256:55433557eedc5bca389d1b8b4ac167b00bc32540b781fdd0bd15dbfe649c8f48" [label=""];
  "sha256:55433557eedc5bca389d1b8b4ac167b00bc32540b781fdd0bd15dbfe649c8f48" -> "sha256:a849805585563678ca66fc2d366641fa8d37f2b2f2e3c05fab0eb747ab0344f1" [label=""];
  "sha256:a849805585563678ca66fc2d366641fa8d37f2b2f2e3c05fab0eb747ab0344f1" -> "sha256:3eac884523d0a539a814a6ce86e356782450ec3a26fcbf0235ab60f11df94e37" [label=""];
}

