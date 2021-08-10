[app/sources/464967717.Dockerfile]
digraph {
  "sha256:95b48a74a2ecce8a3f0973aae6e612ed7fdcb957287c3b2ce23a90e2842534aa" [label="docker-image://docker.io/jboss/keycloak:4.8.2.Final" shape="ellipse"];
  "sha256:86637fcdf679fcf13f3fbecf25b86fd97bc7c7cb533829bd59b37c266b48563d" [label="local://context" shape="ellipse"];
  "sha256:1906ea104b3fa8ffe6610f17ba3ffbe4d455c0143ab9e42aecee4f4fb930f23b" [label="copy{src=/src/main/realm-config, dest=/opt/jboss/keycloak/realm-config}" shape="note"];
  "sha256:364b37dd7b8586781db5995d73640ac2ec5d76b28cf46812e8901b2f0bd39965" [label="copy{src=/src/main/resources/standalone/configuration/standalone.xml, dest=/opt/jboss/keycloak/standalone/configuration/standalone.xml}" shape="note"];
  "sha256:b35dd3d80276edd4510c10bbc3ed38ddcbd713ad53478925d4c6447b8bdb2030" [label="copy{src=/keycloak-identity-providers/keycloak-identity-provider-authenticator/target/keycloak-identity-provider-authenticator-0.0.1-SNAPSHOT.jar, dest=/opt/jboss/keycloak/standalone/deployments/keycloak-identity-provider-authenticator-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:abbd17b1fcd5e20dbb6d516736d52498f6773d497b48590a48647f41f0546db8" [label="copy{src=/keycloak-theme/target/keycloak-theme-0.0.1-SNAPSHOT.jar, dest=/opt/jboss/keycloak/standalone/deployments/keycloak-theme-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:0c6d61946e280458ed0215982a0ee0c8ab0abcb2a623341750d28a893b85b458" [label="sha256:0c6d61946e280458ed0215982a0ee0c8ab0abcb2a623341750d28a893b85b458" shape="plaintext"];
  "sha256:95b48a74a2ecce8a3f0973aae6e612ed7fdcb957287c3b2ce23a90e2842534aa" -> "sha256:1906ea104b3fa8ffe6610f17ba3ffbe4d455c0143ab9e42aecee4f4fb930f23b" [label=""];
  "sha256:86637fcdf679fcf13f3fbecf25b86fd97bc7c7cb533829bd59b37c266b48563d" -> "sha256:1906ea104b3fa8ffe6610f17ba3ffbe4d455c0143ab9e42aecee4f4fb930f23b" [label=""];
  "sha256:1906ea104b3fa8ffe6610f17ba3ffbe4d455c0143ab9e42aecee4f4fb930f23b" -> "sha256:364b37dd7b8586781db5995d73640ac2ec5d76b28cf46812e8901b2f0bd39965" [label=""];
  "sha256:86637fcdf679fcf13f3fbecf25b86fd97bc7c7cb533829bd59b37c266b48563d" -> "sha256:364b37dd7b8586781db5995d73640ac2ec5d76b28cf46812e8901b2f0bd39965" [label=""];
  "sha256:364b37dd7b8586781db5995d73640ac2ec5d76b28cf46812e8901b2f0bd39965" -> "sha256:b35dd3d80276edd4510c10bbc3ed38ddcbd713ad53478925d4c6447b8bdb2030" [label=""];
  "sha256:86637fcdf679fcf13f3fbecf25b86fd97bc7c7cb533829bd59b37c266b48563d" -> "sha256:b35dd3d80276edd4510c10bbc3ed38ddcbd713ad53478925d4c6447b8bdb2030" [label=""];
  "sha256:b35dd3d80276edd4510c10bbc3ed38ddcbd713ad53478925d4c6447b8bdb2030" -> "sha256:abbd17b1fcd5e20dbb6d516736d52498f6773d497b48590a48647f41f0546db8" [label=""];
  "sha256:86637fcdf679fcf13f3fbecf25b86fd97bc7c7cb533829bd59b37c266b48563d" -> "sha256:abbd17b1fcd5e20dbb6d516736d52498f6773d497b48590a48647f41f0546db8" [label=""];
  "sha256:abbd17b1fcd5e20dbb6d516736d52498f6773d497b48590a48647f41f0546db8" -> "sha256:0c6d61946e280458ed0215982a0ee0c8ab0abcb2a623341750d28a893b85b458" [label=""];
}

