[app/sources/466827294.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:a316f1a6cf8f6c9c7ddb04500797ef2c3c15ea3398d3592a8af10acc04f736e4" [label="/bin/sh -c export NODE_ENV=production" shape="box"];
  "sha256:276da0729dbc482471e45256028015fa7c5cc099ad113aeb4412adda458784f0" [label="/bin/sh -c npm set unsafe-perm true" shape="box"];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" [label="local://context" shape="ellipse"];
  "sha256:cf3e740686671df3aabfd5aca683805a1c43be096dbe8658447ba4b2b894c4cd" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:4d6985448f310faa1bd87305d24a23f534520391fd7ce6a9dc2993ab3cfd6c51" [label="copy{src=/package-lock.json, dest=/app/package-lock.json}" shape="note"];
  "sha256:18fe54cec0adc216e66526d16a4f4d76cc7ed9b82ba1b07372e31a0ede52f8ad" [label="copy{src=/lerna.json, dest=/app/lerna.json}" shape="note"];
  "sha256:87ba93fb132ee8a104f937e5709d3935c89dbe5c6b57e06022a97233006131b8" [label="copy{src=/packages/common/package.json, dest=/app/packages/common/package.json}" shape="note"];
  "sha256:763532799add58c94a35456a280a6dc182786310cc33d1abfa08a4ed96aba222" [label="copy{src=/packages/common/package-lock.json, dest=/app/packages/common/package-lock.json}" shape="note"];
  "sha256:fde37c0c4b402ec05598acde2b0156d2c25080761107780db924601bd0a57c5f" [label="copy{src=/packages/replication-master/package.json, dest=/app/packages/replication-master/package.json}" shape="note"];
  "sha256:fba1276c13e1537073741da6d2763ba6438ac3a036468474010aaae7f6e6b0c9" [label="copy{src=/packages/replication-master/package-lock.json, dest=/app/packages/replication-master/package-lock.json}" shape="note"];
  "sha256:1b9bd5af806e9b7feeba87f19f5c224bb32514d05714a64b56a5fe61d3e6ef60" [label="mkdir{path=/app}" shape="note"];
  "sha256:e200abb3aae51a9523e3581548ded23c43342fe88295914f758d3c7900f6cd27" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:d1a0434ee35869253e5e78c24e5b8503a7139cb1634305370322a2c55f00f824" [label="copy{src=/packages/common/utils, dest=/app/packages/common/utils}" shape="note"];
  "sha256:c3a4d02ed54ce0bfa6173d792b5bfde7c99ad27044aedc7985ad912b8002cfa6" [label="copy{src=/packages/common/handlers, dest=/app/packages/common/handlers}" shape="note"];
  "sha256:50f176e80febdfab53fb364a15541335766bf96ab68d90e0e8a22a78a041075a" [label="copy{src=/packages/common/server.js, dest=/app/packages/common/server.js}" shape="note"];
  "sha256:4bbe88b963cdc008418309f684ee182335003ef464922768f6663cb8d90027d4" [label="copy{src=/packages/replication-master/src, dest=/app/packages/replication-master/src}" shape="note"];
  "sha256:e865285861391627c57495b2d6fc2cf5a85b05dff959c288f5a8309035692f21" [label="mkdir{path=/app/packages/replication-master}" shape="note"];
  "sha256:0262151ec8333c727457268764555a222cef44dcd749e52e1391758b41d96f6d" [label="sha256:0262151ec8333c727457268764555a222cef44dcd749e52e1391758b41d96f6d" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:a316f1a6cf8f6c9c7ddb04500797ef2c3c15ea3398d3592a8af10acc04f736e4" [label=""];
  "sha256:a316f1a6cf8f6c9c7ddb04500797ef2c3c15ea3398d3592a8af10acc04f736e4" -> "sha256:276da0729dbc482471e45256028015fa7c5cc099ad113aeb4412adda458784f0" [label=""];
  "sha256:276da0729dbc482471e45256028015fa7c5cc099ad113aeb4412adda458784f0" -> "sha256:cf3e740686671df3aabfd5aca683805a1c43be096dbe8658447ba4b2b894c4cd" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:cf3e740686671df3aabfd5aca683805a1c43be096dbe8658447ba4b2b894c4cd" [label=""];
  "sha256:cf3e740686671df3aabfd5aca683805a1c43be096dbe8658447ba4b2b894c4cd" -> "sha256:4d6985448f310faa1bd87305d24a23f534520391fd7ce6a9dc2993ab3cfd6c51" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:4d6985448f310faa1bd87305d24a23f534520391fd7ce6a9dc2993ab3cfd6c51" [label=""];
  "sha256:4d6985448f310faa1bd87305d24a23f534520391fd7ce6a9dc2993ab3cfd6c51" -> "sha256:18fe54cec0adc216e66526d16a4f4d76cc7ed9b82ba1b07372e31a0ede52f8ad" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:18fe54cec0adc216e66526d16a4f4d76cc7ed9b82ba1b07372e31a0ede52f8ad" [label=""];
  "sha256:18fe54cec0adc216e66526d16a4f4d76cc7ed9b82ba1b07372e31a0ede52f8ad" -> "sha256:87ba93fb132ee8a104f937e5709d3935c89dbe5c6b57e06022a97233006131b8" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:87ba93fb132ee8a104f937e5709d3935c89dbe5c6b57e06022a97233006131b8" [label=""];
  "sha256:87ba93fb132ee8a104f937e5709d3935c89dbe5c6b57e06022a97233006131b8" -> "sha256:763532799add58c94a35456a280a6dc182786310cc33d1abfa08a4ed96aba222" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:763532799add58c94a35456a280a6dc182786310cc33d1abfa08a4ed96aba222" [label=""];
  "sha256:763532799add58c94a35456a280a6dc182786310cc33d1abfa08a4ed96aba222" -> "sha256:fde37c0c4b402ec05598acde2b0156d2c25080761107780db924601bd0a57c5f" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:fde37c0c4b402ec05598acde2b0156d2c25080761107780db924601bd0a57c5f" [label=""];
  "sha256:fde37c0c4b402ec05598acde2b0156d2c25080761107780db924601bd0a57c5f" -> "sha256:fba1276c13e1537073741da6d2763ba6438ac3a036468474010aaae7f6e6b0c9" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:fba1276c13e1537073741da6d2763ba6438ac3a036468474010aaae7f6e6b0c9" [label=""];
  "sha256:fba1276c13e1537073741da6d2763ba6438ac3a036468474010aaae7f6e6b0c9" -> "sha256:1b9bd5af806e9b7feeba87f19f5c224bb32514d05714a64b56a5fe61d3e6ef60" [label=""];
  "sha256:1b9bd5af806e9b7feeba87f19f5c224bb32514d05714a64b56a5fe61d3e6ef60" -> "sha256:e200abb3aae51a9523e3581548ded23c43342fe88295914f758d3c7900f6cd27" [label=""];
  "sha256:e200abb3aae51a9523e3581548ded23c43342fe88295914f758d3c7900f6cd27" -> "sha256:d1a0434ee35869253e5e78c24e5b8503a7139cb1634305370322a2c55f00f824" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:d1a0434ee35869253e5e78c24e5b8503a7139cb1634305370322a2c55f00f824" [label=""];
  "sha256:d1a0434ee35869253e5e78c24e5b8503a7139cb1634305370322a2c55f00f824" -> "sha256:c3a4d02ed54ce0bfa6173d792b5bfde7c99ad27044aedc7985ad912b8002cfa6" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:c3a4d02ed54ce0bfa6173d792b5bfde7c99ad27044aedc7985ad912b8002cfa6" [label=""];
  "sha256:c3a4d02ed54ce0bfa6173d792b5bfde7c99ad27044aedc7985ad912b8002cfa6" -> "sha256:50f176e80febdfab53fb364a15541335766bf96ab68d90e0e8a22a78a041075a" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:50f176e80febdfab53fb364a15541335766bf96ab68d90e0e8a22a78a041075a" [label=""];
  "sha256:50f176e80febdfab53fb364a15541335766bf96ab68d90e0e8a22a78a041075a" -> "sha256:4bbe88b963cdc008418309f684ee182335003ef464922768f6663cb8d90027d4" [label=""];
  "sha256:96ff4c361fbc46dcbb79d88e1267cd574039c1072e9e644b837b2c0ae761e272" -> "sha256:4bbe88b963cdc008418309f684ee182335003ef464922768f6663cb8d90027d4" [label=""];
  "sha256:4bbe88b963cdc008418309f684ee182335003ef464922768f6663cb8d90027d4" -> "sha256:e865285861391627c57495b2d6fc2cf5a85b05dff959c288f5a8309035692f21" [label=""];
  "sha256:e865285861391627c57495b2d6fc2cf5a85b05dff959c288f5a8309035692f21" -> "sha256:0262151ec8333c727457268764555a222cef44dcd749e52e1391758b41d96f6d" [label=""];
}
