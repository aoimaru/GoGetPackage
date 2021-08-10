[app/sources/252771756.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:399ad07dadc1bf20917b03df520ffaff40d5792c1b9c14de9fa36ebe83104a9f" [label="/bin/sh -c apk add \\--update \\--no-cache python py-pip py-google-api-python-client py-openssl py-uritemplate libffi-dev py-cryptography py-enum34 py-cffi py-lockfile" shape="box"];
  "sha256:f4aed158afa82a93086ceda5808a19a213ed53f49e0f8e823ec6c59a9be5d50e" [label="/bin/sh -c pip install --upgrade oauth2client==2.0.2" shape="box"];
  "sha256:a00c1805edc4b3704d6f7ffc3e847f57ca2b41198468efb8ed86525c98eaa612" [label="sha256:a00c1805edc4b3704d6f7ffc3e847f57ca2b41198468efb8ed86525c98eaa612" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:399ad07dadc1bf20917b03df520ffaff40d5792c1b9c14de9fa36ebe83104a9f" [label=""];
  "sha256:399ad07dadc1bf20917b03df520ffaff40d5792c1b9c14de9fa36ebe83104a9f" -> "sha256:f4aed158afa82a93086ceda5808a19a213ed53f49e0f8e823ec6c59a9be5d50e" [label=""];
  "sha256:f4aed158afa82a93086ceda5808a19a213ed53f49e0f8e823ec6c59a9be5d50e" -> "sha256:a00c1805edc4b3704d6f7ffc3e847f57ca2b41198468efb8ed86525c98eaa612" [label=""];
}

