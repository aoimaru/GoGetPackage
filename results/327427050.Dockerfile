[app/sources/327427050.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:b1543a7e13cd286d897c47b65602945a2318df622e386296f6247a480763979d" [label="local://context" shape="ellipse"];
  "sha256:0d1cf36b3034cae53cd74e3fb125e88a5a2e4a11d7dec476bd323d05c2306469" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:ed530b8d67c3f206962dd95a6df208f09b58ca3d6cdbcc9f235ac3cedecdd053" [label="mkdir{path=/src/github.com/diadata-org/diadata/internal/pkg/blockchain-scrapers/blockchains/ethereum/scrapers/eth}" shape="note"];
  "sha256:a2fed07b10f4b94289996d9ec5c8636737661b2e9e8a7ae93964886b84f07d03" [label="/bin/sh -c go install" shape="box"];
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" [label="docker-image://gcr.io/distroless/base@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:fc86dbfdcbd24acc4f47e7b77761bf986f46d33dbdf53454f3bc45544c3560e8" [label="copy{src=/go/bin/eth, dest=/bin/eth}" shape="note"];
  "sha256:a9c77cfe9ecaefa9c63f1256ec9862c32948c19277511463eaed383c2091514b" [label="sha256:a9c77cfe9ecaefa9c63f1256ec9862c32948c19277511463eaed383c2091514b" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:0d1cf36b3034cae53cd74e3fb125e88a5a2e4a11d7dec476bd323d05c2306469" [label=""];
  "sha256:b1543a7e13cd286d897c47b65602945a2318df622e386296f6247a480763979d" -> "sha256:0d1cf36b3034cae53cd74e3fb125e88a5a2e4a11d7dec476bd323d05c2306469" [label=""];
  "sha256:0d1cf36b3034cae53cd74e3fb125e88a5a2e4a11d7dec476bd323d05c2306469" -> "sha256:ed530b8d67c3f206962dd95a6df208f09b58ca3d6cdbcc9f235ac3cedecdd053" [label=""];
  "sha256:ed530b8d67c3f206962dd95a6df208f09b58ca3d6cdbcc9f235ac3cedecdd053" -> "sha256:a2fed07b10f4b94289996d9ec5c8636737661b2e9e8a7ae93964886b84f07d03" [label=""];
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" -> "sha256:fc86dbfdcbd24acc4f47e7b77761bf986f46d33dbdf53454f3bc45544c3560e8" [label=""];
  "sha256:a2fed07b10f4b94289996d9ec5c8636737661b2e9e8a7ae93964886b84f07d03" -> "sha256:fc86dbfdcbd24acc4f47e7b77761bf986f46d33dbdf53454f3bc45544c3560e8" [label=""];
  "sha256:fc86dbfdcbd24acc4f47e7b77761bf986f46d33dbdf53454f3bc45544c3560e8" -> "sha256:a9c77cfe9ecaefa9c63f1256ec9862c32948c19277511463eaed383c2091514b" [label=""];
}

