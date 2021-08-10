[app/sources/147779095.Dockerfile]
digraph {
  "sha256:0f41109b1a760570458f97bb4b6cbfad950da709f1c2a74a1c0c2875365846c2" [label="local://context" shape="ellipse"];
  "sha256:223e1461cebb0b272e52581a0fc177318c96d517adcb2e6dbd5ecbc5edf42954" [label="docker-image://docker.io/library/java:7-jre@sha256:6fb55e5ffc4ce926c320faa5fb807ed1bccd84ccbbe278109c67c5b38684e633" shape="ellipse"];
  "sha256:7ee9b6e97eeabddf476e010c5cc60bea84f035c42ce2dacb51656c3dab4e0611" [label="/bin/sh -c apt-get update && apt-get install -y \tasciidoctor \tunzip \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6429a576e070bafdecb8f130855ba5327340417701785de356c717c6b3a51da6" [label="/bin/sh -c wget -O /tmp/gradle.zip https://services.gradle.org/distributions/gradle-2.5-bin.zip \t&& mkdir -p build/ \t&& unzip /tmp/gradle.zip -d build/ \t&& rm /tmp/gradle.zip \t&& mkdir -p gradle-cache/" shape="box"];
  "sha256:4df129337b98a830baafe01ffa341932d7eab0fe8288af708b3dd7ea2359b066" [label="copy{src=/build.gradle, dest=/build/}" shape="note"];
  "sha256:8673b00f48d2b1ca5f54942df889a98ee4f56db330056dcc42898887561b0806" [label="copy{src=/gen-swagger-docs.sh, dest=/build/}" shape="note"];
  "sha256:4be292641a212d5ddf9a95599850182f507850891b1a64dc7842cec3af7c012c" [label="/bin/sh -c mkdir -p /output /swagger-source \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/api/swagger-spec/v1.json -O /swagger-source/v1.json \t&& wget https://raw.githubusercontent.com/kubernetes/kubernetes/master/pkg/api/v1/register.go -O /register.go \t&& build/gen-swagger-docs.sh v1 \t&& rm -rf /output/* /swagger-source/* /register.go" shape="box"];
  "sha256:9e0e702999d036881a6585d489345db7873510c675a2f12ff30fd76a57416555" [label="/bin/sh -c chmod -R 777 build/ \t&& chmod -R 777 gradle-cache/" shape="box"];
  "sha256:27d780810c1fd3e5f363d59b085282ab77477fb94c17abeea816d45440510770" [label="sha256:27d780810c1fd3e5f363d59b085282ab77477fb94c17abeea816d45440510770" shape="plaintext"];
  "sha256:223e1461cebb0b272e52581a0fc177318c96d517adcb2e6dbd5ecbc5edf42954" -> "sha256:7ee9b6e97eeabddf476e010c5cc60bea84f035c42ce2dacb51656c3dab4e0611" [label=""];
  "sha256:7ee9b6e97eeabddf476e010c5cc60bea84f035c42ce2dacb51656c3dab4e0611" -> "sha256:6429a576e070bafdecb8f130855ba5327340417701785de356c717c6b3a51da6" [label=""];
  "sha256:6429a576e070bafdecb8f130855ba5327340417701785de356c717c6b3a51da6" -> "sha256:4df129337b98a830baafe01ffa341932d7eab0fe8288af708b3dd7ea2359b066" [label=""];
  "sha256:0f41109b1a760570458f97bb4b6cbfad950da709f1c2a74a1c0c2875365846c2" -> "sha256:4df129337b98a830baafe01ffa341932d7eab0fe8288af708b3dd7ea2359b066" [label=""];
  "sha256:4df129337b98a830baafe01ffa341932d7eab0fe8288af708b3dd7ea2359b066" -> "sha256:8673b00f48d2b1ca5f54942df889a98ee4f56db330056dcc42898887561b0806" [label=""];
  "sha256:0f41109b1a760570458f97bb4b6cbfad950da709f1c2a74a1c0c2875365846c2" -> "sha256:8673b00f48d2b1ca5f54942df889a98ee4f56db330056dcc42898887561b0806" [label=""];
  "sha256:8673b00f48d2b1ca5f54942df889a98ee4f56db330056dcc42898887561b0806" -> "sha256:4be292641a212d5ddf9a95599850182f507850891b1a64dc7842cec3af7c012c" [label=""];
  "sha256:4be292641a212d5ddf9a95599850182f507850891b1a64dc7842cec3af7c012c" -> "sha256:9e0e702999d036881a6585d489345db7873510c675a2f12ff30fd76a57416555" [label=""];
  "sha256:9e0e702999d036881a6585d489345db7873510c675a2f12ff30fd76a57416555" -> "sha256:27d780810c1fd3e5f363d59b085282ab77477fb94c17abeea816d45440510770" [label=""];
}

