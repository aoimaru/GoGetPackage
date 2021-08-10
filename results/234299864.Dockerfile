[app/sources/234299864.Dockerfile]
digraph {
  "sha256:20491fc35ce9d7385d87a36c7f1ff58b868c8172f63127f08301fc012331b76a" [label="docker-image://docker.io/library/jruby:9.1.8.0-jre-alpine@sha256:4c30b50b65ca08312efe1d3f3a12564a66d978fa079fac588351fa7e40ff824f" shape="ellipse"];
  "sha256:fe085419876035c83c36fae9bec7fd065b5804acefe25e936916a7b7bb9dc9e9" [label="/bin/sh -c apk --update --no-cache add git openssh-client &&     mkdir /hucpa" shape="box"];
  "sha256:cffd703e2d55c29e7bdc8ee647994cba56e334a96c69c17c86913543a99a627b" [label="mkdir{path=/hucpa}" shape="note"];
  "sha256:a81eca69ef214d9999efa79263ee6ac997346bb942657826c36a97ec05c79e13" [label="local://context" shape="ellipse"];
  "sha256:31914087c0d57ddc4d51e0a8cd4756af3f17b6a134a1cefeb6225239b66633c8" [label="copy{src=/hucpa.gemspec, dest=/hucpa/},copy{src=/Gemfile, dest=/hucpa/},copy{src=/Gemfile.lock, dest=/hucpa/}" shape="note"];
  "sha256:99ad6292bcfaeb2c8c8233c21ed01788d213638dfcf8990b1a55067d232da2d5" [label="/bin/sh -c gem install bundler && bundle" shape="box"];
  "sha256:f1c889098dc606f98071f2352d36ae1f6aae8dff5af82cf91f1d07f05af5302f" [label="copy{src=/, dest=/hucpa/}" shape="note"];
  "sha256:21bd3b319442a6a0e4187a968adb9fba2b8e8bcd5fc13032c16a63afb4c6e273" [label="sha256:21bd3b319442a6a0e4187a968adb9fba2b8e8bcd5fc13032c16a63afb4c6e273" shape="plaintext"];
  "sha256:20491fc35ce9d7385d87a36c7f1ff58b868c8172f63127f08301fc012331b76a" -> "sha256:fe085419876035c83c36fae9bec7fd065b5804acefe25e936916a7b7bb9dc9e9" [label=""];
  "sha256:fe085419876035c83c36fae9bec7fd065b5804acefe25e936916a7b7bb9dc9e9" -> "sha256:cffd703e2d55c29e7bdc8ee647994cba56e334a96c69c17c86913543a99a627b" [label=""];
  "sha256:cffd703e2d55c29e7bdc8ee647994cba56e334a96c69c17c86913543a99a627b" -> "sha256:31914087c0d57ddc4d51e0a8cd4756af3f17b6a134a1cefeb6225239b66633c8" [label=""];
  "sha256:a81eca69ef214d9999efa79263ee6ac997346bb942657826c36a97ec05c79e13" -> "sha256:31914087c0d57ddc4d51e0a8cd4756af3f17b6a134a1cefeb6225239b66633c8" [label=""];
  "sha256:31914087c0d57ddc4d51e0a8cd4756af3f17b6a134a1cefeb6225239b66633c8" -> "sha256:99ad6292bcfaeb2c8c8233c21ed01788d213638dfcf8990b1a55067d232da2d5" [label=""];
  "sha256:99ad6292bcfaeb2c8c8233c21ed01788d213638dfcf8990b1a55067d232da2d5" -> "sha256:f1c889098dc606f98071f2352d36ae1f6aae8dff5af82cf91f1d07f05af5302f" [label=""];
  "sha256:a81eca69ef214d9999efa79263ee6ac997346bb942657826c36a97ec05c79e13" -> "sha256:f1c889098dc606f98071f2352d36ae1f6aae8dff5af82cf91f1d07f05af5302f" [label=""];
  "sha256:f1c889098dc606f98071f2352d36ae1f6aae8dff5af82cf91f1d07f05af5302f" -> "sha256:21bd3b319442a6a0e4187a968adb9fba2b8e8bcd5fc13032c16a63afb4c6e273" [label=""];
}

