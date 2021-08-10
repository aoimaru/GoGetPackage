[app/sources/241326426.Dockerfile]
digraph {
  "sha256:c748244a15cfca075bbbae51da210ad23656f8df680e598d6672d73a83e7fb1b" [label="docker-image://docker.io/library/java:openjdk-8-jre-alpine" shape="ellipse"];
  "sha256:f7f7afc058b2efd9fdb4d6c5d467f54b6bb1577b6c0a650cf2f2d5197c642f88" [label="local://context" shape="ellipse"];
  "sha256:bd38f99687510db562bcd4905ad3ce82c8d77221340f3f650d8923cafc5abd1d" [label="copy{src=/flyway, dest=/usr/bin/}" shape="note"];
  "sha256:020bc9f86d5a11c622b872b2b937e23e1f4f813d78136c59ea34346bf8537ff7" [label="/bin/sh -c apk --no-cache add bash" shape="box"];
  "sha256:9f7a0a9eab256ffa9938b574b05083f22cca07c267fa964cd1c458016f462db5" [label="/bin/sh -c apk --no-cache add --virtual build-deps curl     && chmod +x /usr/bin/flyway     && repo=\"https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline\"     && curl --location --silent --show-error --out /flyway.tar.gz         ${repo}/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}.tar.gz     && sha1=\"42d541ced57c47c30ba027088f7b9493b626ad4f\"     && echo \"$sha1  flyway.tar.gz\" | sha1sum -c -     && tar xzf /flyway.tar.gz     && mv /flyway-${FLYWAY_VERSION} /flyway     && rm -rf /flyway.tar.gz     && apk del --purge -r build-deps" shape="box"];
  "sha256:7ebddd01de5d047aec4e103273976143088b421723224ab38950496d12cdd92e" [label="mkdir{path=/flyway}" shape="note"];
  "sha256:9c7643d536307d4c153fc440f392f3e79a8a118c431f4172fe98320f6e9efeff" [label="sha256:9c7643d536307d4c153fc440f392f3e79a8a118c431f4172fe98320f6e9efeff" shape="plaintext"];
  "sha256:c748244a15cfca075bbbae51da210ad23656f8df680e598d6672d73a83e7fb1b" -> "sha256:bd38f99687510db562bcd4905ad3ce82c8d77221340f3f650d8923cafc5abd1d" [label=""];
  "sha256:f7f7afc058b2efd9fdb4d6c5d467f54b6bb1577b6c0a650cf2f2d5197c642f88" -> "sha256:bd38f99687510db562bcd4905ad3ce82c8d77221340f3f650d8923cafc5abd1d" [label=""];
  "sha256:bd38f99687510db562bcd4905ad3ce82c8d77221340f3f650d8923cafc5abd1d" -> "sha256:020bc9f86d5a11c622b872b2b937e23e1f4f813d78136c59ea34346bf8537ff7" [label=""];
  "sha256:020bc9f86d5a11c622b872b2b937e23e1f4f813d78136c59ea34346bf8537ff7" -> "sha256:9f7a0a9eab256ffa9938b574b05083f22cca07c267fa964cd1c458016f462db5" [label=""];
  "sha256:9f7a0a9eab256ffa9938b574b05083f22cca07c267fa964cd1c458016f462db5" -> "sha256:7ebddd01de5d047aec4e103273976143088b421723224ab38950496d12cdd92e" [label=""];
  "sha256:7ebddd01de5d047aec4e103273976143088b421723224ab38950496d12cdd92e" -> "sha256:9c7643d536307d4c153fc440f392f3e79a8a118c431f4172fe98320f6e9efeff" [label=""];
}

