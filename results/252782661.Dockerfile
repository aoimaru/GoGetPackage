[app/sources/252782661.Dockerfile]
digraph {
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" [label="docker-image://docker.io/library/mysql:5.6" shape="ellipse"];
  "sha256:f2e23c246a708ec1a2feccd0429440f1e3d402fce0fcf8a2e4869d4d2e7cfdf8" [label="local://context" shape="ellipse"];
  "sha256:07d1c0f149ce07e7820066746d2568f597eb1a7114403a50f2917432414fe016" [label="copy{src=/1-SCHEMA.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:3e1430b9a647124048b219edeb38a42daf7554a51ae6b4ce67653620e8c6464e" [label="copy{src=/2-PRIVILEGES.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:4281842aef8e396856a3a9d0c555376b6a7615e02975d99fd083785aebe437ac" [label="copy{src=/3-ENTRIES.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:3a064e82fd387420a0c784a76802efb37da933db20498a72eb1aea3ae6ebacda" [label="sha256:3a064e82fd387420a0c784a76802efb37da933db20498a72eb1aea3ae6ebacda" shape="plaintext"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" -> "sha256:07d1c0f149ce07e7820066746d2568f597eb1a7114403a50f2917432414fe016" [label=""];
  "sha256:f2e23c246a708ec1a2feccd0429440f1e3d402fce0fcf8a2e4869d4d2e7cfdf8" -> "sha256:07d1c0f149ce07e7820066746d2568f597eb1a7114403a50f2917432414fe016" [label=""];
  "sha256:07d1c0f149ce07e7820066746d2568f597eb1a7114403a50f2917432414fe016" -> "sha256:3e1430b9a647124048b219edeb38a42daf7554a51ae6b4ce67653620e8c6464e" [label=""];
  "sha256:f2e23c246a708ec1a2feccd0429440f1e3d402fce0fcf8a2e4869d4d2e7cfdf8" -> "sha256:3e1430b9a647124048b219edeb38a42daf7554a51ae6b4ce67653620e8c6464e" [label=""];
  "sha256:3e1430b9a647124048b219edeb38a42daf7554a51ae6b4ce67653620e8c6464e" -> "sha256:4281842aef8e396856a3a9d0c555376b6a7615e02975d99fd083785aebe437ac" [label=""];
  "sha256:f2e23c246a708ec1a2feccd0429440f1e3d402fce0fcf8a2e4869d4d2e7cfdf8" -> "sha256:4281842aef8e396856a3a9d0c555376b6a7615e02975d99fd083785aebe437ac" [label=""];
  "sha256:4281842aef8e396856a3a9d0c555376b6a7615e02975d99fd083785aebe437ac" -> "sha256:3a064e82fd387420a0c784a76802efb37da933db20498a72eb1aea3ae6ebacda" [label=""];
}

