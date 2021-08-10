[app/sources/281086992.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:2c9692452b5bdc106c03af9a464b75879e625f57397dec25574c335e7d0077e5" [label="local://context" shape="ellipse"];
  "sha256:74bd92a18fd58b29e42f65d28b521af9820ea00f1df5c53a12bc3d427e3443c6" [label="copy{src=/target/elasticsearch-migration-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:5b87ab72a035e93a8428679c29bd52bc57d0e9cd037c35b568cbae3bb98650bc" [label="sha256:5b87ab72a035e93a8428679c29bd52bc57d0e9cd037c35b568cbae3bb98650bc" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:74bd92a18fd58b29e42f65d28b521af9820ea00f1df5c53a12bc3d427e3443c6" [label=""];
  "sha256:2c9692452b5bdc106c03af9a464b75879e625f57397dec25574c335e7d0077e5" -> "sha256:74bd92a18fd58b29e42f65d28b521af9820ea00f1df5c53a12bc3d427e3443c6" [label=""];
  "sha256:74bd92a18fd58b29e42f65d28b521af9820ea00f1df5c53a12bc3d427e3443c6" -> "sha256:5b87ab72a035e93a8428679c29bd52bc57d0e9cd037c35b568cbae3bb98650bc" [label=""];
}

