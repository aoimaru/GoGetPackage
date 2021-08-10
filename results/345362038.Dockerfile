[app/sources/345362038.Dockerfile]
digraph {
  "sha256:1e3f244be8e2f102e2158f4b0d2af131397d784ed2e428ebc871d0c8b1ea8aca" [label="docker-image://docker.io/balenalib/armv7hf-alpine:edge-build@sha256:6ec25110b466041c67171f6d5aa9882c6d70fbe21110281ca2bc0792dd2d05bc" shape="ellipse"];
  "sha256:db8849639e3c94c088d2fa1876379d9e106064c9d0d6a01800499daa0a69ac9e" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c1ea793c0b18873b63f77ddd3f9f8ba449c470a01be9112d68a6b8b41b7e7d26" [label="sha256:c1ea793c0b18873b63f77ddd3f9f8ba449c470a01be9112d68a6b8b41b7e7d26" shape="plaintext"];
  "sha256:1e3f244be8e2f102e2158f4b0d2af131397d784ed2e428ebc871d0c8b1ea8aca" -> "sha256:db8849639e3c94c088d2fa1876379d9e106064c9d0d6a01800499daa0a69ac9e" [label=""];
  "sha256:db8849639e3c94c088d2fa1876379d9e106064c9d0d6a01800499daa0a69ac9e" -> "sha256:c1ea793c0b18873b63f77ddd3f9f8ba449c470a01be9112d68a6b8b41b7e7d26" [label=""];
}

