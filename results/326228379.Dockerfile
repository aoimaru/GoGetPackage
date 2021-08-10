[app/sources/326228379.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:ed778c992bb96df1b16344c61d2afff3449719ed005992bc8276484401e3c8f6" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" >     /etc/apt/sources.list.d/jessie-backports.list &&     apt-get update &&     apt-get install -y --no-install-recommends -t       jessie-backports       dos2unix       &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:75f4cb3f19bd989057e44b04fce3ba236c72f56d00ccb4d361317e59a64197d7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c0814aa9c7a5953c98ea13cdd4c991f230db6abed0a2b5afdc1cbc9116b14022" [label="local://context" shape="ellipse"];
  "sha256:22b7a577fb2f4f38bab3ae7e779a11184a0593f3916a419cbb88e7ca9169c17f" [label="copy{src=/copied_file/rest-server/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:ee10699a455dfb74adf449c54d04d7991a67f40f1489fe437f226078eebf4237" [label="/bin/sh -c npm install" shape="box"];
  "sha256:808b9301022db988be9713622ab4f8d2f39d385abdeef311beeca6ad90ad4c6d" [label="copy{src=/copied_file/rest-server, dest=/usr/src/app/}" shape="note"];
  "sha256:4cac944669b43e444b449fc16fc5dbbe355d1cbdeea0ead00f5ea80bac862a03" [label="/bin/sh -c dos2unix src/templates/*" shape="box"];
  "sha256:c77793072020fef7afe14811c1ec50976886e13793575635d9f198cc380e004e" [label="sha256:c77793072020fef7afe14811c1ec50976886e13793575635d9f198cc380e004e" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:ed778c992bb96df1b16344c61d2afff3449719ed005992bc8276484401e3c8f6" [label=""];
  "sha256:ed778c992bb96df1b16344c61d2afff3449719ed005992bc8276484401e3c8f6" -> "sha256:75f4cb3f19bd989057e44b04fce3ba236c72f56d00ccb4d361317e59a64197d7" [label=""];
  "sha256:75f4cb3f19bd989057e44b04fce3ba236c72f56d00ccb4d361317e59a64197d7" -> "sha256:22b7a577fb2f4f38bab3ae7e779a11184a0593f3916a419cbb88e7ca9169c17f" [label=""];
  "sha256:c0814aa9c7a5953c98ea13cdd4c991f230db6abed0a2b5afdc1cbc9116b14022" -> "sha256:22b7a577fb2f4f38bab3ae7e779a11184a0593f3916a419cbb88e7ca9169c17f" [label=""];
  "sha256:22b7a577fb2f4f38bab3ae7e779a11184a0593f3916a419cbb88e7ca9169c17f" -> "sha256:ee10699a455dfb74adf449c54d04d7991a67f40f1489fe437f226078eebf4237" [label=""];
  "sha256:ee10699a455dfb74adf449c54d04d7991a67f40f1489fe437f226078eebf4237" -> "sha256:808b9301022db988be9713622ab4f8d2f39d385abdeef311beeca6ad90ad4c6d" [label=""];
  "sha256:c0814aa9c7a5953c98ea13cdd4c991f230db6abed0a2b5afdc1cbc9116b14022" -> "sha256:808b9301022db988be9713622ab4f8d2f39d385abdeef311beeca6ad90ad4c6d" [label=""];
  "sha256:808b9301022db988be9713622ab4f8d2f39d385abdeef311beeca6ad90ad4c6d" -> "sha256:4cac944669b43e444b449fc16fc5dbbe355d1cbdeea0ead00f5ea80bac862a03" [label=""];
  "sha256:4cac944669b43e444b449fc16fc5dbbe355d1cbdeea0ead00f5ea80bac862a03" -> "sha256:c77793072020fef7afe14811c1ec50976886e13793575635d9f198cc380e004e" [label=""];
}

