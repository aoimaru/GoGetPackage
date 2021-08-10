[app/sources/465261006.Dockerfile]
digraph {
  "sha256:6c294f1595d1094549c0cae01da0c8140376388aca9617020ddcdcd345b52eb4" [label="local://context" shape="ellipse"];
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" [label="docker-image://docker.io/library/nginx:1.11" shape="ellipse"];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label="/bin/sh -c apt-get update \t&& apt-get install -y \t\tcurl \t\t--no-install-recommends \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc" shape="box"];
  "sha256:6da931ead4b5d92e8654c288409657520f2619f03f530ba12e022fc139f54ad7" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:78e5e64b481406380170bf4af8fc305feaa59f347b5d038cf79e86883392a40d" [label="sha256:78e5e64b481406380170bf4af8fc305feaa59f347b5d038cf79e86883392a40d" shape="plaintext"];
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" -> "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label=""];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" -> "sha256:6da931ead4b5d92e8654c288409657520f2619f03f530ba12e022fc139f54ad7" [label=""];
  "sha256:6c294f1595d1094549c0cae01da0c8140376388aca9617020ddcdcd345b52eb4" -> "sha256:6da931ead4b5d92e8654c288409657520f2619f03f530ba12e022fc139f54ad7" [label=""];
  "sha256:6da931ead4b5d92e8654c288409657520f2619f03f530ba12e022fc139f54ad7" -> "sha256:78e5e64b481406380170bf4af8fc305feaa59f347b5d038cf79e86883392a40d" [label=""];
}

