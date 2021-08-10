[app/sources/477608446.Dockerfile]
digraph {
  "sha256:585f03cb73eed8c84b96c9be073860fb5746a00e690aea70da0f4abcdd8c478c" [label="docker-image://hub.opshub.sh/containerops/php:latest" shape="ellipse"];
  "sha256:b8e7df7557255949cf89688124fcabd888846eecf4a13373bda2c1c848066122" [label="/bin/sh -c composer global require \"phploc/phploc\"" shape="box"];
  "sha256:a768d33a2578e075363cf5c744f886c4e60896efbf1eb09f93425ada7e9ac7c1" [label="/bin/sh -c mkdir -p /root/src" shape="box"];
  "sha256:65997d443fe101496386844c6485425eca5a8c34a0068436f9a6cf8a1ded3c49" [label="local://context" shape="ellipse"];
  "sha256:dd10b3d0816c76f237ef9720f0e86db46ce61e21e4daf3635ec54784f139bafa" [label="copy{src=/, dest=/root/src}" shape="note"];
  "sha256:579082a5031a6a4b6045ce910ef75480d2598b6b04cfc41ef076de2131706103" [label="mkdir{path=/root/src}" shape="note"];
  "sha256:e7aa35377f808012e9a18e0383b85d91d2848c8f2f9010a81dc9bcf2113aa064" [label="sha256:e7aa35377f808012e9a18e0383b85d91d2848c8f2f9010a81dc9bcf2113aa064" shape="plaintext"];
  "sha256:585f03cb73eed8c84b96c9be073860fb5746a00e690aea70da0f4abcdd8c478c" -> "sha256:b8e7df7557255949cf89688124fcabd888846eecf4a13373bda2c1c848066122" [label=""];
  "sha256:b8e7df7557255949cf89688124fcabd888846eecf4a13373bda2c1c848066122" -> "sha256:a768d33a2578e075363cf5c744f886c4e60896efbf1eb09f93425ada7e9ac7c1" [label=""];
  "sha256:a768d33a2578e075363cf5c744f886c4e60896efbf1eb09f93425ada7e9ac7c1" -> "sha256:dd10b3d0816c76f237ef9720f0e86db46ce61e21e4daf3635ec54784f139bafa" [label=""];
  "sha256:65997d443fe101496386844c6485425eca5a8c34a0068436f9a6cf8a1ded3c49" -> "sha256:dd10b3d0816c76f237ef9720f0e86db46ce61e21e4daf3635ec54784f139bafa" [label=""];
  "sha256:dd10b3d0816c76f237ef9720f0e86db46ce61e21e4daf3635ec54784f139bafa" -> "sha256:579082a5031a6a4b6045ce910ef75480d2598b6b04cfc41ef076de2131706103" [label=""];
  "sha256:579082a5031a6a4b6045ce910ef75480d2598b6b04cfc41ef076de2131706103" -> "sha256:e7aa35377f808012e9a18e0383b85d91d2848c8f2f9010a81dc9bcf2113aa064" [label=""];
}

