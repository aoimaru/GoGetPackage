[app/sources/448112474.Dockerfile]
digraph {
  "sha256:cfe916e31e412a9c1e41a85e931df03381bd33fc169f1f8d212566d7f646fffe" [label="docker-image://docker.io/camptocamp/postgres:11" shape="ellipse"];
  "sha256:c014f06f609893f55da3e23e83d791a21a425b82d9d694584f7f0d1250b00b79" [label="local://context" shape="ellipse"];
  "sha256:f569d969467d4adb7d27eae0aafc2c91595970690fe0853b4eba9dc2fdeb1164" [label="copy{src=/*.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:78d0948a712654545f87d1d4dc56f7a0273ee895b244589a1a5018c5e850ff96" [label="sha256:78d0948a712654545f87d1d4dc56f7a0273ee895b244589a1a5018c5e850ff96" shape="plaintext"];
  "sha256:cfe916e31e412a9c1e41a85e931df03381bd33fc169f1f8d212566d7f646fffe" -> "sha256:f569d969467d4adb7d27eae0aafc2c91595970690fe0853b4eba9dc2fdeb1164" [label=""];
  "sha256:c014f06f609893f55da3e23e83d791a21a425b82d9d694584f7f0d1250b00b79" -> "sha256:f569d969467d4adb7d27eae0aafc2c91595970690fe0853b4eba9dc2fdeb1164" [label=""];
  "sha256:f569d969467d4adb7d27eae0aafc2c91595970690fe0853b4eba9dc2fdeb1164" -> "sha256:78d0948a712654545f87d1d4dc56f7a0273ee895b244589a1a5018c5e850ff96" [label=""];
}

