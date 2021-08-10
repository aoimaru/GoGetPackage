[app/sources/347993505.Dockerfile]
digraph {
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" [label="docker-image://docker.io/library/openjdk:8u181-jre" shape="ellipse"];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label="mkdir{path=/root}" shape="note"];
  "sha256:bac829c5fed7c4a7ed87ec74ef6ada53ab43bcaadf328489302b47511b7e19a8" [label="local://context" shape="ellipse"];
  "sha256:1e30afbdcd66d6c5ac8ec178f02d770aa7575f2a151edad54c44a3539c863583" [label="copy{src=/destination/james-server-app-3.4.0-SNAPSHOT-app.zip, dest=/root/james-server-app-3.4.0-SNAPSHOT-app.zip}" shape="note"];
  "sha256:bce2c06e0cdeaf846ab9cf9ff90572ec2e70e185061127f0f6635cfc612e743a" [label="copy{src=/destination/conf, dest=/root/conf}" shape="note"];
  "sha256:8e383d6fe51868191a72701ccdd3b9a3ac5ba41a2fe4f6e8a840f59db26b3ccc" [label="/bin/sh -c unzip james-server-app-3.4.0-SNAPSHOT-app.zip" shape="box"];
  "sha256:bcdf443ad3bf50adf41f04e433b0f2e608efb094486b2a69b395d2fdceafa880" [label="/bin/sh -c cp james-server-app-3.4.0-SNAPSHOT/conf/wrapper.conf ." shape="box"];
  "sha256:1f4199343a2edc6132d688c0f7bc884108a98796e42a5dd0497ea845b5ef9e74" [label="/bin/sh -c rm -r james-server-app-3.4.0-SNAPSHOT/conf/*" shape="box"];
  "sha256:f3efff579e264a4737cb98cce243d801ebaace114cf4b88ea37c3b891280ee0b" [label="/bin/sh -c cp -r conf/* james-server-app-3.4.0-SNAPSHOT/conf" shape="box"];
  "sha256:bbe9c9c4135ff9d224a889a11d9c138cfadfcd3a70c5ef4628a278a2b16c9c19" [label="/bin/sh -c cp wrapper.conf james-server-app-3.4.0-SNAPSHOT/conf" shape="box"];
  "sha256:e79eacf2e72633a1211e5be5a62518daeecc8f4997eb532f96781b398ff6b09a" [label="mkdir{path=/root/james-server-app-3.4.0-SNAPSHOT/bin}" shape="note"];
  "sha256:86252ddb2ecc5e3f614f71e165838816f9a15999ecf8c861dc2fb676d91767f3" [label="sha256:86252ddb2ecc5e3f614f71e165838816f9a15999ecf8c861dc2fb676d91767f3" shape="plaintext"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" -> "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label=""];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" -> "sha256:1e30afbdcd66d6c5ac8ec178f02d770aa7575f2a151edad54c44a3539c863583" [label=""];
  "sha256:bac829c5fed7c4a7ed87ec74ef6ada53ab43bcaadf328489302b47511b7e19a8" -> "sha256:1e30afbdcd66d6c5ac8ec178f02d770aa7575f2a151edad54c44a3539c863583" [label=""];
  "sha256:1e30afbdcd66d6c5ac8ec178f02d770aa7575f2a151edad54c44a3539c863583" -> "sha256:bce2c06e0cdeaf846ab9cf9ff90572ec2e70e185061127f0f6635cfc612e743a" [label=""];
  "sha256:bac829c5fed7c4a7ed87ec74ef6ada53ab43bcaadf328489302b47511b7e19a8" -> "sha256:bce2c06e0cdeaf846ab9cf9ff90572ec2e70e185061127f0f6635cfc612e743a" [label=""];
  "sha256:bce2c06e0cdeaf846ab9cf9ff90572ec2e70e185061127f0f6635cfc612e743a" -> "sha256:8e383d6fe51868191a72701ccdd3b9a3ac5ba41a2fe4f6e8a840f59db26b3ccc" [label=""];
  "sha256:8e383d6fe51868191a72701ccdd3b9a3ac5ba41a2fe4f6e8a840f59db26b3ccc" -> "sha256:bcdf443ad3bf50adf41f04e433b0f2e608efb094486b2a69b395d2fdceafa880" [label=""];
  "sha256:bcdf443ad3bf50adf41f04e433b0f2e608efb094486b2a69b395d2fdceafa880" -> "sha256:1f4199343a2edc6132d688c0f7bc884108a98796e42a5dd0497ea845b5ef9e74" [label=""];
  "sha256:1f4199343a2edc6132d688c0f7bc884108a98796e42a5dd0497ea845b5ef9e74" -> "sha256:f3efff579e264a4737cb98cce243d801ebaace114cf4b88ea37c3b891280ee0b" [label=""];
  "sha256:f3efff579e264a4737cb98cce243d801ebaace114cf4b88ea37c3b891280ee0b" -> "sha256:bbe9c9c4135ff9d224a889a11d9c138cfadfcd3a70c5ef4628a278a2b16c9c19" [label=""];
  "sha256:bbe9c9c4135ff9d224a889a11d9c138cfadfcd3a70c5ef4628a278a2b16c9c19" -> "sha256:e79eacf2e72633a1211e5be5a62518daeecc8f4997eb532f96781b398ff6b09a" [label=""];
  "sha256:e79eacf2e72633a1211e5be5a62518daeecc8f4997eb532f96781b398ff6b09a" -> "sha256:86252ddb2ecc5e3f614f71e165838816f9a15999ecf8c861dc2fb676d91767f3" [label=""];
}

