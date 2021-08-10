[app/sources/270396224.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:f48293133d9d450adc4de78b4ed403d057da88450b32e14950f4f58de53ee3c2" [label="/bin/sh -c adduser -D java" shape="box"];
  "sha256:2d9cff65fd79cd07a0bc6b17c9408f626949e1a8948d7c727f72d2b7bc77cb40" [label="/bin/sh -c mkdir -p $LOGS_DIR $APP_DIR &&     chown -R java $LOGS_DIR $APP_DIR" shape="box"];
  "sha256:f836644ba95eaf3f6b48b2e5b4abc9f7e5c436101506ef55f69c601aaeaa18ae" [label="local://context" shape="ellipse"];
  "sha256:4872787f532648187386a2804718451313d4946030e5dc2728129a51a171f03e" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:44882d3953b0372d82945f936732f7f8b4092cf95c46b49ebd8a25d49b1279b1" [label="/bin/sh -c chmod u+x /docker-entrypoint.sh &&   chown java /docker-entrypoint.sh" shape="box"];
  "sha256:6354131c3b8e01d5374f910b4c4b20afd24d0ec14bdda19e78c90d4dbb67e752" [label="copy{src=/@project.artifactId@-@project.version@.jar, dest=/usr/share/app/bin/}" shape="note"];
  "sha256:25b983e22462fe6d319664957f790e8d989227e62095b4911977727b59529d28" [label="sha256:25b983e22462fe6d319664957f790e8d989227e62095b4911977727b59529d28" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:f48293133d9d450adc4de78b4ed403d057da88450b32e14950f4f58de53ee3c2" [label=""];
  "sha256:f48293133d9d450adc4de78b4ed403d057da88450b32e14950f4f58de53ee3c2" -> "sha256:2d9cff65fd79cd07a0bc6b17c9408f626949e1a8948d7c727f72d2b7bc77cb40" [label=""];
  "sha256:2d9cff65fd79cd07a0bc6b17c9408f626949e1a8948d7c727f72d2b7bc77cb40" -> "sha256:4872787f532648187386a2804718451313d4946030e5dc2728129a51a171f03e" [label=""];
  "sha256:f836644ba95eaf3f6b48b2e5b4abc9f7e5c436101506ef55f69c601aaeaa18ae" -> "sha256:4872787f532648187386a2804718451313d4946030e5dc2728129a51a171f03e" [label=""];
  "sha256:4872787f532648187386a2804718451313d4946030e5dc2728129a51a171f03e" -> "sha256:44882d3953b0372d82945f936732f7f8b4092cf95c46b49ebd8a25d49b1279b1" [label=""];
  "sha256:44882d3953b0372d82945f936732f7f8b4092cf95c46b49ebd8a25d49b1279b1" -> "sha256:6354131c3b8e01d5374f910b4c4b20afd24d0ec14bdda19e78c90d4dbb67e752" [label=""];
  "sha256:f836644ba95eaf3f6b48b2e5b4abc9f7e5c436101506ef55f69c601aaeaa18ae" -> "sha256:6354131c3b8e01d5374f910b4c4b20afd24d0ec14bdda19e78c90d4dbb67e752" [label=""];
  "sha256:6354131c3b8e01d5374f910b4c4b20afd24d0ec14bdda19e78c90d4dbb67e752" -> "sha256:25b983e22462fe6d319664957f790e8d989227e62095b4911977727b59529d28" [label=""];
}

