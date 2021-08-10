[app/sources/320726733.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:b4619d2d183a7456262c5620c52134cad4a04b28d1e49ea939a85687c81c6040" [label="/bin/sh -c adduser -D -s /bin/sh jhipster" shape="box"];
  "sha256:3c17afa6ed70cebd9a7f0d241dc36d0986148cfb8262b6d9a868c489dece113b" [label="mkdir{path=/home/jhipster}" shape="note"];
  "sha256:7162dd547fb53ce0cced1bb20730930f0831f2efaf298cb77f7ac714793f96b9" [label="local://context" shape="ellipse"];
  "sha256:163e9e9a150c63c6aa15d5ce2db4843fce3e4fd4e105d59f4c19ea4dfd520f09" [label="copy{src=/entrypoint.sh, dest=/home/jhipster/entrypoint.sh}" shape="note"];
  "sha256:490c9bc6196d2e4bb5d056670ab3b5d8cefd8793883f67fe2522c30963626263" [label="/bin/sh -c chmod 755 entrypoint.sh && chown jhipster:jhipster entrypoint.sh" shape="box"];
  "sha256:111f72bec4fe4556c6d8c934477b4d9debf0d1f648dc55ede80f771f475c7abe" [label="copy{src=/*.war, dest=/home/jhipster/app.war}" shape="note"];
  "sha256:5a470df9e7a257eb5df177334c33bbde961bd8a6bd10eeee3ea47f2d2053ee2d" [label="sha256:5a470df9e7a257eb5df177334c33bbde961bd8a6bd10eeee3ea47f2d2053ee2d" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:b4619d2d183a7456262c5620c52134cad4a04b28d1e49ea939a85687c81c6040" [label=""];
  "sha256:b4619d2d183a7456262c5620c52134cad4a04b28d1e49ea939a85687c81c6040" -> "sha256:3c17afa6ed70cebd9a7f0d241dc36d0986148cfb8262b6d9a868c489dece113b" [label=""];
  "sha256:3c17afa6ed70cebd9a7f0d241dc36d0986148cfb8262b6d9a868c489dece113b" -> "sha256:163e9e9a150c63c6aa15d5ce2db4843fce3e4fd4e105d59f4c19ea4dfd520f09" [label=""];
  "sha256:7162dd547fb53ce0cced1bb20730930f0831f2efaf298cb77f7ac714793f96b9" -> "sha256:163e9e9a150c63c6aa15d5ce2db4843fce3e4fd4e105d59f4c19ea4dfd520f09" [label=""];
  "sha256:163e9e9a150c63c6aa15d5ce2db4843fce3e4fd4e105d59f4c19ea4dfd520f09" -> "sha256:490c9bc6196d2e4bb5d056670ab3b5d8cefd8793883f67fe2522c30963626263" [label=""];
  "sha256:490c9bc6196d2e4bb5d056670ab3b5d8cefd8793883f67fe2522c30963626263" -> "sha256:111f72bec4fe4556c6d8c934477b4d9debf0d1f648dc55ede80f771f475c7abe" [label=""];
  "sha256:7162dd547fb53ce0cced1bb20730930f0831f2efaf298cb77f7ac714793f96b9" -> "sha256:111f72bec4fe4556c6d8c934477b4d9debf0d1f648dc55ede80f771f475c7abe" [label=""];
  "sha256:111f72bec4fe4556c6d8c934477b4d9debf0d1f648dc55ede80f771f475c7abe" -> "sha256:5a470df9e7a257eb5df177334c33bbde961bd8a6bd10eeee3ea47f2d2053ee2d" [label=""];
}

