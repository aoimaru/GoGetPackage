[app/sources/415036239.Dockerfile]
digraph {
  "sha256:adf0a7acf5850520df47f554129dad6577680c09b07e1476f49b0fe50a82ccd3" [label="local://context" shape="ellipse"];
  "sha256:33fff9ddd29d968eb17c16a38d80950dea6bd7d23d55c36a1ee562b4d2f9daad" [label="copy{src=/main, dest=/main}" shape="note"];
  "sha256:ea3dd20b18d897a31f4d89b5f5170982894e3b9517d99455e52d07324419058e" [label="sha256:ea3dd20b18d897a31f4d89b5f5170982894e3b9517d99455e52d07324419058e" shape="plaintext"];
  "sha256:adf0a7acf5850520df47f554129dad6577680c09b07e1476f49b0fe50a82ccd3" -> "sha256:33fff9ddd29d968eb17c16a38d80950dea6bd7d23d55c36a1ee562b4d2f9daad" [label=""];
  "sha256:33fff9ddd29d968eb17c16a38d80950dea6bd7d23d55c36a1ee562b4d2f9daad" -> "sha256:ea3dd20b18d897a31f4d89b5f5170982894e3b9517d99455e52d07324419058e" [label=""];
}

