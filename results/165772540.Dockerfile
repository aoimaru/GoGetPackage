[app/sources/165772540.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:afb96a90740a772f7236a15568642c2bc8d12617ae6f513c2d4c6cc0ed08f957" [label="/bin/sh -c apk --no-cache add \tca-certificates \tpython \tpy2-pip \t&& pip install dcoscli" shape="box"];
  "sha256:867ace7b51f9478699576d4f1232d04ef1a0bed4229ccda010739f55623f8b0e" [label="/bin/sh -c echo 'export PATH=$PATH:/dcos/bin;' >> ~/.bashrc" shape="box"];
  "sha256:054cd796b5c108bea6e977b2a6306c65157c131aa3657d9418f5c88374223680" [label="sha256:054cd796b5c108bea6e977b2a6306c65157c131aa3657d9418f5c88374223680" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:afb96a90740a772f7236a15568642c2bc8d12617ae6f513c2d4c6cc0ed08f957" [label=""];
  "sha256:afb96a90740a772f7236a15568642c2bc8d12617ae6f513c2d4c6cc0ed08f957" -> "sha256:867ace7b51f9478699576d4f1232d04ef1a0bed4229ccda010739f55623f8b0e" [label=""];
  "sha256:867ace7b51f9478699576d4f1232d04ef1a0bed4229ccda010739f55623f8b0e" -> "sha256:054cd796b5c108bea6e977b2a6306c65157c131aa3657d9418f5c88374223680" [label=""];
}

