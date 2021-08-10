[app/sources/468554687.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:7aeeb1ea773cbe9a59bc8ac7090c6ad3a99c7d7ba9b72f5934edd966a9474945" [label="mkdir{path=/workspace/app}" shape="note"];
  "sha256:3e0888f6837209b9da121d61f98bbd59c268a7870bcdf4e05b0ea15f5eda1769" [label="docker-image://docker.io/dsyer/graalvm-native-image:1.0.0-rc7@sha256:8bab22ea446d15078305d144a37e8c53578f67ee2a205a04e2539d2d1a35f155" shape="ellipse"];
  "sha256:73108658ba6d2b255d58134edc084f624d8685eaa5dd1c78fce0fac47970deba" [label="mkdir{path=/workspace/app}" shape="note"];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine@sha256:94792824df2df33402f201713f932b58cb9de94a0cd524164a0f2283343547b3" shape="ellipse"];
  "sha256:77028a236466aec0a93d478faece10da56d75f686a595dade19f516324a48aa6" [label="mkdir{path=/workspace/app}" shape="note"];
  "sha256:d87a791d542d3353c2adb1d96187df9af97180e848f21c65e9800395e866c395" [label="local://context" shape="ellipse"];
  "sha256:9938e507445119cd750e603f6a868b55ffb36e45eefc09c12b4a2e29fa66960e" [label="copy{src=/, dest=/workspace/app/}" shape="note"];
  "sha256:75a88233c24c49723cce1347b8a93f2cbd7488c910e00af16100fcb68defec65" [label="/bin/sh -c ./mvnw -N dependency:resolve" shape="box"];
  "sha256:9cac9f173b9c267e7b53fee5709150c42b7d58cff4b9e9febcf0ad3a715e1d3e" [label="/bin/sh -c ./mvnw install -DskipTests" shape="box"];
  "sha256:3f264a86839c24f0ea1dae2afab3433db2dabdc732d1f3707fdd57d2081af66b" [label="copy{src=/root/.m2, dest=/root/.m2}" shape="note"];
  "sha256:6f6d54b8461e81096790e985a846ccfecaeb3a75dd8a9343dc74b6a7e07cc579" [label="copy{src=/workspace/app/samples/jackson/target/*.jar, dest=/workspace/app/target/app.jar}" shape="note"];
  "sha256:72588438de2e91b6ddc858a9e9fa19ade30702d1860837ba90ceb8147a7d804b" [label="copy{src=/workspace/app/samples/jackson/*.json, dest=/workspace/app/}" shape="note"];
  "sha256:264e9925fe06bb1f37bdfa0169b43eed4435a3ebc98e66283eb716372db7a6bd" [label="/bin/sh -c mkdir target/app && cd target/app && jar -xf ../app.jar" shape="box"];
  "sha256:52562b8a187965c5c4662b80448d44cb1660c30998697f84fed1dfb793896097" [label="/bin/sh -c /usr/lib/graalvm/bin/native-image --no-server --static -J-javaagent:/root/.m2/repository/org/aspectj/aspectjweaver/1.9.1/aspectjweaver-1.9.1.jar -Dio.netty.noUnsafe=true -Dio.netty.noJdkZlibDecoder=true -Dio.netty.noJdkZlibEncoder=true -H:Name=target/app -H:ReflectionConfigurationFiles=`echo *.json | tr ' ' ,` -H:ReflectionConfigurationResources=META-INF/micro-library.json -H:IncludeResources='META-INF/.*.json|META-INF/spring.factories|org/springframework/boot/logging/.*' --delay-class-initialization-to-runtime=io.netty.handler.codec.http.HttpObjectEncoder,org.springframework.core.io.VfsUtils,io.netty.handler.ssl.JdkNpnApplicationProtocolNegotiator,io.netty.handler.ssl.ReferenceCountedOpenSslEngine  --report-unsupported-elements-at-runtime -cp `/usr/lib/graalvm/bin/java -jar ~/.m2/repository/org/springframework/boot/experimental/spring-boot-thin-launcher/*/*-exec.jar --thin.classpath --thin.profile=graal --thin.archive=target/app` app.main.SampleApplication" shape="box"];
  "sha256:6c71d3c9b685cd7c3d1b14370fc5d66fb6690cc31bd4b0f568c73caf2f65170d" [label="copy{src=/workspace/app/target/app, dest=/workspace/app/}" shape="note"];
  "sha256:df7d1090079292ba6a42a363a697435a9b4f93d8a406d8fd27f51ce0e8448b9d" [label="sha256:df7d1090079292ba6a42a363a697435a9b4f93d8a406d8fd27f51ce0e8448b9d" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:7aeeb1ea773cbe9a59bc8ac7090c6ad3a99c7d7ba9b72f5934edd966a9474945" [label=""];
  "sha256:3e0888f6837209b9da121d61f98bbd59c268a7870bcdf4e05b0ea15f5eda1769" -> "sha256:73108658ba6d2b255d58134edc084f624d8685eaa5dd1c78fce0fac47970deba" [label=""];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" -> "sha256:77028a236466aec0a93d478faece10da56d75f686a595dade19f516324a48aa6" [label=""];
  "sha256:77028a236466aec0a93d478faece10da56d75f686a595dade19f516324a48aa6" -> "sha256:9938e507445119cd750e603f6a868b55ffb36e45eefc09c12b4a2e29fa66960e" [label=""];
  "sha256:d87a791d542d3353c2adb1d96187df9af97180e848f21c65e9800395e866c395" -> "sha256:9938e507445119cd750e603f6a868b55ffb36e45eefc09c12b4a2e29fa66960e" [label=""];
  "sha256:9938e507445119cd750e603f6a868b55ffb36e45eefc09c12b4a2e29fa66960e" -> "sha256:75a88233c24c49723cce1347b8a93f2cbd7488c910e00af16100fcb68defec65" [label=""];
  "sha256:75a88233c24c49723cce1347b8a93f2cbd7488c910e00af16100fcb68defec65" -> "sha256:9cac9f173b9c267e7b53fee5709150c42b7d58cff4b9e9febcf0ad3a715e1d3e" [label=""];
  "sha256:73108658ba6d2b255d58134edc084f624d8685eaa5dd1c78fce0fac47970deba" -> "sha256:3f264a86839c24f0ea1dae2afab3433db2dabdc732d1f3707fdd57d2081af66b" [label=""];
  "sha256:9cac9f173b9c267e7b53fee5709150c42b7d58cff4b9e9febcf0ad3a715e1d3e" -> "sha256:3f264a86839c24f0ea1dae2afab3433db2dabdc732d1f3707fdd57d2081af66b" [label=""];
  "sha256:3f264a86839c24f0ea1dae2afab3433db2dabdc732d1f3707fdd57d2081af66b" -> "sha256:6f6d54b8461e81096790e985a846ccfecaeb3a75dd8a9343dc74b6a7e07cc579" [label=""];
  "sha256:9cac9f173b9c267e7b53fee5709150c42b7d58cff4b9e9febcf0ad3a715e1d3e" -> "sha256:6f6d54b8461e81096790e985a846ccfecaeb3a75dd8a9343dc74b6a7e07cc579" [label=""];
  "sha256:6f6d54b8461e81096790e985a846ccfecaeb3a75dd8a9343dc74b6a7e07cc579" -> "sha256:72588438de2e91b6ddc858a9e9fa19ade30702d1860837ba90ceb8147a7d804b" [label=""];
  "sha256:9cac9f173b9c267e7b53fee5709150c42b7d58cff4b9e9febcf0ad3a715e1d3e" -> "sha256:72588438de2e91b6ddc858a9e9fa19ade30702d1860837ba90ceb8147a7d804b" [label=""];
  "sha256:72588438de2e91b6ddc858a9e9fa19ade30702d1860837ba90ceb8147a7d804b" -> "sha256:264e9925fe06bb1f37bdfa0169b43eed4435a3ebc98e66283eb716372db7a6bd" [label=""];
  "sha256:264e9925fe06bb1f37bdfa0169b43eed4435a3ebc98e66283eb716372db7a6bd" -> "sha256:52562b8a187965c5c4662b80448d44cb1660c30998697f84fed1dfb793896097" [label=""];
  "sha256:7aeeb1ea773cbe9a59bc8ac7090c6ad3a99c7d7ba9b72f5934edd966a9474945" -> "sha256:6c71d3c9b685cd7c3d1b14370fc5d66fb6690cc31bd4b0f568c73caf2f65170d" [label=""];
  "sha256:52562b8a187965c5c4662b80448d44cb1660c30998697f84fed1dfb793896097" -> "sha256:6c71d3c9b685cd7c3d1b14370fc5d66fb6690cc31bd4b0f568c73caf2f65170d" [label=""];
  "sha256:6c71d3c9b685cd7c3d1b14370fc5d66fb6690cc31bd4b0f568c73caf2f65170d" -> "sha256:df7d1090079292ba6a42a363a697435a9b4f93d8a406d8fd27f51ce0e8448b9d" [label=""];
}

