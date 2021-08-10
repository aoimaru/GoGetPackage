[app/sources/252790137.Dockerfile]
digraph {
  "sha256:f6fb5401aa5e31e1f83651aff2bb2762b258b3018e0a8ccb3b025a42808e56be" [label="docker-image://docker.io/library/php:7-fpm" shape="ellipse"];
  "sha256:9a9fa41c48d69306832b369c8fd333c60539d94ac79d55a8786ca095742feb07" [label="/bin/sh -c mkdir -p /usr/local/bin" shape="box"];
  "sha256:471573b05c106eb6659c59bf0b82ec3cfaff4a4d0b8a935a8a2151dcab1bff6b" [label="/bin/sh -c apt-get update && apt-get install -y -q mariadb-client supervisor" shape="box"];
  "sha256:aa94c141084206a5cc54edca9c4dae066b3d04089e8748082bd16169b6cee1a3" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql mysqli" shape="box"];
  "sha256:a17a74bca3de13e64fb96ef19f5f4c17289f7a9062cde5774a2240dd5781e7fd" [label="/bin/sh -c curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony" shape="box"];
  "sha256:cf8e68bb6be91782ae56cc4901d66bf3c1d11431d8bdd55e9d890ad5522ed2e4" [label="/bin/sh -c chmod a+x /usr/local/bin/symfony" shape="box"];
  "sha256:cdc0e64980425d6812328b689cbfdcaa36f2a01acbd90e95cf081320cec00625" [label="local://context" shape="ellipse"];
  "sha256:4adc8da47e4388647b6540cc0e79d8941d12755f8ab005ebe4b33d307d44b817" [label="copy{src=/appli, dest=/var/www/html}" shape="note"];
  "sha256:1e98e15bcb8ae995b3eb18dc71eee516a5eccf831a9ce0fe842d468764d09ea1" [label="sha256:1e98e15bcb8ae995b3eb18dc71eee516a5eccf831a9ce0fe842d468764d09ea1" shape="plaintext"];
  "sha256:f6fb5401aa5e31e1f83651aff2bb2762b258b3018e0a8ccb3b025a42808e56be" -> "sha256:9a9fa41c48d69306832b369c8fd333c60539d94ac79d55a8786ca095742feb07" [label=""];
  "sha256:9a9fa41c48d69306832b369c8fd333c60539d94ac79d55a8786ca095742feb07" -> "sha256:471573b05c106eb6659c59bf0b82ec3cfaff4a4d0b8a935a8a2151dcab1bff6b" [label=""];
  "sha256:471573b05c106eb6659c59bf0b82ec3cfaff4a4d0b8a935a8a2151dcab1bff6b" -> "sha256:aa94c141084206a5cc54edca9c4dae066b3d04089e8748082bd16169b6cee1a3" [label=""];
  "sha256:aa94c141084206a5cc54edca9c4dae066b3d04089e8748082bd16169b6cee1a3" -> "sha256:a17a74bca3de13e64fb96ef19f5f4c17289f7a9062cde5774a2240dd5781e7fd" [label=""];
  "sha256:a17a74bca3de13e64fb96ef19f5f4c17289f7a9062cde5774a2240dd5781e7fd" -> "sha256:cf8e68bb6be91782ae56cc4901d66bf3c1d11431d8bdd55e9d890ad5522ed2e4" [label=""];
  "sha256:cf8e68bb6be91782ae56cc4901d66bf3c1d11431d8bdd55e9d890ad5522ed2e4" -> "sha256:4adc8da47e4388647b6540cc0e79d8941d12755f8ab005ebe4b33d307d44b817" [label=""];
  "sha256:cdc0e64980425d6812328b689cbfdcaa36f2a01acbd90e95cf081320cec00625" -> "sha256:4adc8da47e4388647b6540cc0e79d8941d12755f8ab005ebe4b33d307d44b817" [label=""];
  "sha256:4adc8da47e4388647b6540cc0e79d8941d12755f8ab005ebe4b33d307d44b817" -> "sha256:1e98e15bcb8ae995b3eb18dc71eee516a5eccf831a9ce0fe842d468764d09ea1" [label=""];
}

