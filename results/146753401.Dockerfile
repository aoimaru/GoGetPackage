[app/sources/146753401.Dockerfile]
digraph {
  "sha256:97c06602b7704a33f4cfe8722c3cf5476a00478d91bad44271a09479336d2d15" [label="docker-image://docker.io/sample/apache-php:dev" shape="ellipse"];
  "sha256:b2e075ca24e1040c37f4850d7fe8350c2452990947ea2993df6f39420ee5272f" [label="/bin/sh -c rm -rf /var/www" shape="box"];
  "sha256:e927247b7dea8bebfb4e3ca3f0fbd94b8a6b65c1bc2793208c38178c7608f4f7" [label="/bin/sh -c ln -s /srv/application/web /var/www" shape="box"];
  "sha256:7278970c2aa3aac63701e06f1421ee50589fb9958ad3e893664c6cb8dfd6f670" [label="sha256:7278970c2aa3aac63701e06f1421ee50589fb9958ad3e893664c6cb8dfd6f670" shape="plaintext"];
  "sha256:97c06602b7704a33f4cfe8722c3cf5476a00478d91bad44271a09479336d2d15" -> "sha256:b2e075ca24e1040c37f4850d7fe8350c2452990947ea2993df6f39420ee5272f" [label=""];
  "sha256:b2e075ca24e1040c37f4850d7fe8350c2452990947ea2993df6f39420ee5272f" -> "sha256:e927247b7dea8bebfb4e3ca3f0fbd94b8a6b65c1bc2793208c38178c7608f4f7" [label=""];
  "sha256:e927247b7dea8bebfb4e3ca3f0fbd94b8a6b65c1bc2793208c38178c7608f4f7" -> "sha256:7278970c2aa3aac63701e06f1421ee50589fb9958ad3e893664c6cb8dfd6f670" [label=""];
}

