[app/sources/240175641.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:125ade809d11ffbed4da87ec62d570a3b28bb70eda54bb9b6d09657e7dfdead1" [label="local://context" shape="ellipse"];
  "sha256:2d1e202b0df2ce37659be35a0f73ffcab9b5fa90485e6e898948272805b9769c" [label="copy{src=/target/egf-voucher-0.0.1-SNAPSHOT.jar, dest=/opt/egov/egf-voucher.jar}" shape="note"];
  "sha256:3b75b0a723d4a474a44db126c36cdfed81713500f4544eca1e3a59dd8327d318" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:6b4e58c3d6e2a85e3cec5958e58adfe53c1d010983cd81cd3c7a9e603389778c" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:b0b0e45efced345fda1bb277f450b4688662bedf81d77fc0f558d68488732b6c" [label="sha256:b0b0e45efced345fda1bb277f450b4688662bedf81d77fc0f558d68488732b6c" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:2d1e202b0df2ce37659be35a0f73ffcab9b5fa90485e6e898948272805b9769c" [label=""];
  "sha256:125ade809d11ffbed4da87ec62d570a3b28bb70eda54bb9b6d09657e7dfdead1" -> "sha256:2d1e202b0df2ce37659be35a0f73ffcab9b5fa90485e6e898948272805b9769c" [label=""];
  "sha256:2d1e202b0df2ce37659be35a0f73ffcab9b5fa90485e6e898948272805b9769c" -> "sha256:3b75b0a723d4a474a44db126c36cdfed81713500f4544eca1e3a59dd8327d318" [label=""];
  "sha256:125ade809d11ffbed4da87ec62d570a3b28bb70eda54bb9b6d09657e7dfdead1" -> "sha256:3b75b0a723d4a474a44db126c36cdfed81713500f4544eca1e3a59dd8327d318" [label=""];
  "sha256:3b75b0a723d4a474a44db126c36cdfed81713500f4544eca1e3a59dd8327d318" -> "sha256:6b4e58c3d6e2a85e3cec5958e58adfe53c1d010983cd81cd3c7a9e603389778c" [label=""];
  "sha256:6b4e58c3d6e2a85e3cec5958e58adfe53c1d010983cd81cd3c7a9e603389778c" -> "sha256:b0b0e45efced345fda1bb277f450b4688662bedf81d77fc0f558d68488732b6c" [label=""];
}

