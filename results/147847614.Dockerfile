[app/sources/147847614.Dockerfile]
digraph {
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:4eeb6280a4d94f1a13815617f9f92e22258bc64cdeb838afc30533a83d0c9e7c" [label="copy{src=/.docker/apt-get-install, dest=/usr/local/bin/apt-get-install}" shape="note"];
  "sha256:8ac8a7da36d32ebd4aca117e444ac485e6c7574a8001c2601fd9ae22e088240f" [label="/bin/sh -c chmod +x /usr/local/bin/apt-get-install" shape="box"];
  "sha256:1b120456c62f53826e5cd178ab0b8aaf1a604c6759558b9278d4680d6d3450d0" [label="/bin/sh -c apt-get-install build-essential libtool g++ gcc     texinfo curl wget automake autoconf python python-dev git subversion     unzip virtualenvwrapper sudo  git virtualenvwrapper" shape="box"];
  "sha256:2a00a67b08d09b68659c5ff36a2285a8cc370418810651fe2ab8381f1310227c" [label="/bin/sh -c useradd -m ctf" shape="box"];
  "sha256:33502449e56c06dae95c5f094bcd5a0ac6d11eba11ef401cd50cb79ca9ba7d48" [label="/bin/sh -c echo \"ctf ALL=NOPASSWD: ALL\" > /etc/sudoers.d/ctf" shape="box"];
  "sha256:834863db89a2133284630f53dedc0b4fc88a7b1044c730eb774bd076a569cd7f" [label="copy{src=/.git, dest=/home/ctf/tools/.git}" shape="note"];
  "sha256:1aac6755236cf1bce4c7223ea1ae4fee3e3368205308de5ed99a9de5e4311899" [label="/bin/sh -c chown -R ctf.ctf /home/ctf/tools" shape="box"];
  "sha256:19bb8b61127f3361cbc5e3bd6b586891ddb65d7c3b91de72ac32f2cebe3fcd4e" [label="mkdir{path=/home/ctf/tools}" shape="note"];
  "sha256:6410f8c248a9e8ea3db5bc1099b633c234457240ea3e58fd8685908ba00c99ce" [label="/bin/sh -c git checkout ." shape="box"];
  "sha256:d32c7653aacd34cac34fe1491b015932d752ef93ebd26b31033387ab28554919" [label="copy{src=/bin/manage-tools, dest=/home/ctf/tools/bin/}" shape="note"];
  "sha256:dccf87c067c8ffdbf04136de2a07afd215dff7362d2390409a4df49771bd50f8" [label="copy{src=/bin/ctf-tools-pip, dest=/home/ctf/tools/bin/}" shape="note"];
  "sha256:da895ea026845ddc4e9f8704cb120731a2c6582b8cfe406c9dca962f2c628bfd" [label="copy{src=/bin/ctf-tools-venv-activate, dest=/home/ctf/tools/bin/}" shape="note"];
  "sha256:add8cf66614649eb9217fa4b4f890470553da92c04395b1f05c5919ca59b6ef3" [label="copy{src=/bin/ctf-tools-venv-activate3, dest=/home/ctf/tools/bin/}" shape="note"];
  "sha256:7df4e7cf263cab0662a31cd19620c80185c7d7308f1b0e406072147c8e6a6f27" [label="/bin/sh -c chown -R ctf.ctf /home/ctf/tools" shape="box"];
  "sha256:7512b04494c08beb144cb41e8935accf52a68bdd28f37b9024eafee7cc40da0a" [label="/bin/sh -c bin/manage-tools -s setup" shape="box"];
  "sha256:35266eb069067563880adddc6389bbd6881dca5bc515ac55565d4f804407cb9e" [label="/bin/sh -c bin/ctf-tools-pip install appdirs" shape="box"];
  "sha256:c18554e7c01f9df779d7a1f209335fe18237f0a2a657ca988a2187e12fe322ce" [label="/bin/sh -c echo 'source $(which ctf-tools-venv-activate)' >> /home/ctf/.bashrc" shape="box"];
  "sha256:bb166d1d0c3bda8c035fab62b2316a2a6a72ba2c2faa0e80684566f4348c3acd" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:c55cad635c95ada529d8d3a33db32a28b1385716a87b0847fa6525432c105388" [label="sha256:c55cad635c95ada529d8d3a33db32a28b1385716a87b0847fa6525432c105388" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:4eeb6280a4d94f1a13815617f9f92e22258bc64cdeb838afc30533a83d0c9e7c" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:4eeb6280a4d94f1a13815617f9f92e22258bc64cdeb838afc30533a83d0c9e7c" [label=""];
  "sha256:4eeb6280a4d94f1a13815617f9f92e22258bc64cdeb838afc30533a83d0c9e7c" -> "sha256:8ac8a7da36d32ebd4aca117e444ac485e6c7574a8001c2601fd9ae22e088240f" [label=""];
  "sha256:8ac8a7da36d32ebd4aca117e444ac485e6c7574a8001c2601fd9ae22e088240f" -> "sha256:1b120456c62f53826e5cd178ab0b8aaf1a604c6759558b9278d4680d6d3450d0" [label=""];
  "sha256:1b120456c62f53826e5cd178ab0b8aaf1a604c6759558b9278d4680d6d3450d0" -> "sha256:2a00a67b08d09b68659c5ff36a2285a8cc370418810651fe2ab8381f1310227c" [label=""];
  "sha256:2a00a67b08d09b68659c5ff36a2285a8cc370418810651fe2ab8381f1310227c" -> "sha256:33502449e56c06dae95c5f094bcd5a0ac6d11eba11ef401cd50cb79ca9ba7d48" [label=""];
  "sha256:33502449e56c06dae95c5f094bcd5a0ac6d11eba11ef401cd50cb79ca9ba7d48" -> "sha256:834863db89a2133284630f53dedc0b4fc88a7b1044c730eb774bd076a569cd7f" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:834863db89a2133284630f53dedc0b4fc88a7b1044c730eb774bd076a569cd7f" [label=""];
  "sha256:834863db89a2133284630f53dedc0b4fc88a7b1044c730eb774bd076a569cd7f" -> "sha256:1aac6755236cf1bce4c7223ea1ae4fee3e3368205308de5ed99a9de5e4311899" [label=""];
  "sha256:1aac6755236cf1bce4c7223ea1ae4fee3e3368205308de5ed99a9de5e4311899" -> "sha256:19bb8b61127f3361cbc5e3bd6b586891ddb65d7c3b91de72ac32f2cebe3fcd4e" [label=""];
  "sha256:19bb8b61127f3361cbc5e3bd6b586891ddb65d7c3b91de72ac32f2cebe3fcd4e" -> "sha256:6410f8c248a9e8ea3db5bc1099b633c234457240ea3e58fd8685908ba00c99ce" [label=""];
  "sha256:6410f8c248a9e8ea3db5bc1099b633c234457240ea3e58fd8685908ba00c99ce" -> "sha256:d32c7653aacd34cac34fe1491b015932d752ef93ebd26b31033387ab28554919" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:d32c7653aacd34cac34fe1491b015932d752ef93ebd26b31033387ab28554919" [label=""];
  "sha256:d32c7653aacd34cac34fe1491b015932d752ef93ebd26b31033387ab28554919" -> "sha256:dccf87c067c8ffdbf04136de2a07afd215dff7362d2390409a4df49771bd50f8" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:dccf87c067c8ffdbf04136de2a07afd215dff7362d2390409a4df49771bd50f8" [label=""];
  "sha256:dccf87c067c8ffdbf04136de2a07afd215dff7362d2390409a4df49771bd50f8" -> "sha256:da895ea026845ddc4e9f8704cb120731a2c6582b8cfe406c9dca962f2c628bfd" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:da895ea026845ddc4e9f8704cb120731a2c6582b8cfe406c9dca962f2c628bfd" [label=""];
  "sha256:da895ea026845ddc4e9f8704cb120731a2c6582b8cfe406c9dca962f2c628bfd" -> "sha256:add8cf66614649eb9217fa4b4f890470553da92c04395b1f05c5919ca59b6ef3" [label=""];
  "sha256:f139fca8a6c3bc231de3c5d53139c336c5bcc04abf595fd3d87757641232db35" -> "sha256:add8cf66614649eb9217fa4b4f890470553da92c04395b1f05c5919ca59b6ef3" [label=""];
  "sha256:add8cf66614649eb9217fa4b4f890470553da92c04395b1f05c5919ca59b6ef3" -> "sha256:7df4e7cf263cab0662a31cd19620c80185c7d7308f1b0e406072147c8e6a6f27" [label=""];
  "sha256:7df4e7cf263cab0662a31cd19620c80185c7d7308f1b0e406072147c8e6a6f27" -> "sha256:7512b04494c08beb144cb41e8935accf52a68bdd28f37b9024eafee7cc40da0a" [label=""];
  "sha256:7512b04494c08beb144cb41e8935accf52a68bdd28f37b9024eafee7cc40da0a" -> "sha256:35266eb069067563880adddc6389bbd6881dca5bc515ac55565d4f804407cb9e" [label=""];
  "sha256:35266eb069067563880adddc6389bbd6881dca5bc515ac55565d4f804407cb9e" -> "sha256:c18554e7c01f9df779d7a1f209335fe18237f0a2a657ca988a2187e12fe322ce" [label=""];
  "sha256:c18554e7c01f9df779d7a1f209335fe18237f0a2a657ca988a2187e12fe322ce" -> "sha256:bb166d1d0c3bda8c035fab62b2316a2a6a72ba2c2faa0e80684566f4348c3acd" [label=""];
  "sha256:bb166d1d0c3bda8c035fab62b2316a2a6a72ba2c2faa0e80684566f4348c3acd" -> "sha256:c55cad635c95ada529d8d3a33db32a28b1385716a87b0847fa6525432c105388" [label=""];
}
