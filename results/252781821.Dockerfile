[app/sources/252781821.Dockerfile]
digraph {
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" [label="docker-image://docker.io/library/httpd:2.4" shape="ellipse"];
  "sha256:158f2ce2a020da46df1569db472de3e3eb4ee92ebaea2c50b2ec9f784ad99750" [label="local://context" shape="ellipse"];
  "sha256:347bda3d1ef05c3d0b74faac28279201885b24f0415bd76d44a77fe7a254144c" [label="copy{src=/index.html, dest=/usr/local/apache2/htdocs/}" shape="note"];
  "sha256:662c29ac76447230db409d09d8b9dbb728cbfb5e0b076c65b71f9788a2629ee0" [label="sha256:662c29ac76447230db409d09d8b9dbb728cbfb5e0b076c65b71f9788a2629ee0" shape="plaintext"];
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" -> "sha256:347bda3d1ef05c3d0b74faac28279201885b24f0415bd76d44a77fe7a254144c" [label=""];
  "sha256:158f2ce2a020da46df1569db472de3e3eb4ee92ebaea2c50b2ec9f784ad99750" -> "sha256:347bda3d1ef05c3d0b74faac28279201885b24f0415bd76d44a77fe7a254144c" [label=""];
  "sha256:347bda3d1ef05c3d0b74faac28279201885b24f0415bd76d44a77fe7a254144c" -> "sha256:662c29ac76447230db409d09d8b9dbb728cbfb5e0b076c65b71f9788a2629ee0" [label=""];
}

