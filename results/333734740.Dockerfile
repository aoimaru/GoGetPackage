[app/sources/333734740.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0a6bf2a98291c37f05c7fe27531490ca5f9967ccb1fa8fceba2026f03b863b71" [label="mkdir{path=/app/slyd}" shape="note"];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" [label="local://context" shape="ellipse"];
  "sha256:899af92178452ad79050d63cf86b12c7a5acf6dbe83bee22350e575682cc993f" [label="copy{src=/provision.sh, dest=/app/provision.sh}" shape="note"];
  "sha256:cb7ef50d89b850bfa8149ba53f23fe2e461235096e4cded2c70d02314ec364af" [label="copy{src=/slybot/requirements.txt, dest=/app/slybot/requirements.txt}" shape="note"];
  "sha256:36c0e0de1e2c9db75dc9e332ea5c118e9cf8a4836222775aefa848a10ba704c9" [label="copy{src=/slyd/requirements.txt, dest=/app/slyd/requirements.txt}" shape="note"];
  "sha256:3ab8ff8038ce1131ca15000eb8e837f0d87d567645a892c38006e9f68cc31a52" [label="copy{src=/portia_server/requirements.txt, dest=/app/portia_server/requirements.txt}" shape="note"];
  "sha256:4e032ad3a74cd10e7d910ba001867fd4df0ccb3e4dba310f66f04d9e0dea7061" [label="copy{src=/docs/requirements.txt, dest=/app/docs/requirements.txt}" shape="note"];
  "sha256:d14bdecc39bd6ca6e62551692f77b6b9a07904c6d8fdc7a2f9c94d3dac6f0972" [label="/bin/sh -c /app/provision.sh install_deps &&     /app/provision.sh install_splash &&     pip install -r /app/slybot/requirements.txt &&     pip install -r /app/slyd/requirements.txt &&     pip install -r /app/portia_server/requirements.txt &&     pip install -r /app/docs/requirements.txt" shape="box"];
  "sha256:dad35f4fa207e2a2af03a041fcd59cdb92fb1552bc308e534947218d3d09f3f1" [label="copy{src=/nginx, dest=/etc/nginx}" shape="note"];
  "sha256:a9a4db64ec9a40067874a8c670e51de5599fc02772c5231622ab0bbc41eefcf2" [label="copy{src=/scrapyd/scrapyd.conf.template, dest=/etc/scrapyd/scrapyd.conf}" shape="note"];
  "sha256:f43b721505b7e4417179d7a520f3e2626d667e5e32e6beb33fe777492fb46419" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:cb26bb82a98adbd69d680bfe1087d2923499662e6fcda661b789408260fbe150" [label="/bin/sh -c pip install -e /app/slyd &&     pip install -e /app/slybot" shape="box"];
  "sha256:ddd35251eeeb3136c0e4032304db3589284db2dd9f00cddbfc6ea02b4e248d38" [label="copy{src=/slyd/do_slyd_start.sh.template, dest=/app/slyd/do_slyd_start.sh}" shape="note"];
  "sha256:568ba203225e6b69af0ae8773ecb10ffbdf16048f21673bef11286351e8bc0b7" [label="/bin/sh -c /app/provision.sh install_frontend_deps &&     /app/provision.sh build_assets" shape="box"];
  "sha256:788970b055d7c72ba3b730d3a00328102dcdd0b31d7b5701d6217f9175f38fa1" [label="/bin/sh -c /app/provision.sh build_docs" shape="box"];
  "sha256:c4e7b8391c06e0fe4501d5d00b1681750dc1b928550deaeb5dc5cea92d9e7d29" [label="/bin/sh -c python /app/portia_server/manage.py makemigrations portia_dashboard" shape="box"];
  "sha256:b7760e09c0d7877661e006b937c8cf30771edf6088ce2f6562d08ec8199605e7" [label="/bin/sh -c python /app/portia_server/manage.py migrate" shape="box"];
  "sha256:0221fa2dea9e55f1314b77f322776f9810b9feb33030db663c3c8eb35c6080e5" [label="sha256:0221fa2dea9e55f1314b77f322776f9810b9feb33030db663c3c8eb35c6080e5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0a6bf2a98291c37f05c7fe27531490ca5f9967ccb1fa8fceba2026f03b863b71" [label=""];
  "sha256:0a6bf2a98291c37f05c7fe27531490ca5f9967ccb1fa8fceba2026f03b863b71" -> "sha256:899af92178452ad79050d63cf86b12c7a5acf6dbe83bee22350e575682cc993f" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:899af92178452ad79050d63cf86b12c7a5acf6dbe83bee22350e575682cc993f" [label=""];
  "sha256:899af92178452ad79050d63cf86b12c7a5acf6dbe83bee22350e575682cc993f" -> "sha256:cb7ef50d89b850bfa8149ba53f23fe2e461235096e4cded2c70d02314ec364af" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:cb7ef50d89b850bfa8149ba53f23fe2e461235096e4cded2c70d02314ec364af" [label=""];
  "sha256:cb7ef50d89b850bfa8149ba53f23fe2e461235096e4cded2c70d02314ec364af" -> "sha256:36c0e0de1e2c9db75dc9e332ea5c118e9cf8a4836222775aefa848a10ba704c9" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:36c0e0de1e2c9db75dc9e332ea5c118e9cf8a4836222775aefa848a10ba704c9" [label=""];
  "sha256:36c0e0de1e2c9db75dc9e332ea5c118e9cf8a4836222775aefa848a10ba704c9" -> "sha256:3ab8ff8038ce1131ca15000eb8e837f0d87d567645a892c38006e9f68cc31a52" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:3ab8ff8038ce1131ca15000eb8e837f0d87d567645a892c38006e9f68cc31a52" [label=""];
  "sha256:3ab8ff8038ce1131ca15000eb8e837f0d87d567645a892c38006e9f68cc31a52" -> "sha256:4e032ad3a74cd10e7d910ba001867fd4df0ccb3e4dba310f66f04d9e0dea7061" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:4e032ad3a74cd10e7d910ba001867fd4df0ccb3e4dba310f66f04d9e0dea7061" [label=""];
  "sha256:4e032ad3a74cd10e7d910ba001867fd4df0ccb3e4dba310f66f04d9e0dea7061" -> "sha256:d14bdecc39bd6ca6e62551692f77b6b9a07904c6d8fdc7a2f9c94d3dac6f0972" [label=""];
  "sha256:d14bdecc39bd6ca6e62551692f77b6b9a07904c6d8fdc7a2f9c94d3dac6f0972" -> "sha256:dad35f4fa207e2a2af03a041fcd59cdb92fb1552bc308e534947218d3d09f3f1" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:dad35f4fa207e2a2af03a041fcd59cdb92fb1552bc308e534947218d3d09f3f1" [label=""];
  "sha256:dad35f4fa207e2a2af03a041fcd59cdb92fb1552bc308e534947218d3d09f3f1" -> "sha256:a9a4db64ec9a40067874a8c670e51de5599fc02772c5231622ab0bbc41eefcf2" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:a9a4db64ec9a40067874a8c670e51de5599fc02772c5231622ab0bbc41eefcf2" [label=""];
  "sha256:a9a4db64ec9a40067874a8c670e51de5599fc02772c5231622ab0bbc41eefcf2" -> "sha256:f43b721505b7e4417179d7a520f3e2626d667e5e32e6beb33fe777492fb46419" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:f43b721505b7e4417179d7a520f3e2626d667e5e32e6beb33fe777492fb46419" [label=""];
  "sha256:f43b721505b7e4417179d7a520f3e2626d667e5e32e6beb33fe777492fb46419" -> "sha256:cb26bb82a98adbd69d680bfe1087d2923499662e6fcda661b789408260fbe150" [label=""];
  "sha256:cb26bb82a98adbd69d680bfe1087d2923499662e6fcda661b789408260fbe150" -> "sha256:ddd35251eeeb3136c0e4032304db3589284db2dd9f00cddbfc6ea02b4e248d38" [label=""];
  "sha256:e42cdca9633a4e6148765d43ecced5d24fa2a17fc623d19f1593ee9159563df6" -> "sha256:ddd35251eeeb3136c0e4032304db3589284db2dd9f00cddbfc6ea02b4e248d38" [label=""];
  "sha256:ddd35251eeeb3136c0e4032304db3589284db2dd9f00cddbfc6ea02b4e248d38" -> "sha256:568ba203225e6b69af0ae8773ecb10ffbdf16048f21673bef11286351e8bc0b7" [label=""];
  "sha256:568ba203225e6b69af0ae8773ecb10ffbdf16048f21673bef11286351e8bc0b7" -> "sha256:788970b055d7c72ba3b730d3a00328102dcdd0b31d7b5701d6217f9175f38fa1" [label=""];
  "sha256:788970b055d7c72ba3b730d3a00328102dcdd0b31d7b5701d6217f9175f38fa1" -> "sha256:c4e7b8391c06e0fe4501d5d00b1681750dc1b928550deaeb5dc5cea92d9e7d29" [label=""];
  "sha256:c4e7b8391c06e0fe4501d5d00b1681750dc1b928550deaeb5dc5cea92d9e7d29" -> "sha256:b7760e09c0d7877661e006b937c8cf30771edf6088ce2f6562d08ec8199605e7" [label=""];
  "sha256:b7760e09c0d7877661e006b937c8cf30771edf6088ce2f6562d08ec8199605e7" -> "sha256:0221fa2dea9e55f1314b77f322776f9810b9feb33030db663c3c8eb35c6080e5" [label=""];
}

