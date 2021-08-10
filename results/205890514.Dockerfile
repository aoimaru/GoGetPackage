[app/sources/205890514.Dockerfile]
digraph {
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" [label="docker-image://docker.io/library/java:alpine" shape="ellipse"];
  "sha256:a0608259c3fd6dea8cb03a5d1e8c275a2a862097c98b06d6f89aa611e61d0765" [label="local://context" shape="ellipse"];
  "sha256:2279741835d0de52cf7ae9f0513b56ce835303d7371e06d0e6366c9a44728f6a" [label="copy{src=/run.jar, dest=/usr/vertx/run.jar}" shape="note"];
  "sha256:c587eab33d3e70d23c7d32b02f34b28f11b3e85a0659ab432853adb989ee638a" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5271c6a2f4de03f2b9189fab1ff4214125ef9ffac62c742b5710bd9b3c7debff" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:63c225d05f20a05cbc6862d85a2ec569133145a059535ade2ba9ef4002bcb84a" [label="sha256:63c225d05f20a05cbc6862d85a2ec569133145a059535ade2ba9ef4002bcb84a" shape="plaintext"];
  "sha256:b03f214267b4e79befa6fe394c7d27496b574d051f3745f5e7a22b23621f51c9" -> "sha256:2279741835d0de52cf7ae9f0513b56ce835303d7371e06d0e6366c9a44728f6a" [label=""];
  "sha256:a0608259c3fd6dea8cb03a5d1e8c275a2a862097c98b06d6f89aa611e61d0765" -> "sha256:2279741835d0de52cf7ae9f0513b56ce835303d7371e06d0e6366c9a44728f6a" [label=""];
  "sha256:2279741835d0de52cf7ae9f0513b56ce835303d7371e06d0e6366c9a44728f6a" -> "sha256:c587eab33d3e70d23c7d32b02f34b28f11b3e85a0659ab432853adb989ee638a" [label=""];
  "sha256:c587eab33d3e70d23c7d32b02f34b28f11b3e85a0659ab432853adb989ee638a" -> "sha256:5271c6a2f4de03f2b9189fab1ff4214125ef9ffac62c742b5710bd9b3c7debff" [label=""];
  "sha256:5271c6a2f4de03f2b9189fab1ff4214125ef9ffac62c742b5710bd9b3c7debff" -> "sha256:63c225d05f20a05cbc6862d85a2ec569133145a059535ade2ba9ef4002bcb84a" [label=""];
}

