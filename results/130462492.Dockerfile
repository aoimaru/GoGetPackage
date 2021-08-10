[app/sources/130462492.Dockerfile]
digraph {
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" [label="docker-image://docker.io/library/openjdk:7-jdk" shape="ellipse"];
  "sha256:c8703f362bfa5d921e980c55e8390e4d11cb4e3648072966d7cc7b6bfcc14068" [label="mkdir{path=/opt}" shape="note"];
  "sha256:59702cd366051d90264745aa78b2192ff045e873e952e099840ab080cff48d22" [label="/bin/sh -c curl -s -L -o grails.zip https://github.com/grails/grails-core/releases/download/v${GRAILS_VERSION}/grails-${GRAILS_VERSION}.zip     && unzip -q grails.zip     && rm grails.zip     && ln -s grails-${GRAILS_VERSION} grails" shape="box"];
  "sha256:1b1ff591464277a845fa81b567a2c18e2a8bf6f62ec1e7bbbf7de880230cfbb4" [label="mkdir{path=/app}" shape="note"];
  "sha256:7fd992f0ffd607a1414b2b658cef4b4dce70117a50f5733f6d800f1fd0f5dd6b" [label="local://context" shape="ellipse"];
  "sha256:bf1eab00f8ad2a5c412aa207aa2e2e893859105ae5787b6cd41b26aa0b052960" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:86202ec03380f8a34b8ecb398ff062efe46dcb972488ee2ff3b94b0fa1caf559" [label="/bin/sh -c ln -s plugins annotationframework     && grails compile     && sed -e 's/localhost:3306/db:3306/' -e 's/catch_test/catch/' Catch-config.properties > catch-config.properties" shape="box"];
  "sha256:cc11c3c4c3232d10d9d659aade9b1ffcdd6b7df29b0802c07cf5815e2ccaaea0" [label="sha256:cc11c3c4c3232d10d9d659aade9b1ffcdd6b7df29b0802c07cf5815e2ccaaea0" shape="plaintext"];
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" -> "sha256:c8703f362bfa5d921e980c55e8390e4d11cb4e3648072966d7cc7b6bfcc14068" [label=""];
  "sha256:c8703f362bfa5d921e980c55e8390e4d11cb4e3648072966d7cc7b6bfcc14068" -> "sha256:59702cd366051d90264745aa78b2192ff045e873e952e099840ab080cff48d22" [label=""];
  "sha256:59702cd366051d90264745aa78b2192ff045e873e952e099840ab080cff48d22" -> "sha256:1b1ff591464277a845fa81b567a2c18e2a8bf6f62ec1e7bbbf7de880230cfbb4" [label=""];
  "sha256:1b1ff591464277a845fa81b567a2c18e2a8bf6f62ec1e7bbbf7de880230cfbb4" -> "sha256:bf1eab00f8ad2a5c412aa207aa2e2e893859105ae5787b6cd41b26aa0b052960" [label=""];
  "sha256:7fd992f0ffd607a1414b2b658cef4b4dce70117a50f5733f6d800f1fd0f5dd6b" -> "sha256:bf1eab00f8ad2a5c412aa207aa2e2e893859105ae5787b6cd41b26aa0b052960" [label=""];
  "sha256:bf1eab00f8ad2a5c412aa207aa2e2e893859105ae5787b6cd41b26aa0b052960" -> "sha256:86202ec03380f8a34b8ecb398ff062efe46dcb972488ee2ff3b94b0fa1caf559" [label=""];
  "sha256:86202ec03380f8a34b8ecb398ff062efe46dcb972488ee2ff3b94b0fa1caf559" -> "sha256:cc11c3c4c3232d10d9d659aade9b1ffcdd6b7df29b0802c07cf5815e2ccaaea0" [label=""];
}

