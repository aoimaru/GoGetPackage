[app/sources/312705456.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:05a6ce13bfb0966e51ef6e946a7d9ca96b58160b0a1d47881788abd9940f2ce4" [label="/bin/sh -c dnf update -y" shape="box"];
  "sha256:4acea5c9de657dc830b67808147b9e1d6d36f0c61305603639e006ceeb091ddc" [label="/bin/sh -c dnf install -y vim sudo net-tools less man python procps-ng tcl expect wget openssh-server" shape="box"];
  "sha256:3bd1e7c75b757528239e444fb6b39b0289a96476022b3f25fa98a685a091d6b6" [label="/bin/sh -c dnf install -y findutils" shape="box"];
  "sha256:fef5f0940dc7326f6768146ba6e450397d77fc67e277745303b6e1db00dc4c70" [label="/bin/sh -c wget https://forensics.cert.org/cert-forensics-tools-release-24.rpm && rpm -ivh cert-forensics-tools-release-24.rpm" shape="box"];
  "sha256:83868841214a157f847edeef371bb77345f060910ed37fad013f85e18867f43f" [label="local://context" shape="ellipse"];
  "sha256:897abb13e55f4e08884f521a94d79e69fd5a5ba98c1e3be6501635a92d0c8c03" [label="copy{src=/fed_sudoers, dest=/etc/sudoers}" shape="note"];
  "sha256:9103c37182e22ed5a02eb53668576d05fbef4f6ece5f278327525c53d86fc235" [label="/bin/sh -c useradd -ms /bin/bash abby" shape="box"];
  "sha256:b5ffe18636d65c2084d7b604455091deb27a3a345cc723a0664c81ffd7517957" [label="/bin/sh -c echo \"abby:abby\" | chpasswd" shape="box"];
  "sha256:eaa765b6567ba8b543e643fc1b77e9a5ca3eca5fffcecb9789e62209b6a3dc6f" [label="/bin/sh -c chown -R abby:abby /home/abby" shape="box"];
  "sha256:d850473d6dc60870af6078029a01a73e22ea7fbeec20786675fd7195d2be6d57" [label="/bin/sh -c usermod abby -a -G wheel" shape="box"];
  "sha256:0a43f89412602affa02352830316a12700c3895dce7dc287dfb58f8e33a9b698" [label="copy{src=/.student.tar.gz, dest=/home/abby}" shape="note"];
  "sha256:7ce3c4fc0df74bd98b47cf08e04f68027306745a5748e85d23f99a5c027a6396" [label="/bin/sh -c echo \"source $HOME/.local/bin/bash-preexec.sh\" >> /home/abby/.bash_profile" shape="box"];
  "sha256:303d4b74c21b6c44b2eda0cd59ae9ff639d3db9f6b42a63a267e7b3a080e04c4" [label="/bin/sh -c echo \"source $HOME/.local/bin/bash-pre-capinout.sh\" >> /home/abby/.bash_profile" shape="box"];
  "sha256:b32ff9199a1a36629f86fef12f20f794248d5ed0fb2dce2d4637c0f48974e39e" [label="/bin/sh -c echo \"cd\" >> $HOME/.bash_profile" shape="box"];
  "sha256:da0ba083261993fbd4f466124eb56111143438ef3e32f0d1ce1d0fc49469898a" [label="/bin/sh -c echo \"source $HOME/.local/bin/startup.sh\" >> /home/abby/.bash_profile" shape="box"];
  "sha256:cada48244f8c6649c01dcfd243d41fc1160deffa920e6511ece944a9e1885a16" [label="/bin/sh -c echo \"\" > $HOME/.bash_logout" shape="box"];
  "sha256:809b072eb8f49aad0538ad0e1ca436a2f4070c13b902c6f0fb52242e682601a3" [label="/bin/sh -c mkdir $HOME/volatile" shape="box"];
  "sha256:186cff3d833596e2337d2cc390029474380728bac49eb5bf472ea29b0665ba64" [label="/bin/sh -c mkdir $HOME/nonvolatile" shape="box"];
  "sha256:c0dcbf7e9282f4fe160a83594b19f8a57ae9d998d105ea3e7ee50455058d116c" [label="/bin/sh -c mkdir $HOME/interesting" shape="box"];
  "sha256:aa85d38b950e85bf3d003ba24d4db313d3dcc07af67856a2c80804f959f74f03" [label="sha256:aa85d38b950e85bf3d003ba24d4db313d3dcc07af67856a2c80804f959f74f03" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:05a6ce13bfb0966e51ef6e946a7d9ca96b58160b0a1d47881788abd9940f2ce4" [label=""];
  "sha256:05a6ce13bfb0966e51ef6e946a7d9ca96b58160b0a1d47881788abd9940f2ce4" -> "sha256:4acea5c9de657dc830b67808147b9e1d6d36f0c61305603639e006ceeb091ddc" [label=""];
  "sha256:4acea5c9de657dc830b67808147b9e1d6d36f0c61305603639e006ceeb091ddc" -> "sha256:3bd1e7c75b757528239e444fb6b39b0289a96476022b3f25fa98a685a091d6b6" [label=""];
  "sha256:3bd1e7c75b757528239e444fb6b39b0289a96476022b3f25fa98a685a091d6b6" -> "sha256:fef5f0940dc7326f6768146ba6e450397d77fc67e277745303b6e1db00dc4c70" [label=""];
  "sha256:fef5f0940dc7326f6768146ba6e450397d77fc67e277745303b6e1db00dc4c70" -> "sha256:897abb13e55f4e08884f521a94d79e69fd5a5ba98c1e3be6501635a92d0c8c03" [label=""];
  "sha256:83868841214a157f847edeef371bb77345f060910ed37fad013f85e18867f43f" -> "sha256:897abb13e55f4e08884f521a94d79e69fd5a5ba98c1e3be6501635a92d0c8c03" [label=""];
  "sha256:897abb13e55f4e08884f521a94d79e69fd5a5ba98c1e3be6501635a92d0c8c03" -> "sha256:9103c37182e22ed5a02eb53668576d05fbef4f6ece5f278327525c53d86fc235" [label=""];
  "sha256:9103c37182e22ed5a02eb53668576d05fbef4f6ece5f278327525c53d86fc235" -> "sha256:b5ffe18636d65c2084d7b604455091deb27a3a345cc723a0664c81ffd7517957" [label=""];
  "sha256:b5ffe18636d65c2084d7b604455091deb27a3a345cc723a0664c81ffd7517957" -> "sha256:eaa765b6567ba8b543e643fc1b77e9a5ca3eca5fffcecb9789e62209b6a3dc6f" [label=""];
  "sha256:eaa765b6567ba8b543e643fc1b77e9a5ca3eca5fffcecb9789e62209b6a3dc6f" -> "sha256:d850473d6dc60870af6078029a01a73e22ea7fbeec20786675fd7195d2be6d57" [label=""];
  "sha256:d850473d6dc60870af6078029a01a73e22ea7fbeec20786675fd7195d2be6d57" -> "sha256:0a43f89412602affa02352830316a12700c3895dce7dc287dfb58f8e33a9b698" [label=""];
  "sha256:83868841214a157f847edeef371bb77345f060910ed37fad013f85e18867f43f" -> "sha256:0a43f89412602affa02352830316a12700c3895dce7dc287dfb58f8e33a9b698" [label=""];
  "sha256:0a43f89412602affa02352830316a12700c3895dce7dc287dfb58f8e33a9b698" -> "sha256:7ce3c4fc0df74bd98b47cf08e04f68027306745a5748e85d23f99a5c027a6396" [label=""];
  "sha256:7ce3c4fc0df74bd98b47cf08e04f68027306745a5748e85d23f99a5c027a6396" -> "sha256:303d4b74c21b6c44b2eda0cd59ae9ff639d3db9f6b42a63a267e7b3a080e04c4" [label=""];
  "sha256:303d4b74c21b6c44b2eda0cd59ae9ff639d3db9f6b42a63a267e7b3a080e04c4" -> "sha256:b32ff9199a1a36629f86fef12f20f794248d5ed0fb2dce2d4637c0f48974e39e" [label=""];
  "sha256:b32ff9199a1a36629f86fef12f20f794248d5ed0fb2dce2d4637c0f48974e39e" -> "sha256:da0ba083261993fbd4f466124eb56111143438ef3e32f0d1ce1d0fc49469898a" [label=""];
  "sha256:da0ba083261993fbd4f466124eb56111143438ef3e32f0d1ce1d0fc49469898a" -> "sha256:cada48244f8c6649c01dcfd243d41fc1160deffa920e6511ece944a9e1885a16" [label=""];
  "sha256:cada48244f8c6649c01dcfd243d41fc1160deffa920e6511ece944a9e1885a16" -> "sha256:809b072eb8f49aad0538ad0e1ca436a2f4070c13b902c6f0fb52242e682601a3" [label=""];
  "sha256:809b072eb8f49aad0538ad0e1ca436a2f4070c13b902c6f0fb52242e682601a3" -> "sha256:186cff3d833596e2337d2cc390029474380728bac49eb5bf472ea29b0665ba64" [label=""];
  "sha256:186cff3d833596e2337d2cc390029474380728bac49eb5bf472ea29b0665ba64" -> "sha256:c0dcbf7e9282f4fe160a83594b19f8a57ae9d998d105ea3e7ee50455058d116c" [label=""];
  "sha256:c0dcbf7e9282f4fe160a83594b19f8a57ae9d998d105ea3e7ee50455058d116c" -> "sha256:aa85d38b950e85bf3d003ba24d4db313d3dcc07af67856a2c80804f959f74f03" [label=""];
}

