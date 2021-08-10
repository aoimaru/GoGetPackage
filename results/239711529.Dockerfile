[app/sources/239711529.Dockerfile]
digraph {
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" [label="docker-image://docker.io/egovio/flyway:4.1.2" shape="ellipse"];
  "sha256:5c8093083054958904f11f8e4e0d415dc3d8a5a6210296cef2b8ee91692fcd46" [label="local://context" shape="ellipse"];
  "sha256:ba9150b00a55571d218c2ec0cdcbbfbc01b2591204c05a04f8c823ce3212bb63" [label="copy{src=/migration/main, dest=/flyway/sql}" shape="note"];
  "sha256:f56c2ccd7e31f9e9d00bba705fa742ad78c2fcc74d959f72edc1cb744bc236d8" [label="copy{src=/migrate.sh, dest=/usr/bin/migrate.sh}" shape="note"];
  "sha256:6bb0bb8b965db2fe00ba3e60ff8f17c11e486d0493a5f9af0f6a29fac4fadd6e" [label="/bin/sh -c chmod +x /usr/bin/migrate.sh" shape="box"];
  "sha256:4341198798f3e37524fbc5aeb8f4c84174e662471cad93a6b90c7b930735950a" [label="sha256:4341198798f3e37524fbc5aeb8f4c84174e662471cad93a6b90c7b930735950a" shape="plaintext"];
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" -> "sha256:ba9150b00a55571d218c2ec0cdcbbfbc01b2591204c05a04f8c823ce3212bb63" [label=""];
  "sha256:5c8093083054958904f11f8e4e0d415dc3d8a5a6210296cef2b8ee91692fcd46" -> "sha256:ba9150b00a55571d218c2ec0cdcbbfbc01b2591204c05a04f8c823ce3212bb63" [label=""];
  "sha256:ba9150b00a55571d218c2ec0cdcbbfbc01b2591204c05a04f8c823ce3212bb63" -> "sha256:f56c2ccd7e31f9e9d00bba705fa742ad78c2fcc74d959f72edc1cb744bc236d8" [label=""];
  "sha256:5c8093083054958904f11f8e4e0d415dc3d8a5a6210296cef2b8ee91692fcd46" -> "sha256:f56c2ccd7e31f9e9d00bba705fa742ad78c2fcc74d959f72edc1cb744bc236d8" [label=""];
  "sha256:f56c2ccd7e31f9e9d00bba705fa742ad78c2fcc74d959f72edc1cb744bc236d8" -> "sha256:6bb0bb8b965db2fe00ba3e60ff8f17c11e486d0493a5f9af0f6a29fac4fadd6e" [label=""];
  "sha256:6bb0bb8b965db2fe00ba3e60ff8f17c11e486d0493a5f9af0f6a29fac4fadd6e" -> "sha256:4341198798f3e37524fbc5aeb8f4c84174e662471cad93a6b90c7b930735950a" [label=""];
}

