[app/sources/461856599.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label="/bin/sh -c apt-get update -qy && apt-get install mutt offlineimap vim-nox abook elinks curl tmux cron zsh -y" shape="box"];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" [label="local://context" shape="ellipse"];
  "sha256:cef910cabdfcd23a96c2a2708991f62bca7017e1a722d136e2bf1e02cfad89f6" [label="copy{src=/.muttrc, dest=/}" shape="note"];
  "sha256:06e593c4bc7fdc3d2160c1e2a85f57907256fe2079b4a91be0c05aac8d67b33e" [label="copy{src=/.offlineimaprc, dest=/}" shape="note"];
  "sha256:1ef7265e8d6bc36c177fb7fdaaff91dc01a1cf6ac398acdbbafb45035ef32552" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:b203976516ce04e154120011b5c0fcb139e91acd51969b91eecb09f4777f6bdf" [label="copy{src=/mutt, dest=/.mutt}" shape="note"];
  "sha256:ab4d41c6da405bfd94de17a92624ca33f146105d4f399c2185a08cc495d9767d" [label="copy{src=/vim, dest=/.vim}" shape="note"];
  "sha256:0eafec54fb1242c4d4919e7d1d5b4038d3292bcfd02941045dbd368780d756ff" [label="copy{src=/vimrc, dest=/.vimrc}" shape="note"];
  "sha256:f12e90411857e73530148d78a241386bd2749e3778719d1602f1aa850f63e06f" [label="copy{src=/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:1387a1cd76254d6cae6f7bed9f86f8e376a6ccecf56822caa8ddbbc3e3039a83" [label="/bin/sh -c chmod 644 /etc/crontab" shape="box"];
  "sha256:defd28149183072affecac3cc510c8f609c41480eb14c786208c54c67824ac9b" [label="/bin/sh -c mkdir /Mail" shape="box"];
  "sha256:d9ca3a9cff67de9336786ba0b1107ba7519ac037eacfa5b4cc381ac24429823a" [label="/bin/sh -c mkdir /.offlineimap" shape="box"];
  "sha256:d88c0dee87bf6928dd187b703144e38bb35f470235b05ac8d7180c831c924af5" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:905ce3ce7ff576d6ee3bf0abe075cda3a3363f53633447ab1536609476c66814" [label="sha256:905ce3ce7ff576d6ee3bf0abe075cda3a3363f53633447ab1536609476c66814" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" [label=""];
  "sha256:0aed62af76f1471e99934251eda64b227d845cade1e5d6922481eb08c0d3b57f" -> "sha256:cef910cabdfcd23a96c2a2708991f62bca7017e1a722d136e2bf1e02cfad89f6" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:cef910cabdfcd23a96c2a2708991f62bca7017e1a722d136e2bf1e02cfad89f6" [label=""];
  "sha256:cef910cabdfcd23a96c2a2708991f62bca7017e1a722d136e2bf1e02cfad89f6" -> "sha256:06e593c4bc7fdc3d2160c1e2a85f57907256fe2079b4a91be0c05aac8d67b33e" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:06e593c4bc7fdc3d2160c1e2a85f57907256fe2079b4a91be0c05aac8d67b33e" [label=""];
  "sha256:06e593c4bc7fdc3d2160c1e2a85f57907256fe2079b4a91be0c05aac8d67b33e" -> "sha256:1ef7265e8d6bc36c177fb7fdaaff91dc01a1cf6ac398acdbbafb45035ef32552" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:1ef7265e8d6bc36c177fb7fdaaff91dc01a1cf6ac398acdbbafb45035ef32552" [label=""];
  "sha256:1ef7265e8d6bc36c177fb7fdaaff91dc01a1cf6ac398acdbbafb45035ef32552" -> "sha256:b203976516ce04e154120011b5c0fcb139e91acd51969b91eecb09f4777f6bdf" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:b203976516ce04e154120011b5c0fcb139e91acd51969b91eecb09f4777f6bdf" [label=""];
  "sha256:b203976516ce04e154120011b5c0fcb139e91acd51969b91eecb09f4777f6bdf" -> "sha256:ab4d41c6da405bfd94de17a92624ca33f146105d4f399c2185a08cc495d9767d" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:ab4d41c6da405bfd94de17a92624ca33f146105d4f399c2185a08cc495d9767d" [label=""];
  "sha256:ab4d41c6da405bfd94de17a92624ca33f146105d4f399c2185a08cc495d9767d" -> "sha256:0eafec54fb1242c4d4919e7d1d5b4038d3292bcfd02941045dbd368780d756ff" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:0eafec54fb1242c4d4919e7d1d5b4038d3292bcfd02941045dbd368780d756ff" [label=""];
  "sha256:0eafec54fb1242c4d4919e7d1d5b4038d3292bcfd02941045dbd368780d756ff" -> "sha256:f12e90411857e73530148d78a241386bd2749e3778719d1602f1aa850f63e06f" [label=""];
  "sha256:3c9cafc95326b101dc0ea505c5e0b18e4e1aeba2f935eb11fbac67e0ccab66fb" -> "sha256:f12e90411857e73530148d78a241386bd2749e3778719d1602f1aa850f63e06f" [label=""];
  "sha256:f12e90411857e73530148d78a241386bd2749e3778719d1602f1aa850f63e06f" -> "sha256:1387a1cd76254d6cae6f7bed9f86f8e376a6ccecf56822caa8ddbbc3e3039a83" [label=""];
  "sha256:1387a1cd76254d6cae6f7bed9f86f8e376a6ccecf56822caa8ddbbc3e3039a83" -> "sha256:defd28149183072affecac3cc510c8f609c41480eb14c786208c54c67824ac9b" [label=""];
  "sha256:defd28149183072affecac3cc510c8f609c41480eb14c786208c54c67824ac9b" -> "sha256:d9ca3a9cff67de9336786ba0b1107ba7519ac037eacfa5b4cc381ac24429823a" [label=""];
  "sha256:d9ca3a9cff67de9336786ba0b1107ba7519ac037eacfa5b4cc381ac24429823a" -> "sha256:d88c0dee87bf6928dd187b703144e38bb35f470235b05ac8d7180c831c924af5" [label=""];
  "sha256:d88c0dee87bf6928dd187b703144e38bb35f470235b05ac8d7180c831c924af5" -> "sha256:905ce3ce7ff576d6ee3bf0abe075cda3a3363f53633447ab1536609476c66814" [label=""];
}

