[app/sources/287524132.Dockerfile]
digraph {
  "sha256:5dbef10b1c86f6a532578d5ac6574dc54d946ffe0713fa54f9af44349a742290" [label="docker-image://docker.io/aurblobs/arch-multilib:latest" shape="ellipse"];
  "sha256:531278a47bef0871c44d592cb05c0f514c907feccf1738e12365ca64674bdc77" [label="/bin/sh -c pacman -Sy --noconfirm \tbase \tbase-devel \tgit xdelta3" shape="box"];
  "sha256:147af0d7308869112b4dc88a9e6638b5ba912a3568d452bc11bf45e73531f0d3" [label="/bin/sh -c rm /usr/share/libalpm/hooks/package-cleanup.hook" shape="box"];
  "sha256:cd985aef57cc8540558c10ed41000aae56c1a24015cae8377970a72ab81ed427" [label="local://context" shape="ellipse"];
  "sha256:f3ff8c45cd93001c09ba960cc478e11546512073445c4d4bf362e613c1dd2733" [label="copy{src=/sudoers, dest=/etc/sudoers}" shape="note"];
  "sha256:7f5cf925682e024589e80613f52d3aa39ea37ec102392c1f46b1b65f65e73d26" [label="/bin/sh -c useradd -m build" shape="box"];
  "sha256:48ca3402f3038a4c7a80bef07392f534241001de397947c980be8bffc106d9b2" [label="copy{src=/init.sh, dest=/},copy{src=/build.sh, dest=/},copy{src=/sign.sh, dest=/},copy{src=/remove.sh, dest=/}" shape="note"];
  "sha256:4ad501fe63a997b8123a10a7b47c36c3328d46e6cd10065303362689eaf49d6c" [label="sha256:4ad501fe63a997b8123a10a7b47c36c3328d46e6cd10065303362689eaf49d6c" shape="plaintext"];
  "sha256:5dbef10b1c86f6a532578d5ac6574dc54d946ffe0713fa54f9af44349a742290" -> "sha256:531278a47bef0871c44d592cb05c0f514c907feccf1738e12365ca64674bdc77" [label=""];
  "sha256:531278a47bef0871c44d592cb05c0f514c907feccf1738e12365ca64674bdc77" -> "sha256:147af0d7308869112b4dc88a9e6638b5ba912a3568d452bc11bf45e73531f0d3" [label=""];
  "sha256:147af0d7308869112b4dc88a9e6638b5ba912a3568d452bc11bf45e73531f0d3" -> "sha256:f3ff8c45cd93001c09ba960cc478e11546512073445c4d4bf362e613c1dd2733" [label=""];
  "sha256:cd985aef57cc8540558c10ed41000aae56c1a24015cae8377970a72ab81ed427" -> "sha256:f3ff8c45cd93001c09ba960cc478e11546512073445c4d4bf362e613c1dd2733" [label=""];
  "sha256:f3ff8c45cd93001c09ba960cc478e11546512073445c4d4bf362e613c1dd2733" -> "sha256:7f5cf925682e024589e80613f52d3aa39ea37ec102392c1f46b1b65f65e73d26" [label=""];
  "sha256:7f5cf925682e024589e80613f52d3aa39ea37ec102392c1f46b1b65f65e73d26" -> "sha256:48ca3402f3038a4c7a80bef07392f534241001de397947c980be8bffc106d9b2" [label=""];
  "sha256:cd985aef57cc8540558c10ed41000aae56c1a24015cae8377970a72ab81ed427" -> "sha256:48ca3402f3038a4c7a80bef07392f534241001de397947c980be8bffc106d9b2" [label=""];
  "sha256:48ca3402f3038a4c7a80bef07392f534241001de397947c980be8bffc106d9b2" -> "sha256:4ad501fe63a997b8123a10a7b47c36c3328d46e6cd10065303362689eaf49d6c" [label=""];
}

