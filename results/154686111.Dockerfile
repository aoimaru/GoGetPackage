[app/sources/154686111.Dockerfile]
digraph {
  "sha256:6b292b96db33df83dd448e344ee4e3a112c6df08a27db5dcb7b7ffeebed50b45" [label="docker-image://docker.io/frekele/gradle:3.4-jdk8u91" shape="ellipse"];
  "sha256:b22e296a406c5c67b47b2d07bf5fd0ed482e805fcc5d9c8affbe9fd1b6241003" [label="mkdir{path=/project}" shape="note"];
  "sha256:21b0a064c4f06ee3666742b74f9243c9459b10bd85dee46743044507547b397a" [label="local://context" shape="ellipse"];
  "sha256:d504b07913cc843dfe9c2d1b063a06710662f32e97f3057902e0cab8737aadd8" [label="copy{src=/, dest=/project/}" shape="note"];
  "sha256:ea28566d301d97e5ab6c14111e914e4391ed2f5543e5c71205a758c27edd565c" [label="sha256:ea28566d301d97e5ab6c14111e914e4391ed2f5543e5c71205a758c27edd565c" shape="plaintext"];
  "sha256:6b292b96db33df83dd448e344ee4e3a112c6df08a27db5dcb7b7ffeebed50b45" -> "sha256:b22e296a406c5c67b47b2d07bf5fd0ed482e805fcc5d9c8affbe9fd1b6241003" [label=""];
  "sha256:b22e296a406c5c67b47b2d07bf5fd0ed482e805fcc5d9c8affbe9fd1b6241003" -> "sha256:d504b07913cc843dfe9c2d1b063a06710662f32e97f3057902e0cab8737aadd8" [label=""];
  "sha256:21b0a064c4f06ee3666742b74f9243c9459b10bd85dee46743044507547b397a" -> "sha256:d504b07913cc843dfe9c2d1b063a06710662f32e97f3057902e0cab8737aadd8" [label=""];
  "sha256:d504b07913cc843dfe9c2d1b063a06710662f32e97f3057902e0cab8737aadd8" -> "sha256:ea28566d301d97e5ab6c14111e914e4391ed2f5543e5c71205a758c27edd565c" [label=""];
}

