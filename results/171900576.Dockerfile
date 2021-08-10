[app/sources/171900576.Dockerfile]
digraph {
  "sha256:53e3756945ba306bd7a0f8397df4d161f9981793496aaaeb040c2d6d2d39eca2" [label="docker-image://docker.io/imazen/imageflow_base_os:latest" shape="ellipse"];
  "sha256:553be41e66de14cdcc8eb3a1e10afdb1cde4bf86ef3607d9f714e6951b5a2ad0" [label="/bin/sh -c if [ -z \"${SOURCE_COMMIT}\" ]; then echo \"SOURCE_COMMIT not set; exiting\" && exit 1; else echo \"SOURCE_COMMIT=${SOURCE_COMMIT}\"; fi" shape="box"];
  "sha256:7e790f9660b3d204c752fba020c9fd9b7b807198cf1cbae304f34c0b22a66819" [label="/bin/sh -c mkdir nightly && cd nightly && wget -nv -O ifs.tar.gz https://s3-us-west-1.amazonaws.com/imageflow-nightlies/commits/${SOURCE_COMMIT}/linux64_glibc227.tar.gz     && tar xvzf ifs.tar.gz && mv ./imageflow_server ../ && cd .. && rm -rf nightly" shape="box"];
  "sha256:a84064ce21dcf2e11214e445efc37ed83eb03e48e8a5438847e214176207e783" [label="sha256:a84064ce21dcf2e11214e445efc37ed83eb03e48e8a5438847e214176207e783" shape="plaintext"];
  "sha256:53e3756945ba306bd7a0f8397df4d161f9981793496aaaeb040c2d6d2d39eca2" -> "sha256:553be41e66de14cdcc8eb3a1e10afdb1cde4bf86ef3607d9f714e6951b5a2ad0" [label=""];
  "sha256:553be41e66de14cdcc8eb3a1e10afdb1cde4bf86ef3607d9f714e6951b5a2ad0" -> "sha256:7e790f9660b3d204c752fba020c9fd9b7b807198cf1cbae304f34c0b22a66819" [label=""];
  "sha256:7e790f9660b3d204c752fba020c9fd9b7b807198cf1cbae304f34c0b22a66819" -> "sha256:a84064ce21dcf2e11214e445efc37ed83eb03e48e8a5438847e214176207e783" [label=""];
}

