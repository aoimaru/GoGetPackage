[app/sources/328267487.Dockerfile]
digraph {
  "sha256:73e81d6a37d798e4962b6553ab3eea2fc20cc4c18746297b0129a0906f855cef" [label="local://context" shape="ellipse"];
  "sha256:d9caf1433040aabfb09f3580fc14cc0f07388d6e0312ff53efc6144f87218b00" [label="docker-image://artifactory.wikia-inc.com/sus/php-wikia-base:225a68a" shape="ellipse"];
  "sha256:d39301438fdde23103973d2702deade62a7971f160540629597d0bf06e569bba" [label="/bin/sh -c sed -i 's/zend_extension=/;zend_extension=/g' /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini" shape="box"];
  "sha256:3431ab4d33a55f29bf2327a0cf4b752fcd572a9ec13fadd61ff1d7ed05afec70" [label="/bin/sh -c apt update && apt install -q -y vim procps less git openssl make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl" shape="box"];
  "sha256:7288d2fbf3a24e87618435b864b04b69fd1783f6926d28c92d8d0d6df37ad416" [label="/bin/sh -c git clone --single-branch --depth 1 git://github.com/yyuu/pyenv.git $PYENV_ROOT" shape="box"];
  "sha256:ce8ab2ba68f9a09ede12735bb7334b74c8feff15d4f1a7a991b947ad64f47e0f" [label="/bin/sh -c pyenv install 3.6.4 -s" shape="box"];
  "sha256:f57c2ffab76e68e9f1041cd10b65e37bf65e9a611d705968dd27fb5f27fe655d" [label="/bin/sh -c echo 'eval \"$( pyenv init -)\"\\n' >> ~/.pyenv_profile" shape="box"];
  "sha256:b73e1f2d6832d6d916fd8b0ef5efd95c43a8829be79e1821392faad9008a9b2d" [label="/bin/sh -c dash ~/.pyenv_profile" shape="box"];
  "sha256:94fd7b16f63ca005fdc927febbdda436918f421c747994a6d6ceebed78be5b6d" [label="/bin/sh -c pyenv local 3.6.4" shape="box"];
  "sha256:237f71de3bece5e10cb71b59ad66b2c8c06a8339a1ae7145a6905d733f2731c7" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:5cda272b4d41c56d00c5547101410d2f7f3038302e72aa2eff3a5304b3473ead" [label="copy{src=/app, dest=/usr/wikia/slot1/current/src}" shape="note"];
  "sha256:bd4abc7d0434b693ba1e73010b1e9911b06f4d12e0e30f41b0cc456c00bd4166" [label="copy{src=/config, dest=/usr/wikia/slot1/current/config}" shape="note"];
  "sha256:9c386db043249233d83ca81675115c566eadc047ce1199ad3446700cb49a1808" [label="copy{src=/rebuild, dest=/usr/wikia/slot1/current/src/rebuild}" shape="note"];
  "sha256:31741528f6fcfea05346f2dc26d545bf7c9b407d6ba828175ebdd4f2226ab719" [label="/bin/sh -c pip install pytest" shape="box"];
  "sha256:ac5ebf9b9064f73e12b24c1f5f8d41f540e56bccb1c09abcff5fee05559f91c0" [label="/bin/sh -c pip install -r rebuild/requirements.txt" shape="box"];
  "sha256:da53c8a0a76b13d4c24d33f4180e4744fcc6cb269efb8ce0e43489cf64f6970a" [label="/bin/sh -c cd rebuild && dash ~/.pyenv_profile &&  pyenv local 3.6.4  &&  pytest ." shape="box"];
  "sha256:630206c10e6d6340c4b8dfa9a437fc99bd2d0ca1a3d2a705ad0b6f99c40521ab" [label="/bin/sh -c SERVER_ID=\"177\" php /usr/wikia/slot1/current/src/maintenance/rebuildLocalisationCache.php --primary" shape="box"];
  "sha256:7ccbcc8510a4a05bc72c986574cc7f89f98bdf0a0f2265c2294c9c302968e280" [label="mkdir{path=/usr/wikia/slot1/current/src/rebuild}" shape="note"];
  "sha256:16eb173a1308a68c2b6eb3b751c48b838842ec632d4defac76f1114c20aabdbb" [label="sha256:16eb173a1308a68c2b6eb3b751c48b838842ec632d4defac76f1114c20aabdbb" shape="plaintext"];
  "sha256:d9caf1433040aabfb09f3580fc14cc0f07388d6e0312ff53efc6144f87218b00" -> "sha256:d39301438fdde23103973d2702deade62a7971f160540629597d0bf06e569bba" [label=""];
  "sha256:d39301438fdde23103973d2702deade62a7971f160540629597d0bf06e569bba" -> "sha256:3431ab4d33a55f29bf2327a0cf4b752fcd572a9ec13fadd61ff1d7ed05afec70" [label=""];
  "sha256:3431ab4d33a55f29bf2327a0cf4b752fcd572a9ec13fadd61ff1d7ed05afec70" -> "sha256:7288d2fbf3a24e87618435b864b04b69fd1783f6926d28c92d8d0d6df37ad416" [label=""];
  "sha256:7288d2fbf3a24e87618435b864b04b69fd1783f6926d28c92d8d0d6df37ad416" -> "sha256:ce8ab2ba68f9a09ede12735bb7334b74c8feff15d4f1a7a991b947ad64f47e0f" [label=""];
  "sha256:ce8ab2ba68f9a09ede12735bb7334b74c8feff15d4f1a7a991b947ad64f47e0f" -> "sha256:f57c2ffab76e68e9f1041cd10b65e37bf65e9a611d705968dd27fb5f27fe655d" [label=""];
  "sha256:f57c2ffab76e68e9f1041cd10b65e37bf65e9a611d705968dd27fb5f27fe655d" -> "sha256:b73e1f2d6832d6d916fd8b0ef5efd95c43a8829be79e1821392faad9008a9b2d" [label=""];
  "sha256:b73e1f2d6832d6d916fd8b0ef5efd95c43a8829be79e1821392faad9008a9b2d" -> "sha256:94fd7b16f63ca005fdc927febbdda436918f421c747994a6d6ceebed78be5b6d" [label=""];
  "sha256:94fd7b16f63ca005fdc927febbdda436918f421c747994a6d6ceebed78be5b6d" -> "sha256:237f71de3bece5e10cb71b59ad66b2c8c06a8339a1ae7145a6905d733f2731c7" [label=""];
  "sha256:237f71de3bece5e10cb71b59ad66b2c8c06a8339a1ae7145a6905d733f2731c7" -> "sha256:5cda272b4d41c56d00c5547101410d2f7f3038302e72aa2eff3a5304b3473ead" [label=""];
  "sha256:73e81d6a37d798e4962b6553ab3eea2fc20cc4c18746297b0129a0906f855cef" -> "sha256:5cda272b4d41c56d00c5547101410d2f7f3038302e72aa2eff3a5304b3473ead" [label=""];
  "sha256:5cda272b4d41c56d00c5547101410d2f7f3038302e72aa2eff3a5304b3473ead" -> "sha256:bd4abc7d0434b693ba1e73010b1e9911b06f4d12e0e30f41b0cc456c00bd4166" [label=""];
  "sha256:73e81d6a37d798e4962b6553ab3eea2fc20cc4c18746297b0129a0906f855cef" -> "sha256:bd4abc7d0434b693ba1e73010b1e9911b06f4d12e0e30f41b0cc456c00bd4166" [label=""];
  "sha256:bd4abc7d0434b693ba1e73010b1e9911b06f4d12e0e30f41b0cc456c00bd4166" -> "sha256:9c386db043249233d83ca81675115c566eadc047ce1199ad3446700cb49a1808" [label=""];
  "sha256:73e81d6a37d798e4962b6553ab3eea2fc20cc4c18746297b0129a0906f855cef" -> "sha256:9c386db043249233d83ca81675115c566eadc047ce1199ad3446700cb49a1808" [label=""];
  "sha256:9c386db043249233d83ca81675115c566eadc047ce1199ad3446700cb49a1808" -> "sha256:31741528f6fcfea05346f2dc26d545bf7c9b407d6ba828175ebdd4f2226ab719" [label=""];
  "sha256:31741528f6fcfea05346f2dc26d545bf7c9b407d6ba828175ebdd4f2226ab719" -> "sha256:ac5ebf9b9064f73e12b24c1f5f8d41f540e56bccb1c09abcff5fee05559f91c0" [label=""];
  "sha256:ac5ebf9b9064f73e12b24c1f5f8d41f540e56bccb1c09abcff5fee05559f91c0" -> "sha256:da53c8a0a76b13d4c24d33f4180e4744fcc6cb269efb8ce0e43489cf64f6970a" [label=""];
  "sha256:da53c8a0a76b13d4c24d33f4180e4744fcc6cb269efb8ce0e43489cf64f6970a" -> "sha256:630206c10e6d6340c4b8dfa9a437fc99bd2d0ca1a3d2a705ad0b6f99c40521ab" [label=""];
  "sha256:630206c10e6d6340c4b8dfa9a437fc99bd2d0ca1a3d2a705ad0b6f99c40521ab" -> "sha256:7ccbcc8510a4a05bc72c986574cc7f89f98bdf0a0f2265c2294c9c302968e280" [label=""];
  "sha256:7ccbcc8510a4a05bc72c986574cc7f89f98bdf0a0f2265c2294c9c302968e280" -> "sha256:16eb173a1308a68c2b6eb3b751c48b838842ec632d4defac76f1114c20aabdbb" [label=""];
}

