[app/sources/252788307.Dockerfile]
digraph {
  "sha256:715f2b156ed1dfd05ec391d4e325a78d1563f3fcf43d81a5d3f03521a00ebabd" [label="docker-image://docker.io/library/tomcat:8.0@sha256:8ecb10948deb32c34aeadf7bf95d12a93fbd3527911fa629c1a3e7823b89ce6f" shape="ellipse"];
  "sha256:b663775a7ac2760bafb50f0d22a589b707e740376589a3a7b1a130859007dc73" [label="/bin/sh -c apt-get update && apt-get install -y ant make ncbi-blast+ openjdk-7-jdk && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5addfc2702e46d9fb144d019632dffc5f7e8b1bf477a850c83b6c2abaa71ef4e" [label="local://context" shape="ellipse"];
  "sha256:6cc7ced99b6440af346ae0819f8697cf5124e7d71a143fbdd91f93d367c6ef5e" [label="copy{src=/potage, dest=/opt/potage}" shape="note"];
  "sha256:4abeebadcbe56b324ad31c1f66231130f4e66b10291c1ff2b0aaade78139a774" [label="copy{src=/build.xml, dest=/opt/potage/}" shape="note"];
  "sha256:5c4826fa954e14447fa0d3a76e9a3599875802ada67e617081b0a7310c6d8215" [label="mkdir{path=/opt/potage}" shape="note"];
  "sha256:4a62639af849dd9e584494888acfd4083534c403df4aabd7e0d9e7c63874f396" [label="/bin/sh -c ant" shape="box"];
  "sha256:be5120419669879022b248f9807ca7ae7282aabede0a286b4228d4a14891f820" [label="/bin/sh -c mv ${POTAGE_APP_CODE}/dist/potage.war /usr/local/tomcat/webapps/" shape="box"];
  "sha256:3f9d5a493173424c9ffee3b9c9050e617b777ed3a0ef0d27cae035586c81aa5e" [label="copy{src=/potage_data, dest=/var/tomcat/persist/potage_data}" shape="note"];
  "sha256:983ba68ef458c5d69c77ebb249bf6ed22b6aa211256962a65bbe9916832ff2ec" [label="mkdir{path=/var/tomcat/persist/potage_data}" shape="note"];
  "sha256:21bc4fb91d56f8cd57beda2d8ef01f311699dea86a6afdabd75ba5e4eac0ba5c" [label="sha256:21bc4fb91d56f8cd57beda2d8ef01f311699dea86a6afdabd75ba5e4eac0ba5c" shape="plaintext"];
  "sha256:715f2b156ed1dfd05ec391d4e325a78d1563f3fcf43d81a5d3f03521a00ebabd" -> "sha256:b663775a7ac2760bafb50f0d22a589b707e740376589a3a7b1a130859007dc73" [label=""];
  "sha256:b663775a7ac2760bafb50f0d22a589b707e740376589a3a7b1a130859007dc73" -> "sha256:6cc7ced99b6440af346ae0819f8697cf5124e7d71a143fbdd91f93d367c6ef5e" [label=""];
  "sha256:5addfc2702e46d9fb144d019632dffc5f7e8b1bf477a850c83b6c2abaa71ef4e" -> "sha256:6cc7ced99b6440af346ae0819f8697cf5124e7d71a143fbdd91f93d367c6ef5e" [label=""];
  "sha256:6cc7ced99b6440af346ae0819f8697cf5124e7d71a143fbdd91f93d367c6ef5e" -> "sha256:4abeebadcbe56b324ad31c1f66231130f4e66b10291c1ff2b0aaade78139a774" [label=""];
  "sha256:5addfc2702e46d9fb144d019632dffc5f7e8b1bf477a850c83b6c2abaa71ef4e" -> "sha256:4abeebadcbe56b324ad31c1f66231130f4e66b10291c1ff2b0aaade78139a774" [label=""];
  "sha256:4abeebadcbe56b324ad31c1f66231130f4e66b10291c1ff2b0aaade78139a774" -> "sha256:5c4826fa954e14447fa0d3a76e9a3599875802ada67e617081b0a7310c6d8215" [label=""];
  "sha256:5c4826fa954e14447fa0d3a76e9a3599875802ada67e617081b0a7310c6d8215" -> "sha256:4a62639af849dd9e584494888acfd4083534c403df4aabd7e0d9e7c63874f396" [label=""];
  "sha256:4a62639af849dd9e584494888acfd4083534c403df4aabd7e0d9e7c63874f396" -> "sha256:be5120419669879022b248f9807ca7ae7282aabede0a286b4228d4a14891f820" [label=""];
  "sha256:be5120419669879022b248f9807ca7ae7282aabede0a286b4228d4a14891f820" -> "sha256:3f9d5a493173424c9ffee3b9c9050e617b777ed3a0ef0d27cae035586c81aa5e" [label=""];
  "sha256:5addfc2702e46d9fb144d019632dffc5f7e8b1bf477a850c83b6c2abaa71ef4e" -> "sha256:3f9d5a493173424c9ffee3b9c9050e617b777ed3a0ef0d27cae035586c81aa5e" [label=""];
  "sha256:3f9d5a493173424c9ffee3b9c9050e617b777ed3a0ef0d27cae035586c81aa5e" -> "sha256:983ba68ef458c5d69c77ebb249bf6ed22b6aa211256962a65bbe9916832ff2ec" [label=""];
  "sha256:983ba68ef458c5d69c77ebb249bf6ed22b6aa211256962a65bbe9916832ff2ec" -> "sha256:21bc4fb91d56f8cd57beda2d8ef01f311699dea86a6afdabd75ba5e4eac0ba5c" [label=""];
}

