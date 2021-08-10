[app/sources/301280628.Dockerfile]
digraph {
  "sha256:4e77ddd662e754e0a4ce8c8aed635dd7614cee9f8a3d0f6a01cf3c6ee0b577ca" [label="docker-image://docker.io/cypress/base:12.1.0" shape="ellipse"];
  "sha256:f42d07233aac4f45b51b357c3cdc2effb5b37474c83cd79bbe8ab0787a5525a3" [label="/bin/sh -c echo \"whoami: $(whoami)\"" shape="box"];
  "sha256:c1dca647f1ef2d70dbbd592bf4dd53abbb91247299dcea2955cf73ed14f6570e" [label="/bin/sh -c npm config -g set user $(whoami)" shape="box"];
  "sha256:ed92f0591dcdcc86fc3f42c7a5a68aba6394699f018f734799a119b0e7aa34a1" [label="/bin/sh -c npm install -g \"cypress@${CYPRESS_VERSION}\"" shape="box"];
  "sha256:1a3c07a53e82e75a5c98818a196b3c1b1e4c8f74643163e4a84b2c0c0e35b56f" [label="/bin/sh -c cypress verify" shape="box"];
  "sha256:2b6255aa965a1f701a6fc1b0fe6393a4862a2bdf71c105bf812d4e8aaf13e0e6" [label="/bin/sh -c cypress cache path" shape="box"];
  "sha256:2106d4046e7997d2848a5085f548266d011f8085fcb020487248de2a981ccaea" [label="/bin/sh -c cypress cache list" shape="box"];
  "sha256:d8a372492b3416c50142cdbfe7d81813cbcf707251da655747b17574ce7e7b1c" [label="/bin/sh -c echo  \" node version:    $(node -v) \\n\"   \"npm version:     $(npm -v) \\n\"   \"yarn version:    $(yarn -v) \\n\"   \"debian version:  $(cat /etc/debian_version) \\n\"   \"user:            $(whoami) \\n\"" shape="box"];
  "sha256:c3e8a5d020f6821081173eb25ce064d102cb8ef693dd406a12022f80c0acaa98" [label="sha256:c3e8a5d020f6821081173eb25ce064d102cb8ef693dd406a12022f80c0acaa98" shape="plaintext"];
  "sha256:4e77ddd662e754e0a4ce8c8aed635dd7614cee9f8a3d0f6a01cf3c6ee0b577ca" -> "sha256:f42d07233aac4f45b51b357c3cdc2effb5b37474c83cd79bbe8ab0787a5525a3" [label=""];
  "sha256:f42d07233aac4f45b51b357c3cdc2effb5b37474c83cd79bbe8ab0787a5525a3" -> "sha256:c1dca647f1ef2d70dbbd592bf4dd53abbb91247299dcea2955cf73ed14f6570e" [label=""];
  "sha256:c1dca647f1ef2d70dbbd592bf4dd53abbb91247299dcea2955cf73ed14f6570e" -> "sha256:ed92f0591dcdcc86fc3f42c7a5a68aba6394699f018f734799a119b0e7aa34a1" [label=""];
  "sha256:ed92f0591dcdcc86fc3f42c7a5a68aba6394699f018f734799a119b0e7aa34a1" -> "sha256:1a3c07a53e82e75a5c98818a196b3c1b1e4c8f74643163e4a84b2c0c0e35b56f" [label=""];
  "sha256:1a3c07a53e82e75a5c98818a196b3c1b1e4c8f74643163e4a84b2c0c0e35b56f" -> "sha256:2b6255aa965a1f701a6fc1b0fe6393a4862a2bdf71c105bf812d4e8aaf13e0e6" [label=""];
  "sha256:2b6255aa965a1f701a6fc1b0fe6393a4862a2bdf71c105bf812d4e8aaf13e0e6" -> "sha256:2106d4046e7997d2848a5085f548266d011f8085fcb020487248de2a981ccaea" [label=""];
  "sha256:2106d4046e7997d2848a5085f548266d011f8085fcb020487248de2a981ccaea" -> "sha256:d8a372492b3416c50142cdbfe7d81813cbcf707251da655747b17574ce7e7b1c" [label=""];
  "sha256:d8a372492b3416c50142cdbfe7d81813cbcf707251da655747b17574ce7e7b1c" -> "sha256:c3e8a5d020f6821081173eb25ce064d102cb8ef693dd406a12022f80c0acaa98" [label=""];
}

