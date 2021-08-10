[app/sources/246693363.Dockerfile]
digraph {
  "sha256:1348688fab9d125ffd41f3b65c3505a72c81795ad288dbea879c0bd8023fc040" [label="local://context" shape="ellipse"];
  "sha256:eb90b101d53af68ad1ff34dd97c8ef58136d2b35bfab45debefc55d9d2c5e5c6" [label="docker-image://docker.io/jboss/wildfly:14.0.1.Final" shape="ellipse"];
  "sha256:9a1fcc2b2bf61aae29e687fc8e9ff2188bd00abf22fc536146aded8b7f6c62bd" [label="copy{src=/server/target/ROOT.war, dest=/opt/jboss/wildfly/standalone/deployments/}" shape="note"];
  "sha256:714e167ed0b91381b022818cfcd238d366de762887d1e9f32ac124ab1d888b09" [label="mkdir{path=/opt/jboss/wildfly}" shape="note"];
  "sha256:a021ff7e2d4c9ae93adfcc5cfe725c403f5c21a16293551ce13c59bbbce44fa8" [label="sha256:a021ff7e2d4c9ae93adfcc5cfe725c403f5c21a16293551ce13c59bbbce44fa8" shape="plaintext"];
  "sha256:eb90b101d53af68ad1ff34dd97c8ef58136d2b35bfab45debefc55d9d2c5e5c6" -> "sha256:9a1fcc2b2bf61aae29e687fc8e9ff2188bd00abf22fc536146aded8b7f6c62bd" [label=""];
  "sha256:1348688fab9d125ffd41f3b65c3505a72c81795ad288dbea879c0bd8023fc040" -> "sha256:9a1fcc2b2bf61aae29e687fc8e9ff2188bd00abf22fc536146aded8b7f6c62bd" [label=""];
  "sha256:9a1fcc2b2bf61aae29e687fc8e9ff2188bd00abf22fc536146aded8b7f6c62bd" -> "sha256:714e167ed0b91381b022818cfcd238d366de762887d1e9f32ac124ab1d888b09" [label=""];
  "sha256:714e167ed0b91381b022818cfcd238d366de762887d1e9f32ac124ab1d888b09" -> "sha256:a021ff7e2d4c9ae93adfcc5cfe725c403f5c21a16293551ce13c59bbbce44fa8" [label=""];
}

