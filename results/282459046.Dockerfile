[app/sources/282459046.Dockerfile]
digraph {
  "sha256:11afe3393b6146b7b6e5607b28e8c7c2d5ad21015fd8ccb9f7577ff46539e9cf" [label="docker-image://docker.io/library/mongo:4.0.5" shape="ellipse"];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" [label="local://context" shape="ellipse"];
  "sha256:cd2c6ca817eae19d22bce67a829587ae79ebc89bf65aaba7a8b987dfe99399f0" [label="copy{src=/replicaset.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:760c1ad88a9b28165e9efed4a05cfaddea51de44566927e1c7d839852251b892" [label="copy{src=/configdb.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:efe965bdea80033ce604bb60be0576fd31cb5e89ace84a7616515c3ad3e82212" [label="copy{src=/sharding.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:408aa1cc9a5d4ffa596efd2b3f97e156ac1ad42913925125e96c5b749580a7f9" [label="copy{src=/mongos.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:0cf347cdbf6870dc85472c43434453b012581ca08e0aa69bd2f07d11169ecc08" [label="copy{src=/peer-finder, dest=/usr/local/bin/}" shape="note"];
  "sha256:66551414615c93fb70889f9c19a68efe9cef25fea640c80a3c459832b01b55fc" [label="/bin/sh -c chmod -c 755 /usr/local/bin/peer-finder  /usr/local/bin/replicaset.sh  /usr/local/bin/configdb.sh  /usr/local/bin/sharding.sh  /usr/local/bin/mongos.sh" shape="box"];
  "sha256:06a00c82649e6a60eb809307f875cf2970c0aa9ed75d0a340c2c1c37fdd9cc47" [label="sha256:06a00c82649e6a60eb809307f875cf2970c0aa9ed75d0a340c2c1c37fdd9cc47" shape="plaintext"];
  "sha256:11afe3393b6146b7b6e5607b28e8c7c2d5ad21015fd8ccb9f7577ff46539e9cf" -> "sha256:cd2c6ca817eae19d22bce67a829587ae79ebc89bf65aaba7a8b987dfe99399f0" [label=""];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" -> "sha256:cd2c6ca817eae19d22bce67a829587ae79ebc89bf65aaba7a8b987dfe99399f0" [label=""];
  "sha256:cd2c6ca817eae19d22bce67a829587ae79ebc89bf65aaba7a8b987dfe99399f0" -> "sha256:760c1ad88a9b28165e9efed4a05cfaddea51de44566927e1c7d839852251b892" [label=""];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" -> "sha256:760c1ad88a9b28165e9efed4a05cfaddea51de44566927e1c7d839852251b892" [label=""];
  "sha256:760c1ad88a9b28165e9efed4a05cfaddea51de44566927e1c7d839852251b892" -> "sha256:efe965bdea80033ce604bb60be0576fd31cb5e89ace84a7616515c3ad3e82212" [label=""];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" -> "sha256:efe965bdea80033ce604bb60be0576fd31cb5e89ace84a7616515c3ad3e82212" [label=""];
  "sha256:efe965bdea80033ce604bb60be0576fd31cb5e89ace84a7616515c3ad3e82212" -> "sha256:408aa1cc9a5d4ffa596efd2b3f97e156ac1ad42913925125e96c5b749580a7f9" [label=""];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" -> "sha256:408aa1cc9a5d4ffa596efd2b3f97e156ac1ad42913925125e96c5b749580a7f9" [label=""];
  "sha256:408aa1cc9a5d4ffa596efd2b3f97e156ac1ad42913925125e96c5b749580a7f9" -> "sha256:0cf347cdbf6870dc85472c43434453b012581ca08e0aa69bd2f07d11169ecc08" [label=""];
  "sha256:9a59555bf1b92791849ce91a5b06d5d6f955540e5ce068ce3bf355cd1f510590" -> "sha256:0cf347cdbf6870dc85472c43434453b012581ca08e0aa69bd2f07d11169ecc08" [label=""];
  "sha256:0cf347cdbf6870dc85472c43434453b012581ca08e0aa69bd2f07d11169ecc08" -> "sha256:66551414615c93fb70889f9c19a68efe9cef25fea640c80a3c459832b01b55fc" [label=""];
  "sha256:66551414615c93fb70889f9c19a68efe9cef25fea640c80a3c459832b01b55fc" -> "sha256:06a00c82649e6a60eb809307f875cf2970c0aa9ed75d0a340c2c1c37fdd9cc47" [label=""];
}

