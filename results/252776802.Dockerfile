[app/sources/252776802.Dockerfile]
digraph {
  "sha256:884114b4ca834e47422808530113bbb9d4be1d7dd66a059a4a2a12445fefae1e" [label="docker-image://docker.io/library/node:carbon-slim" shape="ellipse"];
  "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" [label="mkdir{path=/git/academy-api}" shape="note"];
  "sha256:aa6a44515bccaa5875bac01338f5669865f0f2f5586cb15fd4f7a8fa55bc93a7" [label="local://context" shape="ellipse"];
  "sha256:a3d981398f943e9847619d59a5c4ef2fda972b5e9f3e4ace73777370ab5bb464" [label="copy{src=/package.json, dest=/git/academy-api/}" shape="note"];
  "sha256:fcec526a7530c8a38537fb28660bad346a1d17db0d0bb00b4cc3aeea9bee35da" [label="/bin/sh -c npm install" shape="box"];
  "sha256:eb8b3db800c26c55f7e47632a253ecf8e9f4eba64b8c31a666d7cb9f56cf5a5b" [label="copy{src=/, dest=/git/academy-api/}" shape="note"];
  "sha256:4e511a1410f251807276afc5acfea8fe576ab2fdfaa537073ee6c444b9492160" [label="/bin/sh -c npm run prepublish" shape="box"];
  "sha256:8ed6973e445a1178e01b3af61018c704b49e395f7496303a5f04a83c105faf0c" [label="sha256:8ed6973e445a1178e01b3af61018c704b49e395f7496303a5f04a83c105faf0c" shape="plaintext"];
  "sha256:884114b4ca834e47422808530113bbb9d4be1d7dd66a059a4a2a12445fefae1e" -> "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" [label=""];
  "sha256:fa962785065151aa1d6a1197ac1db091ea1986b215400a2facd7c6319bd62e5e" -> "sha256:a3d981398f943e9847619d59a5c4ef2fda972b5e9f3e4ace73777370ab5bb464" [label=""];
  "sha256:aa6a44515bccaa5875bac01338f5669865f0f2f5586cb15fd4f7a8fa55bc93a7" -> "sha256:a3d981398f943e9847619d59a5c4ef2fda972b5e9f3e4ace73777370ab5bb464" [label=""];
  "sha256:a3d981398f943e9847619d59a5c4ef2fda972b5e9f3e4ace73777370ab5bb464" -> "sha256:fcec526a7530c8a38537fb28660bad346a1d17db0d0bb00b4cc3aeea9bee35da" [label=""];
  "sha256:fcec526a7530c8a38537fb28660bad346a1d17db0d0bb00b4cc3aeea9bee35da" -> "sha256:eb8b3db800c26c55f7e47632a253ecf8e9f4eba64b8c31a666d7cb9f56cf5a5b" [label=""];
  "sha256:aa6a44515bccaa5875bac01338f5669865f0f2f5586cb15fd4f7a8fa55bc93a7" -> "sha256:eb8b3db800c26c55f7e47632a253ecf8e9f4eba64b8c31a666d7cb9f56cf5a5b" [label=""];
  "sha256:eb8b3db800c26c55f7e47632a253ecf8e9f4eba64b8c31a666d7cb9f56cf5a5b" -> "sha256:4e511a1410f251807276afc5acfea8fe576ab2fdfaa537073ee6c444b9492160" [label=""];
  "sha256:4e511a1410f251807276afc5acfea8fe576ab2fdfaa537073ee6c444b9492160" -> "sha256:8ed6973e445a1178e01b3af61018c704b49e395f7496303a5f04a83c105faf0c" [label=""];
}

