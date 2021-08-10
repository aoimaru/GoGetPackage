[app/sources/250694326.Dockerfile]
digraph {
  "sha256:95af3ee3100cfa16bffa012fa08c1ad10cc34eb1b023b4247e8f0711f83226c2" [label="local://context" shape="ellipse"];
  "sha256:652f46d783311c3e668912841663761747a3d8b89542d8ab8f8e0682522e576f" [label="docker-image://docker.io/andreisamuilik/php5.5.9-apache2.4-mysql5.5:latest" shape="ellipse"];
  "sha256:a1b3b0e67c1932385b5a5ba8f50adccc4818eefbda500a2892633cb2cc2908e8" [label="copy{src=/nu1lctf.tar.gz, dest=/app/}" shape="note"];
  "sha256:0eaffce24c83daa661de2706d9a584cbffb47cae23fe80b0167f4f8344dee7ec" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d009e79faa0c5e54bb479ff5e0bb0f4f6dc51d05f1afc53885e8cc0645ad2a61" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:327a50950795b8dbe347edada1c22634943cf17f19290cc0e6bf43c269cf28e9" [label="copy{src=/sql.sql, dest=/tmp/sql.sql}" shape="note"];
  "sha256:6bd244e3b395f71e19e92fcfc27ddbd678dde65a9300024cbcc32df2d8aaf3f0" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:97e8aa503d151d9d136abf8222f8b01606fa80abda2ee4d3f144736615e46e89" [label="/bin/sh -c mkdir /home/nu1lctf" shape="box"];
  "sha256:10eb878b4dec7a452ba463d6d3967e3a924f69b92ffa94b507216d9f0410674a" [label="copy{src=/clean_danger.sh, dest=/home/nu1lctf/clean_danger.sh}" shape="note"];
  "sha256:b948a4a5b388e48785106b42920c6cecf651fae2904ce469993ea24f193fd93e" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:19bec7411a852ff907a89692293ed68ba09e2d15275e69bf2a238b0117c4643f" [label="/bin/sh -c chmod 777 /tmp/sql.sql" shape="box"];
  "sha256:cd6f865fc7def068efc455428c0d23ef7df791089a9eca0a061c4367094b7164" [label="/bin/sh -c chmod 555 /home/nu1lctf/clean_danger.sh" shape="box"];
  "sha256:c96128c541be9f858ef6ed292d751011e744b83702693d08149ce4cbe447c090" [label="sha256:c96128c541be9f858ef6ed292d751011e744b83702693d08149ce4cbe447c090" shape="plaintext"];
  "sha256:652f46d783311c3e668912841663761747a3d8b89542d8ab8f8e0682522e576f" -> "sha256:a1b3b0e67c1932385b5a5ba8f50adccc4818eefbda500a2892633cb2cc2908e8" [label=""];
  "sha256:95af3ee3100cfa16bffa012fa08c1ad10cc34eb1b023b4247e8f0711f83226c2" -> "sha256:a1b3b0e67c1932385b5a5ba8f50adccc4818eefbda500a2892633cb2cc2908e8" [label=""];
  "sha256:a1b3b0e67c1932385b5a5ba8f50adccc4818eefbda500a2892633cb2cc2908e8" -> "sha256:0eaffce24c83daa661de2706d9a584cbffb47cae23fe80b0167f4f8344dee7ec" [label=""];
  "sha256:0eaffce24c83daa661de2706d9a584cbffb47cae23fe80b0167f4f8344dee7ec" -> "sha256:d009e79faa0c5e54bb479ff5e0bb0f4f6dc51d05f1afc53885e8cc0645ad2a61" [label=""];
  "sha256:d009e79faa0c5e54bb479ff5e0bb0f4f6dc51d05f1afc53885e8cc0645ad2a61" -> "sha256:327a50950795b8dbe347edada1c22634943cf17f19290cc0e6bf43c269cf28e9" [label=""];
  "sha256:95af3ee3100cfa16bffa012fa08c1ad10cc34eb1b023b4247e8f0711f83226c2" -> "sha256:327a50950795b8dbe347edada1c22634943cf17f19290cc0e6bf43c269cf28e9" [label=""];
  "sha256:327a50950795b8dbe347edada1c22634943cf17f19290cc0e6bf43c269cf28e9" -> "sha256:6bd244e3b395f71e19e92fcfc27ddbd678dde65a9300024cbcc32df2d8aaf3f0" [label=""];
  "sha256:95af3ee3100cfa16bffa012fa08c1ad10cc34eb1b023b4247e8f0711f83226c2" -> "sha256:6bd244e3b395f71e19e92fcfc27ddbd678dde65a9300024cbcc32df2d8aaf3f0" [label=""];
  "sha256:6bd244e3b395f71e19e92fcfc27ddbd678dde65a9300024cbcc32df2d8aaf3f0" -> "sha256:97e8aa503d151d9d136abf8222f8b01606fa80abda2ee4d3f144736615e46e89" [label=""];
  "sha256:97e8aa503d151d9d136abf8222f8b01606fa80abda2ee4d3f144736615e46e89" -> "sha256:10eb878b4dec7a452ba463d6d3967e3a924f69b92ffa94b507216d9f0410674a" [label=""];
  "sha256:95af3ee3100cfa16bffa012fa08c1ad10cc34eb1b023b4247e8f0711f83226c2" -> "sha256:10eb878b4dec7a452ba463d6d3967e3a924f69b92ffa94b507216d9f0410674a" [label=""];
  "sha256:10eb878b4dec7a452ba463d6d3967e3a924f69b92ffa94b507216d9f0410674a" -> "sha256:b948a4a5b388e48785106b42920c6cecf651fae2904ce469993ea24f193fd93e" [label=""];
  "sha256:b948a4a5b388e48785106b42920c6cecf651fae2904ce469993ea24f193fd93e" -> "sha256:19bec7411a852ff907a89692293ed68ba09e2d15275e69bf2a238b0117c4643f" [label=""];
  "sha256:19bec7411a852ff907a89692293ed68ba09e2d15275e69bf2a238b0117c4643f" -> "sha256:cd6f865fc7def068efc455428c0d23ef7df791089a9eca0a061c4367094b7164" [label=""];
  "sha256:cd6f865fc7def068efc455428c0d23ef7df791089a9eca0a061c4367094b7164" -> "sha256:c96128c541be9f858ef6ed292d751011e744b83702693d08149ce4cbe447c090" [label=""];
}

