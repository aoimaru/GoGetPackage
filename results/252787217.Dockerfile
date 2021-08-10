[app/sources/252787217.Dockerfile]
digraph {
  "sha256:a06c79f0c300ff504c823f32a2bc5b8d891ddb6311e7502cf0b40d2013cb8c27" [label="local://context" shape="ellipse"];
  "sha256:2a370564361de614a7ad63d45d38bef8ad13f53262631e9d348d1ef9e951079e" [label="docker-image://daocloud.io/library/tomcat:8.5@sha256:d60e84336a9b2639fc590119309f674613346a32657c6278e353c96eaecbfedd" shape="ellipse"];
  "sha256:3d45f2d1f0572975cc6f127a8f1e51b82f8517ebdcc2286d26dfaf51a4ba78ac" [label="copy{src=/keycloak-tomcat8-adapter/*, dest=/usr/local/tomcat/lib/}" shape="note"];
  "sha256:7298a603c28964cc7f00be231928e88417019ec0929b374f2579ca6d059a829a" [label="copy{src=/context.xml, dest=/usr/local/tomcat/conf}" shape="note"];
  "sha256:ff78db212cd6b093927feb40c2dbacda5c477aa04505e89f91e0f10770175d4e" [label="/bin/sh -c apt-get update && apt-get install -y vim && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a7bc2bd1415a38faf056e498e49aaf33bdacd3297d22ca3d48ad05ecc0ca68f0" [label="copy{src=/idsw.zip, dest=/tmp/}" shape="note"];
  "sha256:7a8bc7c0e07297140cb62f5d3b0a044af264d22161d677c53d5c68bd6c02d01c" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:bb8bb50bc915c4306cb188a3c8f0981fb30a780555ebf2fa30525733c6115893" [label="/bin/sh -c unzip idsw.zip -d idsw" shape="box"];
  "sha256:3e7011fd356678af9a8c2e8dd6ded2c3f29888a6da4d4b2b8acea9ec6390a098" [label="/bin/sh -c mv idsw /usr/local/tomcat/webapps/ && rm -rf idsw.zip && mkdir -p /data/idsw" shape="box"];
  "sha256:61ff615cec100a662acf753845146b785e3cc728242e0a74f6aae9ba41008284" [label="sha256:61ff615cec100a662acf753845146b785e3cc728242e0a74f6aae9ba41008284" shape="plaintext"];
  "sha256:2a370564361de614a7ad63d45d38bef8ad13f53262631e9d348d1ef9e951079e" -> "sha256:3d45f2d1f0572975cc6f127a8f1e51b82f8517ebdcc2286d26dfaf51a4ba78ac" [label=""];
  "sha256:a06c79f0c300ff504c823f32a2bc5b8d891ddb6311e7502cf0b40d2013cb8c27" -> "sha256:3d45f2d1f0572975cc6f127a8f1e51b82f8517ebdcc2286d26dfaf51a4ba78ac" [label=""];
  "sha256:3d45f2d1f0572975cc6f127a8f1e51b82f8517ebdcc2286d26dfaf51a4ba78ac" -> "sha256:7298a603c28964cc7f00be231928e88417019ec0929b374f2579ca6d059a829a" [label=""];
  "sha256:a06c79f0c300ff504c823f32a2bc5b8d891ddb6311e7502cf0b40d2013cb8c27" -> "sha256:7298a603c28964cc7f00be231928e88417019ec0929b374f2579ca6d059a829a" [label=""];
  "sha256:7298a603c28964cc7f00be231928e88417019ec0929b374f2579ca6d059a829a" -> "sha256:ff78db212cd6b093927feb40c2dbacda5c477aa04505e89f91e0f10770175d4e" [label=""];
  "sha256:ff78db212cd6b093927feb40c2dbacda5c477aa04505e89f91e0f10770175d4e" -> "sha256:a7bc2bd1415a38faf056e498e49aaf33bdacd3297d22ca3d48ad05ecc0ca68f0" [label=""];
  "sha256:a06c79f0c300ff504c823f32a2bc5b8d891ddb6311e7502cf0b40d2013cb8c27" -> "sha256:a7bc2bd1415a38faf056e498e49aaf33bdacd3297d22ca3d48ad05ecc0ca68f0" [label=""];
  "sha256:a7bc2bd1415a38faf056e498e49aaf33bdacd3297d22ca3d48ad05ecc0ca68f0" -> "sha256:7a8bc7c0e07297140cb62f5d3b0a044af264d22161d677c53d5c68bd6c02d01c" [label=""];
  "sha256:7a8bc7c0e07297140cb62f5d3b0a044af264d22161d677c53d5c68bd6c02d01c" -> "sha256:bb8bb50bc915c4306cb188a3c8f0981fb30a780555ebf2fa30525733c6115893" [label=""];
  "sha256:bb8bb50bc915c4306cb188a3c8f0981fb30a780555ebf2fa30525733c6115893" -> "sha256:3e7011fd356678af9a8c2e8dd6ded2c3f29888a6da4d4b2b8acea9ec6390a098" [label=""];
  "sha256:3e7011fd356678af9a8c2e8dd6ded2c3f29888a6da4d4b2b8acea9ec6390a098" -> "sha256:61ff615cec100a662acf753845146b785e3cc728242e0a74f6aae9ba41008284" [label=""];
}

