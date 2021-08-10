[app/sources/245580684.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3e8470253d166285adca4d7ea22247dc1e72e11919bbab7afcc04736d71f5a03" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     openjdk-8-jdk     libxerces-c3.1     libav-tools     wget     unzip     xvfb &&     rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*" shape="box"];
  "sha256:1932cb48a28ee928bad25dab3d10b5bcff190d732522a35cee9cb05b2bfbc6d4" [label="mkdir{path=/root}" shape="note"];
  "sha256:a223eaceab5bc838cf2d37f9614daf7ea4767aaf1667c4619051c3df7632aad3" [label="/bin/sh -c wget https://github.com/Microsoft/malmo/releases/download/$MALMO_VERSION/Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     unzip Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     rm Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     mv Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost Malmo" shape="box"];
  "sha256:d9103f93891af85230d39dd1b5add37be6ba715749027c8784a5a862ecddc5dc" [label="/bin/sh -c mkdir ~/.gradle && echo 'org.gradle.daemon=true\\n' > ~/.gradle/gradle.properties" shape="box"];
  "sha256:30807a0318ef9359e0dcca74720f06fef022525075ef130c26801ca82350e95e" [label="mkdir{path=/root/Malmo/Minecraft}" shape="note"];
  "sha256:fcba38e53d6afb9e4d143c77235756e8ea692c60ad5b177339615c122bbc66b6" [label="/bin/sh -c ./gradlew setupDecompWorkspace" shape="box"];
  "sha256:904795f4e8aa7b1e5b6405e6cc10c4dd352940b7b29217a49ca328dd1903cf8d" [label="/bin/sh -c ./gradlew build" shape="box"];
  "sha256:1fd34db1cbc52e9e0f0f69f0e02e159ad93019657f24e9ee52ba32bbbed6039f" [label="local://context" shape="ellipse"];
  "sha256:bf3a72222ef9fc8dcf755498d667d1a19912d0cf3486e0ea650f471027a66979" [label="copy{src=/options.txt, dest=/root/Malmo/Minecraft/run}" shape="note"];
  "sha256:1b72f1a81de66eb074579005b6c2cffda763efee51a1c2376abc91e75f870f6b" [label="copy{src=/run.sh, dest=/root/}" shape="note"];
  "sha256:aa2921b30a67888acd397c1d22384d92f4ef60292f5568987883b081e577a60c" [label="/bin/sh -c chmod +x /root/run.sh" shape="box"];
  "sha256:516ac375a4d4a8a6ad1e645a38cb92775c8873fa379bed95577ec6325a3d8397" [label="sha256:516ac375a4d4a8a6ad1e645a38cb92775c8873fa379bed95577ec6325a3d8397" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3e8470253d166285adca4d7ea22247dc1e72e11919bbab7afcc04736d71f5a03" [label=""];
  "sha256:3e8470253d166285adca4d7ea22247dc1e72e11919bbab7afcc04736d71f5a03" -> "sha256:1932cb48a28ee928bad25dab3d10b5bcff190d732522a35cee9cb05b2bfbc6d4" [label=""];
  "sha256:1932cb48a28ee928bad25dab3d10b5bcff190d732522a35cee9cb05b2bfbc6d4" -> "sha256:a223eaceab5bc838cf2d37f9614daf7ea4767aaf1667c4619051c3df7632aad3" [label=""];
  "sha256:a223eaceab5bc838cf2d37f9614daf7ea4767aaf1667c4619051c3df7632aad3" -> "sha256:d9103f93891af85230d39dd1b5add37be6ba715749027c8784a5a862ecddc5dc" [label=""];
  "sha256:d9103f93891af85230d39dd1b5add37be6ba715749027c8784a5a862ecddc5dc" -> "sha256:30807a0318ef9359e0dcca74720f06fef022525075ef130c26801ca82350e95e" [label=""];
  "sha256:30807a0318ef9359e0dcca74720f06fef022525075ef130c26801ca82350e95e" -> "sha256:fcba38e53d6afb9e4d143c77235756e8ea692c60ad5b177339615c122bbc66b6" [label=""];
  "sha256:fcba38e53d6afb9e4d143c77235756e8ea692c60ad5b177339615c122bbc66b6" -> "sha256:904795f4e8aa7b1e5b6405e6cc10c4dd352940b7b29217a49ca328dd1903cf8d" [label=""];
  "sha256:904795f4e8aa7b1e5b6405e6cc10c4dd352940b7b29217a49ca328dd1903cf8d" -> "sha256:bf3a72222ef9fc8dcf755498d667d1a19912d0cf3486e0ea650f471027a66979" [label=""];
  "sha256:1fd34db1cbc52e9e0f0f69f0e02e159ad93019657f24e9ee52ba32bbbed6039f" -> "sha256:bf3a72222ef9fc8dcf755498d667d1a19912d0cf3486e0ea650f471027a66979" [label=""];
  "sha256:bf3a72222ef9fc8dcf755498d667d1a19912d0cf3486e0ea650f471027a66979" -> "sha256:1b72f1a81de66eb074579005b6c2cffda763efee51a1c2376abc91e75f870f6b" [label=""];
  "sha256:1fd34db1cbc52e9e0f0f69f0e02e159ad93019657f24e9ee52ba32bbbed6039f" -> "sha256:1b72f1a81de66eb074579005b6c2cffda763efee51a1c2376abc91e75f870f6b" [label=""];
  "sha256:1b72f1a81de66eb074579005b6c2cffda763efee51a1c2376abc91e75f870f6b" -> "sha256:aa2921b30a67888acd397c1d22384d92f4ef60292f5568987883b081e577a60c" [label=""];
  "sha256:aa2921b30a67888acd397c1d22384d92f4ef60292f5568987883b081e577a60c" -> "sha256:516ac375a4d4a8a6ad1e645a38cb92775c8873fa379bed95577ec6325a3d8397" [label=""];
}

