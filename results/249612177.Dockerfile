[app/sources/249612177.Dockerfile]
digraph {
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:1a39ed2e06eb70c3d2063710c3d6f67edb4d3ad342c310a4d672de560c8a405b" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     curl     nano     supervisor" shape="box"];
  "sha256:e5350e893381621743af0209370c0b7cb40cc9bb60eb3b8110943a90bbb12d1b" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_4.x | bash -" shape="box"];
  "sha256:84080b24717ffbf3734aae92b9aee44a33bf6ddf6a5588bc0bfd073112b0ee21" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:3740ff6e5e07b657d657857b7f02e650fe99c5a4cdfb9145aa7657b6697d6d1e" [label="mkdir{path=/app}" shape="note"];
  "sha256:5177637b5f180d1813c07ea42ca11cb2c3ff2a1cf437a963d4f0f78cf8a6553d" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:e770ed3b3a2d187a061ad04c0704fe5c845ce3020568334818fe97b66ee05fb1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1df4c2392f05f65d21996ca487e05c3372edf49f6b1bef0347647a9e0baf3e6f" [label="copy{src=/docker/supervisord.conf, dest=/etc/supervisor/conf.d/nicistore.conf}" shape="note"];
  "sha256:2f256ed15fa283d50af751133e28bf8366c17eee9cd0c318eb31077c605bc8eb" [label="copy{src=/config, dest=/app/config}" shape="note"];
  "sha256:ce057a651da019e1177bb5f094274271a7198010b26953267a0ed3d9b188b15f" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:09dbc6726a6f299959d32e076a034db959c90405b6694caabf7a1336de4841ad" [label="copy{src=/static, dest=/app/static}" shape="note"];
  "sha256:14974c789eec204eae19d4625240f8088f109d3dc7ec0b8742a8772c34b3ae8e" [label="/bin/sh -c rm -rf /app/static/dist" shape="box"];
  "sha256:1de5aafd4808af0ac2d904dd3b2688979cebbd52025223cecf0c33c2f8180b97" [label="copy{src=/webpack, dest=/app/webpack}" shape="note"];
  "sha256:4d295846b3dd80e65b3764c83b67a13f4e31f6612b984d2975a52e0202cb0ec8" [label="copy{src=/index.js, dest=/app/}" shape="note"];
  "sha256:0a0fd9bc2d098c5acee277a0543b8404b1c51538d166bccef76c8896b3d8065a" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:ec58a28fc039a6d97c742ac31edd85e7ce1157182f2830affac7e50abdf7ac2c" [label="sha256:ec58a28fc039a6d97c742ac31edd85e7ce1157182f2830affac7e50abdf7ac2c" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:1a39ed2e06eb70c3d2063710c3d6f67edb4d3ad342c310a4d672de560c8a405b" [label=""];
  "sha256:1a39ed2e06eb70c3d2063710c3d6f67edb4d3ad342c310a4d672de560c8a405b" -> "sha256:e5350e893381621743af0209370c0b7cb40cc9bb60eb3b8110943a90bbb12d1b" [label=""];
  "sha256:e5350e893381621743af0209370c0b7cb40cc9bb60eb3b8110943a90bbb12d1b" -> "sha256:84080b24717ffbf3734aae92b9aee44a33bf6ddf6a5588bc0bfd073112b0ee21" [label=""];
  "sha256:84080b24717ffbf3734aae92b9aee44a33bf6ddf6a5588bc0bfd073112b0ee21" -> "sha256:3740ff6e5e07b657d657857b7f02e650fe99c5a4cdfb9145aa7657b6697d6d1e" [label=""];
  "sha256:3740ff6e5e07b657d657857b7f02e650fe99c5a4cdfb9145aa7657b6697d6d1e" -> "sha256:5177637b5f180d1813c07ea42ca11cb2c3ff2a1cf437a963d4f0f78cf8a6553d" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:5177637b5f180d1813c07ea42ca11cb2c3ff2a1cf437a963d4f0f78cf8a6553d" [label=""];
  "sha256:5177637b5f180d1813c07ea42ca11cb2c3ff2a1cf437a963d4f0f78cf8a6553d" -> "sha256:e770ed3b3a2d187a061ad04c0704fe5c845ce3020568334818fe97b66ee05fb1" [label=""];
  "sha256:e770ed3b3a2d187a061ad04c0704fe5c845ce3020568334818fe97b66ee05fb1" -> "sha256:1df4c2392f05f65d21996ca487e05c3372edf49f6b1bef0347647a9e0baf3e6f" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:1df4c2392f05f65d21996ca487e05c3372edf49f6b1bef0347647a9e0baf3e6f" [label=""];
  "sha256:1df4c2392f05f65d21996ca487e05c3372edf49f6b1bef0347647a9e0baf3e6f" -> "sha256:2f256ed15fa283d50af751133e28bf8366c17eee9cd0c318eb31077c605bc8eb" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:2f256ed15fa283d50af751133e28bf8366c17eee9cd0c318eb31077c605bc8eb" [label=""];
  "sha256:2f256ed15fa283d50af751133e28bf8366c17eee9cd0c318eb31077c605bc8eb" -> "sha256:ce057a651da019e1177bb5f094274271a7198010b26953267a0ed3d9b188b15f" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:ce057a651da019e1177bb5f094274271a7198010b26953267a0ed3d9b188b15f" [label=""];
  "sha256:ce057a651da019e1177bb5f094274271a7198010b26953267a0ed3d9b188b15f" -> "sha256:09dbc6726a6f299959d32e076a034db959c90405b6694caabf7a1336de4841ad" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:09dbc6726a6f299959d32e076a034db959c90405b6694caabf7a1336de4841ad" [label=""];
  "sha256:09dbc6726a6f299959d32e076a034db959c90405b6694caabf7a1336de4841ad" -> "sha256:14974c789eec204eae19d4625240f8088f109d3dc7ec0b8742a8772c34b3ae8e" [label=""];
  "sha256:14974c789eec204eae19d4625240f8088f109d3dc7ec0b8742a8772c34b3ae8e" -> "sha256:1de5aafd4808af0ac2d904dd3b2688979cebbd52025223cecf0c33c2f8180b97" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:1de5aafd4808af0ac2d904dd3b2688979cebbd52025223cecf0c33c2f8180b97" [label=""];
  "sha256:1de5aafd4808af0ac2d904dd3b2688979cebbd52025223cecf0c33c2f8180b97" -> "sha256:4d295846b3dd80e65b3764c83b67a13f4e31f6612b984d2975a52e0202cb0ec8" [label=""];
  "sha256:66634f59254d1d548639a31774fa2d8544bafac5b9daf47e460d01322634d04b" -> "sha256:4d295846b3dd80e65b3764c83b67a13f4e31f6612b984d2975a52e0202cb0ec8" [label=""];
  "sha256:4d295846b3dd80e65b3764c83b67a13f4e31f6612b984d2975a52e0202cb0ec8" -> "sha256:0a0fd9bc2d098c5acee277a0543b8404b1c51538d166bccef76c8896b3d8065a" [label=""];
  "sha256:0a0fd9bc2d098c5acee277a0543b8404b1c51538d166bccef76c8896b3d8065a" -> "sha256:ec58a28fc039a6d97c742ac31edd85e7ce1157182f2830affac7e50abdf7ac2c" [label=""];
}

