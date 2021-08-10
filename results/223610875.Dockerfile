[app/sources/223610875.Dockerfile]
digraph {
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" [label="local://context" shape="ellipse"];
  "sha256:46987064754636e8b51180115895616b6076b15c488852887321a1f710b0a54e" [label="docker-image://docker.io/mdillon/postgis:9.5" shape="ellipse"];
  "sha256:b12f91a70268e157c6bec3ddcaf1196175fc6a7052b0a64306bf5ee4e06903b2" [label="/bin/sh -c mkdir /sql" shape="box"];
  "sha256:de32f6ef3f7d6bc86f22c1f5c8d95b0c591e13bb1a9f7b83c4c600bc326e8cde" [label="copy{src=/clearDB.sql, dest=/sql/}" shape="note"];
  "sha256:b41286fb1a642163135e311d06d5e7ef8d49931c69f128befaa4488db6b8016c" [label="copy{src=/create_database.sql, dest=/sql/}" shape="note"];
  "sha256:a0910f97fb758b724984b2958aebbf0a570fa6a5ad06b98a58329c40628e97d7" [label="copy{src=/create_tables.sql, dest=/sql/}" shape="note"];
  "sha256:013dff621b1e2423e2394baee7d2e62a80d6ac14af11c85156681d7fcbb5f089" [label="copy{src=/populate_static_data.sql, dest=/sql/}" shape="note"];
  "sha256:8ffc1a087f30188309d25b6252c01c2b72bfbdecf8730e0006ced0bde207eb1b" [label="copy{src=/dockerResources/z-init-db.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:37805dd4eeadf6252c5acae50356a3f1d26f1a4f40a3a3e9d28de253ee7cd6be" [label="sha256:37805dd4eeadf6252c5acae50356a3f1d26f1a4f40a3a3e9d28de253ee7cd6be" shape="plaintext"];
  "sha256:46987064754636e8b51180115895616b6076b15c488852887321a1f710b0a54e" -> "sha256:b12f91a70268e157c6bec3ddcaf1196175fc6a7052b0a64306bf5ee4e06903b2" [label=""];
  "sha256:b12f91a70268e157c6bec3ddcaf1196175fc6a7052b0a64306bf5ee4e06903b2" -> "sha256:de32f6ef3f7d6bc86f22c1f5c8d95b0c591e13bb1a9f7b83c4c600bc326e8cde" [label=""];
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" -> "sha256:de32f6ef3f7d6bc86f22c1f5c8d95b0c591e13bb1a9f7b83c4c600bc326e8cde" [label=""];
  "sha256:de32f6ef3f7d6bc86f22c1f5c8d95b0c591e13bb1a9f7b83c4c600bc326e8cde" -> "sha256:b41286fb1a642163135e311d06d5e7ef8d49931c69f128befaa4488db6b8016c" [label=""];
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" -> "sha256:b41286fb1a642163135e311d06d5e7ef8d49931c69f128befaa4488db6b8016c" [label=""];
  "sha256:b41286fb1a642163135e311d06d5e7ef8d49931c69f128befaa4488db6b8016c" -> "sha256:a0910f97fb758b724984b2958aebbf0a570fa6a5ad06b98a58329c40628e97d7" [label=""];
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" -> "sha256:a0910f97fb758b724984b2958aebbf0a570fa6a5ad06b98a58329c40628e97d7" [label=""];
  "sha256:a0910f97fb758b724984b2958aebbf0a570fa6a5ad06b98a58329c40628e97d7" -> "sha256:013dff621b1e2423e2394baee7d2e62a80d6ac14af11c85156681d7fcbb5f089" [label=""];
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" -> "sha256:013dff621b1e2423e2394baee7d2e62a80d6ac14af11c85156681d7fcbb5f089" [label=""];
  "sha256:013dff621b1e2423e2394baee7d2e62a80d6ac14af11c85156681d7fcbb5f089" -> "sha256:8ffc1a087f30188309d25b6252c01c2b72bfbdecf8730e0006ced0bde207eb1b" [label=""];
  "sha256:3bfb03bada21adf3333300451f030823407721cf43a7a48938984abd800f7e89" -> "sha256:8ffc1a087f30188309d25b6252c01c2b72bfbdecf8730e0006ced0bde207eb1b" [label=""];
  "sha256:8ffc1a087f30188309d25b6252c01c2b72bfbdecf8730e0006ced0bde207eb1b" -> "sha256:37805dd4eeadf6252c5acae50356a3f1d26f1a4f40a3a3e9d28de253ee7cd6be" [label=""];
}

