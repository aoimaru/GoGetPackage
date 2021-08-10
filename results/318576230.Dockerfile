[app/sources/318576230.Dockerfile]
digraph {
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" [label="local://context" shape="ellipse"];
  "sha256:766289bc91ae0e9d4939d691b7d3d9644f35a982eae884f24b4789e26d06762d" [label="docker-image://docker.io/vnijs/rsm-msba-spark:latest" shape="ellipse"];
  "sha256:fe732cf8b18075677f54a50c74d9c7ea22f5295485a8d7d93b9d8a86bf7d77ab" [label="/bin/sh -c pip3 install --target='/usr/local/lib/python3.6/dist-packages/' jupyterhub==1.0.0" shape="box"];
  "sha256:5efe682787b6f8fb8b3a352e4b12b2934f3d43b833f73d8cd0e50cd931fa5348" [label="copy{src=/fix-permissions, dest=/usr/local/bin/}" shape="note"];
  "sha256:fadf4fe6c2aeb827d11b9441303a9978f3d360e1994f8364a0aac40c403fee75" [label="copy{src=/start.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:14b1282194ccaed000fc02b052b1ca896a7665deca8add5de7a7357211a44919" [label="copy{src=/start-notebook.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:230980a0288b39ad89bc22d9041d8ce670f2d266e4aebb367ec24ae34dbf636d" [label="copy{src=/start-singleuser.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b8ad6bea0afda521e2209615cc6d43bd84fc309651bd98475fc18a08b536ed41" [label="copy{src=/clean.sh, dest=/usr/local/bin/clean}" shape="note"];
  "sha256:49b19439fd2a67f637488e60267ec01f4aadb7094d25678d4be57251ec4fa625" [label="/bin/sh -c chmod +x /usr/local/bin/clean" shape="box"];
  "sha256:06d7b2adf6b31939f2a153ba7fb3b2868f930ea36895480a18be543d64de89e3" [label="copy{src=/jupyter_notebook_config.py, dest=/etc/jupyter/}" shape="note"];
  "sha256:6a6b1e19af46294ad97814b344b706156dbe006e3439727f09c6f07e55ff463a" [label="/bin/sh -c chmod +x /usr/local/bin/start.sh &&   chmod +x /usr/local/bin/start-notebook.sh &&   chmod +x /usr/local/bin/start-singleuser.sh &&   chmod +x /usr/local/bin/clean &&  chmod +x /usr/local/bin/fix-permissions" shape="box"];
  "sha256:2c20f0715af05aafc8f25ccb8a2310c7d9b94fa3e36629272bd2f6f778977de8" [label="/bin/sh -c groupadd wheel -g 11 &&   echo \"auth required pam_wheel.so use_uid\" >> /etc/pam.d/su &&   chmod g+w /etc/passwd &&   fix-permissions $HOME &&   fix-permissions /opt &&   fix-permissions /var/lib/shiny-server &&   fix-permissions /var/log/shiny-server &&   fix-permissions /var/log/rstudio-server &&   fix-permissions /var/lib/rstudio-server" shape="box"];
  "sha256:28ad0fac57412a4a8c05e81eb4c872d4ee9e6c7046919f062d1580248f889b59" [label="/bin/sh -c R -e 'radiant.update::radiant.update()'" shape="box"];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" [label="https://github.com/krallin/tini/releases/download/v0.18.0/tini" shape="ellipse"];
  "sha256:f711d5c4b933ecade3a1d10a0b96ed19d7e0df14bfbc8c33355d55aac99d2979" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:fb64d55a0d1a7302e67df5d9b919824c6de839122588a7759b62985df20eeae6" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:eafbaedc3c287b4195977bee3dc26185c8c8a3b317b93a323bd5468e6349f7aa" [label="copy{src=/postgresql.conf, dest=/etc/postgresql/main/postgresql.conf}" shape="note"];
  "sha256:78d61da50405b6396b22b2c34c9525609559b5387c2cc7cca9d1d1daade9547e" [label="copy{src=/pg_hba.conf, dest=/etc/postgresql/main/pg_hba.conf}" shape="note"];
  "sha256:b304dc5976e72ef9288e949dd27c62d1a9e144b522de5fe0a052326b7879c890" [label="/bin/sh -c echo \"HOME=/home/${NB_USER}\" >> /etc/R/Renviron.site   && echo \"USER=${NB_USER}\" >> /etc/R/Renviron.site" shape="box"];
  "sha256:64ab64bdf1bf83662f3c15afd96f0910dd0dfc3125c54224b3818d9f5e4a48ef" [label="sha256:64ab64bdf1bf83662f3c15afd96f0910dd0dfc3125c54224b3818d9f5e4a48ef" shape="plaintext"];
  "sha256:766289bc91ae0e9d4939d691b7d3d9644f35a982eae884f24b4789e26d06762d" -> "sha256:fe732cf8b18075677f54a50c74d9c7ea22f5295485a8d7d93b9d8a86bf7d77ab" [label=""];
  "sha256:fe732cf8b18075677f54a50c74d9c7ea22f5295485a8d7d93b9d8a86bf7d77ab" -> "sha256:5efe682787b6f8fb8b3a352e4b12b2934f3d43b833f73d8cd0e50cd931fa5348" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:5efe682787b6f8fb8b3a352e4b12b2934f3d43b833f73d8cd0e50cd931fa5348" [label=""];
  "sha256:5efe682787b6f8fb8b3a352e4b12b2934f3d43b833f73d8cd0e50cd931fa5348" -> "sha256:fadf4fe6c2aeb827d11b9441303a9978f3d360e1994f8364a0aac40c403fee75" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:fadf4fe6c2aeb827d11b9441303a9978f3d360e1994f8364a0aac40c403fee75" [label=""];
  "sha256:fadf4fe6c2aeb827d11b9441303a9978f3d360e1994f8364a0aac40c403fee75" -> "sha256:14b1282194ccaed000fc02b052b1ca896a7665deca8add5de7a7357211a44919" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:14b1282194ccaed000fc02b052b1ca896a7665deca8add5de7a7357211a44919" [label=""];
  "sha256:14b1282194ccaed000fc02b052b1ca896a7665deca8add5de7a7357211a44919" -> "sha256:230980a0288b39ad89bc22d9041d8ce670f2d266e4aebb367ec24ae34dbf636d" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:230980a0288b39ad89bc22d9041d8ce670f2d266e4aebb367ec24ae34dbf636d" [label=""];
  "sha256:230980a0288b39ad89bc22d9041d8ce670f2d266e4aebb367ec24ae34dbf636d" -> "sha256:b8ad6bea0afda521e2209615cc6d43bd84fc309651bd98475fc18a08b536ed41" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:b8ad6bea0afda521e2209615cc6d43bd84fc309651bd98475fc18a08b536ed41" [label=""];
  "sha256:b8ad6bea0afda521e2209615cc6d43bd84fc309651bd98475fc18a08b536ed41" -> "sha256:49b19439fd2a67f637488e60267ec01f4aadb7094d25678d4be57251ec4fa625" [label=""];
  "sha256:49b19439fd2a67f637488e60267ec01f4aadb7094d25678d4be57251ec4fa625" -> "sha256:06d7b2adf6b31939f2a153ba7fb3b2868f930ea36895480a18be543d64de89e3" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:06d7b2adf6b31939f2a153ba7fb3b2868f930ea36895480a18be543d64de89e3" [label=""];
  "sha256:06d7b2adf6b31939f2a153ba7fb3b2868f930ea36895480a18be543d64de89e3" -> "sha256:6a6b1e19af46294ad97814b344b706156dbe006e3439727f09c6f07e55ff463a" [label=""];
  "sha256:6a6b1e19af46294ad97814b344b706156dbe006e3439727f09c6f07e55ff463a" -> "sha256:2c20f0715af05aafc8f25ccb8a2310c7d9b94fa3e36629272bd2f6f778977de8" [label=""];
  "sha256:2c20f0715af05aafc8f25ccb8a2310c7d9b94fa3e36629272bd2f6f778977de8" -> "sha256:28ad0fac57412a4a8c05e81eb4c872d4ee9e6c7046919f062d1580248f889b59" [label=""];
  "sha256:28ad0fac57412a4a8c05e81eb4c872d4ee9e6c7046919f062d1580248f889b59" -> "sha256:f711d5c4b933ecade3a1d10a0b96ed19d7e0df14bfbc8c33355d55aac99d2979" [label=""];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" -> "sha256:f711d5c4b933ecade3a1d10a0b96ed19d7e0df14bfbc8c33355d55aac99d2979" [label=""];
  "sha256:f711d5c4b933ecade3a1d10a0b96ed19d7e0df14bfbc8c33355d55aac99d2979" -> "sha256:fb64d55a0d1a7302e67df5d9b919824c6de839122588a7759b62985df20eeae6" [label=""];
  "sha256:fb64d55a0d1a7302e67df5d9b919824c6de839122588a7759b62985df20eeae6" -> "sha256:eafbaedc3c287b4195977bee3dc26185c8c8a3b317b93a323bd5468e6349f7aa" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:eafbaedc3c287b4195977bee3dc26185c8c8a3b317b93a323bd5468e6349f7aa" [label=""];
  "sha256:eafbaedc3c287b4195977bee3dc26185c8c8a3b317b93a323bd5468e6349f7aa" -> "sha256:78d61da50405b6396b22b2c34c9525609559b5387c2cc7cca9d1d1daade9547e" [label=""];
  "sha256:c13e37c238286ae582c5aa83dc0e80dd072ef95ffcc92a5f723f4dfeba574d8f" -> "sha256:78d61da50405b6396b22b2c34c9525609559b5387c2cc7cca9d1d1daade9547e" [label=""];
  "sha256:78d61da50405b6396b22b2c34c9525609559b5387c2cc7cca9d1d1daade9547e" -> "sha256:b304dc5976e72ef9288e949dd27c62d1a9e144b522de5fe0a052326b7879c890" [label=""];
  "sha256:b304dc5976e72ef9288e949dd27c62d1a9e144b522de5fe0a052326b7879c890" -> "sha256:64ab64bdf1bf83662f3c15afd96f0910dd0dfc3125c54224b3818d9f5e4a48ef" [label=""];
}
