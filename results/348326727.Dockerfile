[app/sources/348326727.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:3aad09354c7339d2977e0200aa11b45f3c141b8cc915ac2d726d77997c039a48" [label="/bin/sh -c apk add curl" shape="box"];
  "sha256:6e24bc8574234cc577dc98111131fc1ad9c27330478db13b5cce11da03aa7584" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9edcec10573491a97dbabbed1b8653d066fb2060be36e1a85eb42a9872a295dd" [label="sha256:9edcec10573491a97dbabbed1b8653d066fb2060be36e1a85eb42a9872a295dd" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label=""];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" -> "sha256:3aad09354c7339d2977e0200aa11b45f3c141b8cc915ac2d726d77997c039a48" [label=""];
  "sha256:3aad09354c7339d2977e0200aa11b45f3c141b8cc915ac2d726d77997c039a48" -> "sha256:6e24bc8574234cc577dc98111131fc1ad9c27330478db13b5cce11da03aa7584" [label=""];
  "sha256:6e24bc8574234cc577dc98111131fc1ad9c27330478db13b5cce11da03aa7584" -> "sha256:9edcec10573491a97dbabbed1b8653d066fb2060be36e1a85eb42a9872a295dd" [label=""];
}

