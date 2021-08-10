[app/sources/252778257.Dockerfile]
digraph {
  "sha256:3791872a4f511894a5312dba12eddd7e7ea8f6e47314dbb396e8d622d362c694" [label="local://context" shape="ellipse"];
  "sha256:0d153d7e370fa470bdffb39af8a097c836ddb4210a2c04960a20af25174e7266" [label="docker-image://docker.io/apsl/thumbor:latest" shape="ellipse"];
  "sha256:c75587f295b2274dfa23b35de50a4c2aabc41e7915b1b6d8d1e45a43cdf6b777" [label="copy{src=/requirements.txt, dest=/usr/src/app/requirements.txt}" shape="note"];
  "sha256:998d1076f596bf5d5542e26e2e711bde7a0cd8a0530e5f6a1117a40cfdc757c6" [label="/bin/sh -c pip install --no-cache-dir -r /usr/src/app/requirements.txt" shape="box"];
  "sha256:bc0601a77a01847d9ecde2cded96a4cb85d4e289773f3184ccbb5ae98c0d02d1" [label="copy{src=/conf/circus.ini.tpl, dest=/etc/}" shape="note"];
  "sha256:1db9727c68f7993350b6ae4101f37168dff23ef743760d8902e6d1c69fe645fc" [label="/bin/sh -c mkdir /etc/circus.d /etc/setup.d" shape="box"];
  "sha256:32b34618dabd618b8b4c3df185e91765ded3939e8d92fcad3ad97a2b16d37db8" [label="copy{src=/conf/thumbor.ini.tpl, dest=/etc/circus.d/}" shape="note"];
  "sha256:de3d1ae6671244f3deaa41b7dcba16a7aab12bddcfe1d6b96af99e91fabfd298" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:bc5d8b98fbe22016cd0c5f5aad3e73e13ce2a04389c2cffe4c6ed047925bf9d4" [label="sha256:bc5d8b98fbe22016cd0c5f5aad3e73e13ce2a04389c2cffe4c6ed047925bf9d4" shape="plaintext"];
  "sha256:0d153d7e370fa470bdffb39af8a097c836ddb4210a2c04960a20af25174e7266" -> "sha256:c75587f295b2274dfa23b35de50a4c2aabc41e7915b1b6d8d1e45a43cdf6b777" [label=""];
  "sha256:3791872a4f511894a5312dba12eddd7e7ea8f6e47314dbb396e8d622d362c694" -> "sha256:c75587f295b2274dfa23b35de50a4c2aabc41e7915b1b6d8d1e45a43cdf6b777" [label=""];
  "sha256:c75587f295b2274dfa23b35de50a4c2aabc41e7915b1b6d8d1e45a43cdf6b777" -> "sha256:998d1076f596bf5d5542e26e2e711bde7a0cd8a0530e5f6a1117a40cfdc757c6" [label=""];
  "sha256:998d1076f596bf5d5542e26e2e711bde7a0cd8a0530e5f6a1117a40cfdc757c6" -> "sha256:bc0601a77a01847d9ecde2cded96a4cb85d4e289773f3184ccbb5ae98c0d02d1" [label=""];
  "sha256:3791872a4f511894a5312dba12eddd7e7ea8f6e47314dbb396e8d622d362c694" -> "sha256:bc0601a77a01847d9ecde2cded96a4cb85d4e289773f3184ccbb5ae98c0d02d1" [label=""];
  "sha256:bc0601a77a01847d9ecde2cded96a4cb85d4e289773f3184ccbb5ae98c0d02d1" -> "sha256:1db9727c68f7993350b6ae4101f37168dff23ef743760d8902e6d1c69fe645fc" [label=""];
  "sha256:1db9727c68f7993350b6ae4101f37168dff23ef743760d8902e6d1c69fe645fc" -> "sha256:32b34618dabd618b8b4c3df185e91765ded3939e8d92fcad3ad97a2b16d37db8" [label=""];
  "sha256:3791872a4f511894a5312dba12eddd7e7ea8f6e47314dbb396e8d622d362c694" -> "sha256:32b34618dabd618b8b4c3df185e91765ded3939e8d92fcad3ad97a2b16d37db8" [label=""];
  "sha256:32b34618dabd618b8b4c3df185e91765ded3939e8d92fcad3ad97a2b16d37db8" -> "sha256:de3d1ae6671244f3deaa41b7dcba16a7aab12bddcfe1d6b96af99e91fabfd298" [label=""];
  "sha256:3791872a4f511894a5312dba12eddd7e7ea8f6e47314dbb396e8d622d362c694" -> "sha256:de3d1ae6671244f3deaa41b7dcba16a7aab12bddcfe1d6b96af99e91fabfd298" [label=""];
  "sha256:de3d1ae6671244f3deaa41b7dcba16a7aab12bddcfe1d6b96af99e91fabfd298" -> "sha256:bc5d8b98fbe22016cd0c5f5aad3e73e13ce2a04389c2cffe4c6ed047925bf9d4" [label=""];
}

