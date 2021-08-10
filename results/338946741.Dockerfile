[app/sources/338946741.Dockerfile]
digraph {
  "sha256:dcc66dc000197318e620eaccdd6984bdd8dc526752de3b4f705ae84e37c33bb3" [label="local://context" shape="ellipse"];
  "sha256:f1e4d9c588b676dd150dd849e4d42baca873dff1e22bb73a1bb719e9333fa993" [label="copy{src=/files/usage, dest=/usage}" shape="note"];
  "sha256:e3e5a61908ef4c0d90bb31df453b6233e757596d5fdfc1b0c1e3e77626856337" [label="sha256:e3e5a61908ef4c0d90bb31df453b6233e757596d5fdfc1b0c1e3e77626856337" shape="plaintext"];
  "sha256:dcc66dc000197318e620eaccdd6984bdd8dc526752de3b4f705ae84e37c33bb3" -> "sha256:f1e4d9c588b676dd150dd849e4d42baca873dff1e22bb73a1bb719e9333fa993" [label=""];
  "sha256:f1e4d9c588b676dd150dd849e4d42baca873dff1e22bb73a1bb719e9333fa993" -> "sha256:e3e5a61908ef4c0d90bb31df453b6233e757596d5fdfc1b0c1e3e77626856337" [label=""];
}

