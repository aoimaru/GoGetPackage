[app/sources/456306387.Dockerfile]
digraph {
  "sha256:e1bc52c5fdaf8aa58950605de1c8782540a63fcfb03bf8231707f24e5af64088" [label="local://context" shape="ellipse"];
  "sha256:d17c0eb6535245ccd2973627c1f7be68eaf6b772e4f3147e9e83ca956a5c5fe1" [label="copy{src=/bin/kredis-test, dest=/bin/kredis-test}" shape="note"];
  "sha256:8a7afab10e6fda81444b5e72eeb865d342cd8938a761dec8181b8b5201b866cc" [label="sha256:8a7afab10e6fda81444b5e72eeb865d342cd8938a761dec8181b8b5201b866cc" shape="plaintext"];
  "sha256:e1bc52c5fdaf8aa58950605de1c8782540a63fcfb03bf8231707f24e5af64088" -> "sha256:d17c0eb6535245ccd2973627c1f7be68eaf6b772e4f3147e9e83ca956a5c5fe1" [label=""];
  "sha256:d17c0eb6535245ccd2973627c1f7be68eaf6b772e4f3147e9e83ca956a5c5fe1" -> "sha256:8a7afab10e6fda81444b5e72eeb865d342cd8938a761dec8181b8b5201b866cc" [label=""];
}

