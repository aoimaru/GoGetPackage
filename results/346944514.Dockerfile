[app/sources/346944514.Dockerfile]
digraph {
  "sha256:f670de9881943482ea96ac620067efe4dea504272eb808bf8ced47f4bf86ca35" [label="docker-image://docker.io/library/openjdk:11-jre-slim" shape="ellipse"];
  "sha256:5a92761ff9466c7554c39ab6ae697e98d07be7b7120435764f5fbac3af3452e0" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:e8117952fac6b689dedf77d112436e21d6df7409d5d400083d5a7d802aaf183f" [label="mkdir{path=/app}" shape="note"];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" [label="local://context" shape="ellipse"];
  "sha256:0d9a276e6dcfbf0b7cb44c77d1b0ab9d3121f0d9c9b7307ab0843c7dfe51bbb9" [label="docker-image://docker.io/library/openjdk:11-jdk-slim" shape="ellipse"];
  "sha256:1a261b22dd7f0b9a12b55ac7a0afb1b003e43bc2e0b846fda0205ca3a2c5d9f8" [label="mkdir{path=/app}" shape="note"];
  "sha256:9a430704ea8ac32f7f3f113ff3c39f1a0d22e2daca1ef4f9cf33ba85235f79d9" [label="/bin/sh -c mkdir -p notification-api notification-application notification-client" shape="box"];
  "sha256:b7b4d58081df59ef73417f0fd1b4a033d01c7ca35e9f7d3749ebe7521ef632d6" [label="copy{src=/pom.xml, dest=/app/},copy{src=/mvnw, dest=/app/}" shape="note"];
  "sha256:1bfa69cb821ae703c443e0843617e16b080cf46216dfde254d0e13310929fc07" [label="copy{src=/.mvn, dest=/app/.mvn/}" shape="note"];
  "sha256:86885b6ba9d40f8f11ccde7237118f39104b0f0f48b70bd164eeacc4e724d038" [label="copy{src=/notification-api/pom.xml, dest=/app/notification-api/}" shape="note"];
  "sha256:cd506cbccf6e306718f226e02ef863a1dd26d4539bea12821e5346a6d2076dbe" [label="copy{src=/notification-application/pom.xml, dest=/app/notification-application/}" shape="note"];
  "sha256:1b07ae32335c7578e16b1a8b4d6935fb56b875e58771332b7a7062b9517965d7" [label="copy{src=/notification-client/pom.xml, dest=/app/notification-client/}" shape="note"];
  "sha256:dde6bd7185e5f7cf12c46ed6d55dabff637224b1dbc7961e8362a8c7400d1dd1" [label="/bin/sh -c ./mvnw install" shape="box"];
  "sha256:5c5cb8c8ee9140683412751e998f744657addd0cd16c9080ee069da16581f564" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:88ad079f4628402beb25a8c88c2091045b77a52a658d22865ebcde3e78f3dfb9" [label="/bin/sh -c ./mvnw clean package -DskipTests=true -Dmaven.javadoc.skip=true -Dmaven.source.skip=true &&     rm notification-application/target/original-*.jar &&     mv notification-application/target/*.jar app.jar" shape="box"];
  "sha256:a69a5efd79bf3f34778e828531108878af4ec04b4178b952e6ee17437889ccf8" [label="copy{src=/app/app.jar, dest=/app/}" shape="note"];
  "sha256:9c7cf84630acd889dbef3229d5a5b79b10832015b24533db6f47df723341911f" [label="copy{src=/app/config.yml, dest=/app/}" shape="note"];
  "sha256:5c21473f8491888dd70ad3e3fc7dddbb59f5df489aa535388c076d482f0f704a" [label="sha256:5c21473f8491888dd70ad3e3fc7dddbb59f5df489aa535388c076d482f0f704a" shape="plaintext"];
  "sha256:f670de9881943482ea96ac620067efe4dea504272eb808bf8ced47f4bf86ca35" -> "sha256:5a92761ff9466c7554c39ab6ae697e98d07be7b7120435764f5fbac3af3452e0" [label=""];
  "sha256:5a92761ff9466c7554c39ab6ae697e98d07be7b7120435764f5fbac3af3452e0" -> "sha256:e8117952fac6b689dedf77d112436e21d6df7409d5d400083d5a7d802aaf183f" [label=""];
  "sha256:0d9a276e6dcfbf0b7cb44c77d1b0ab9d3121f0d9c9b7307ab0843c7dfe51bbb9" -> "sha256:1a261b22dd7f0b9a12b55ac7a0afb1b003e43bc2e0b846fda0205ca3a2c5d9f8" [label=""];
  "sha256:1a261b22dd7f0b9a12b55ac7a0afb1b003e43bc2e0b846fda0205ca3a2c5d9f8" -> "sha256:9a430704ea8ac32f7f3f113ff3c39f1a0d22e2daca1ef4f9cf33ba85235f79d9" [label=""];
  "sha256:9a430704ea8ac32f7f3f113ff3c39f1a0d22e2daca1ef4f9cf33ba85235f79d9" -> "sha256:b7b4d58081df59ef73417f0fd1b4a033d01c7ca35e9f7d3749ebe7521ef632d6" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:b7b4d58081df59ef73417f0fd1b4a033d01c7ca35e9f7d3749ebe7521ef632d6" [label=""];
  "sha256:b7b4d58081df59ef73417f0fd1b4a033d01c7ca35e9f7d3749ebe7521ef632d6" -> "sha256:1bfa69cb821ae703c443e0843617e16b080cf46216dfde254d0e13310929fc07" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:1bfa69cb821ae703c443e0843617e16b080cf46216dfde254d0e13310929fc07" [label=""];
  "sha256:1bfa69cb821ae703c443e0843617e16b080cf46216dfde254d0e13310929fc07" -> "sha256:86885b6ba9d40f8f11ccde7237118f39104b0f0f48b70bd164eeacc4e724d038" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:86885b6ba9d40f8f11ccde7237118f39104b0f0f48b70bd164eeacc4e724d038" [label=""];
  "sha256:86885b6ba9d40f8f11ccde7237118f39104b0f0f48b70bd164eeacc4e724d038" -> "sha256:cd506cbccf6e306718f226e02ef863a1dd26d4539bea12821e5346a6d2076dbe" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:cd506cbccf6e306718f226e02ef863a1dd26d4539bea12821e5346a6d2076dbe" [label=""];
  "sha256:cd506cbccf6e306718f226e02ef863a1dd26d4539bea12821e5346a6d2076dbe" -> "sha256:1b07ae32335c7578e16b1a8b4d6935fb56b875e58771332b7a7062b9517965d7" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:1b07ae32335c7578e16b1a8b4d6935fb56b875e58771332b7a7062b9517965d7" [label=""];
  "sha256:1b07ae32335c7578e16b1a8b4d6935fb56b875e58771332b7a7062b9517965d7" -> "sha256:dde6bd7185e5f7cf12c46ed6d55dabff637224b1dbc7961e8362a8c7400d1dd1" [label=""];
  "sha256:dde6bd7185e5f7cf12c46ed6d55dabff637224b1dbc7961e8362a8c7400d1dd1" -> "sha256:5c5cb8c8ee9140683412751e998f744657addd0cd16c9080ee069da16581f564" [label=""];
  "sha256:3d33aaaca45a77fb47e9ace9ed25eef78d5d663274563b71a1bc2d72f74bb948" -> "sha256:5c5cb8c8ee9140683412751e998f744657addd0cd16c9080ee069da16581f564" [label=""];
  "sha256:5c5cb8c8ee9140683412751e998f744657addd0cd16c9080ee069da16581f564" -> "sha256:88ad079f4628402beb25a8c88c2091045b77a52a658d22865ebcde3e78f3dfb9" [label=""];
  "sha256:e8117952fac6b689dedf77d112436e21d6df7409d5d400083d5a7d802aaf183f" -> "sha256:a69a5efd79bf3f34778e828531108878af4ec04b4178b952e6ee17437889ccf8" [label=""];
  "sha256:88ad079f4628402beb25a8c88c2091045b77a52a658d22865ebcde3e78f3dfb9" -> "sha256:a69a5efd79bf3f34778e828531108878af4ec04b4178b952e6ee17437889ccf8" [label=""];
  "sha256:a69a5efd79bf3f34778e828531108878af4ec04b4178b952e6ee17437889ccf8" -> "sha256:9c7cf84630acd889dbef3229d5a5b79b10832015b24533db6f47df723341911f" [label=""];
  "sha256:88ad079f4628402beb25a8c88c2091045b77a52a658d22865ebcde3e78f3dfb9" -> "sha256:9c7cf84630acd889dbef3229d5a5b79b10832015b24533db6f47df723341911f" [label=""];
  "sha256:9c7cf84630acd889dbef3229d5a5b79b10832015b24533db6f47df723341911f" -> "sha256:5c21473f8491888dd70ad3e3fc7dddbb59f5df489aa535388c076d482f0f704a" [label=""];
}

