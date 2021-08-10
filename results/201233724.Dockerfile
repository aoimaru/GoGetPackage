[app/sources/201233724.Dockerfile]
digraph {
  "sha256:d757c8c0a8cfcd8a4b8a5dd63e31561366cd8b64519d366b743453743a1dcb30" [label="local://context" shape="ellipse"];
  "sha256:c04df7d35dccd0f45f2c38d0c87a468a45092db73b1ea647babc475f230e8e51" [label="copy{src=/etcd-version-monitor, dest=/etcd-version-monitor}" shape="note"];
  "sha256:a0acfc350edf2916a07e30b3c0a5b4a011dd2157f9b41defb0b02161340d8c6e" [label="sha256:a0acfc350edf2916a07e30b3c0a5b4a011dd2157f9b41defb0b02161340d8c6e" shape="plaintext"];
  "sha256:d757c8c0a8cfcd8a4b8a5dd63e31561366cd8b64519d366b743453743a1dcb30" -> "sha256:c04df7d35dccd0f45f2c38d0c87a468a45092db73b1ea647babc475f230e8e51" [label=""];
  "sha256:c04df7d35dccd0f45f2c38d0c87a468a45092db73b1ea647babc475f230e8e51" -> "sha256:a0acfc350edf2916a07e30b3c0a5b4a011dd2157f9b41defb0b02161340d8c6e" [label=""];
}

