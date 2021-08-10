[app/sources/212759203.Dockerfile]
digraph {
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" [label="local://context" shape="ellipse"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:d6994d250335f4e1ed528cdad97f1ad5d8352d3ca534ead22927e189d9859fb6" [label="/bin/sh -c mkdir -p /usr/src/app/config" shape="box"];
  "sha256:82d0c1803f7758e2a7e7a475daf24fa341e7a33a5ab3d8bf5d2529d3692173f7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2e7059b7156a9368b3ceeb185456cfcfaa952f7e90d61c3a9cab6f9bc6570f07" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:ab8cd72946c4e2a94be88b8eee0429e27045a1fa980843309b1b78fedfa85631" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:40dc5374f2942094c6eab07f9a55f20e16a4b9dd0303b4149d54b03d1b2ec09f" [label="/bin/sh -c npm install" shape="box"];
  "sha256:07158881b6824e7c7f5028536c0c8ecc55b38ed481a75995f3db4311a80680e9" [label="copy{src=/client, dest=/usr/src/app/client}" shape="note"];
  "sha256:83a2d8e8aea3736304a875f4ea4a2d07a24a3dca9c048e9ad721064dcd840123" [label="copy{src=/process.json, dest=/usr/src/app/}" shape="note"];
  "sha256:71dd9984cce7c886d54e3e4336239c42b0ced4697541b39d0823cf92b4aa0e01" [label="copy{src=/config, dest=/usr/src/app/config}" shape="note"];
  "sha256:96ea3158e70b230ab0c4f6e413180caf847ffa12f62e6eda05de9e2cbb39f709" [label="copy{src=/common-util, dest=/usr/src/app/common-util}" shape="note"];
  "sha256:51750fc65eaa1ff1192f68f8a4c626f82805903bff8a1a6216103009834bfd31" [label="copy{src=/gateway-service, dest=/usr/src/app/gateway-service}" shape="note"];
  "sha256:7e3ec021b28223fcc40580258b3b21879fb38f863358d6350f05479aae6784d7" [label="sha256:7e3ec021b28223fcc40580258b3b21879fb38f863358d6350f05479aae6784d7" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label=""];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" -> "sha256:d6994d250335f4e1ed528cdad97f1ad5d8352d3ca534ead22927e189d9859fb6" [label=""];
  "sha256:d6994d250335f4e1ed528cdad97f1ad5d8352d3ca534ead22927e189d9859fb6" -> "sha256:82d0c1803f7758e2a7e7a475daf24fa341e7a33a5ab3d8bf5d2529d3692173f7" [label=""];
  "sha256:82d0c1803f7758e2a7e7a475daf24fa341e7a33a5ab3d8bf5d2529d3692173f7" -> "sha256:2e7059b7156a9368b3ceeb185456cfcfaa952f7e90d61c3a9cab6f9bc6570f07" [label=""];
  "sha256:2e7059b7156a9368b3ceeb185456cfcfaa952f7e90d61c3a9cab6f9bc6570f07" -> "sha256:ab8cd72946c4e2a94be88b8eee0429e27045a1fa980843309b1b78fedfa85631" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:ab8cd72946c4e2a94be88b8eee0429e27045a1fa980843309b1b78fedfa85631" [label=""];
  "sha256:ab8cd72946c4e2a94be88b8eee0429e27045a1fa980843309b1b78fedfa85631" -> "sha256:40dc5374f2942094c6eab07f9a55f20e16a4b9dd0303b4149d54b03d1b2ec09f" [label=""];
  "sha256:40dc5374f2942094c6eab07f9a55f20e16a4b9dd0303b4149d54b03d1b2ec09f" -> "sha256:07158881b6824e7c7f5028536c0c8ecc55b38ed481a75995f3db4311a80680e9" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:07158881b6824e7c7f5028536c0c8ecc55b38ed481a75995f3db4311a80680e9" [label=""];
  "sha256:07158881b6824e7c7f5028536c0c8ecc55b38ed481a75995f3db4311a80680e9" -> "sha256:83a2d8e8aea3736304a875f4ea4a2d07a24a3dca9c048e9ad721064dcd840123" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:83a2d8e8aea3736304a875f4ea4a2d07a24a3dca9c048e9ad721064dcd840123" [label=""];
  "sha256:83a2d8e8aea3736304a875f4ea4a2d07a24a3dca9c048e9ad721064dcd840123" -> "sha256:71dd9984cce7c886d54e3e4336239c42b0ced4697541b39d0823cf92b4aa0e01" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:71dd9984cce7c886d54e3e4336239c42b0ced4697541b39d0823cf92b4aa0e01" [label=""];
  "sha256:71dd9984cce7c886d54e3e4336239c42b0ced4697541b39d0823cf92b4aa0e01" -> "sha256:96ea3158e70b230ab0c4f6e413180caf847ffa12f62e6eda05de9e2cbb39f709" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:96ea3158e70b230ab0c4f6e413180caf847ffa12f62e6eda05de9e2cbb39f709" [label=""];
  "sha256:96ea3158e70b230ab0c4f6e413180caf847ffa12f62e6eda05de9e2cbb39f709" -> "sha256:51750fc65eaa1ff1192f68f8a4c626f82805903bff8a1a6216103009834bfd31" [label=""];
  "sha256:dd44cae0eb4b21dc7873e1f23dff79563217faf8c795bd4f63e1b80550514a17" -> "sha256:51750fc65eaa1ff1192f68f8a4c626f82805903bff8a1a6216103009834bfd31" [label=""];
  "sha256:51750fc65eaa1ff1192f68f8a4c626f82805903bff8a1a6216103009834bfd31" -> "sha256:7e3ec021b28223fcc40580258b3b21879fb38f863358d6350f05479aae6784d7" [label=""];
}

