[app/sources/252770141.Dockerfile]
digraph {
  "sha256:89fcaa1439e97d15a9710db82859d960ea2533ebda4892cc7d9dc507b58317fc" [label="local://context" shape="ellipse"];
  "sha256:6afaacad6fa3ffc42ec8efeed8dbdfa2d816c6d98037203a67cc7e693eb822f3" [label="copy{src=/--from=build, dest=/curl},copy{src=/usr/bin/curl, dest=/curl}" shape="note"];
  "sha256:fd7e07ea4e6a8e284c75f6b8588f890560838c4b21084623c2dff9914f009a92" [label="sha256:fd7e07ea4e6a8e284c75f6b8588f890560838c4b21084623c2dff9914f009a92" shape="plaintext"];
  "sha256:89fcaa1439e97d15a9710db82859d960ea2533ebda4892cc7d9dc507b58317fc" -> "sha256:6afaacad6fa3ffc42ec8efeed8dbdfa2d816c6d98037203a67cc7e693eb822f3" [label=""];
  "sha256:6afaacad6fa3ffc42ec8efeed8dbdfa2d816c6d98037203a67cc7e693eb822f3" -> "sha256:fd7e07ea4e6a8e284c75f6b8588f890560838c4b21084623c2dff9914f009a92" [label=""];
}

