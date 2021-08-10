[app/sources/252765344.Dockerfile]
digraph {
  "sha256:1ef5b0276fbd0c6af096452e936b996451bf6f9ebccb0d43db1a322030a1f92b" [label="docker-image://docker.io/library/r-base:3.4.3" shape="ellipse"];
  "sha256:56e3a30f8b6f425fc3636582566be63edfe65090675bac49c623356beb76ffcb" [label="/bin/sh -c apt-get update && apt-get install -y pandoc texlive texlive-latex-extra texinfo imagemagick && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2cd7119387c8165ed2df0fee9615be9d0d17f6f0f64bf734f9dfe6462ea47550" [label="/bin/sh -c Rscript -e 'install.packages(\"bookdown\")'" shape="box"];
  "sha256:b1017ecadabba0604dff1ce7b532fa7b84d6bb142513c8198336a9093e6cd491" [label="sha256:b1017ecadabba0604dff1ce7b532fa7b84d6bb142513c8198336a9093e6cd491" shape="plaintext"];
  "sha256:1ef5b0276fbd0c6af096452e936b996451bf6f9ebccb0d43db1a322030a1f92b" -> "sha256:56e3a30f8b6f425fc3636582566be63edfe65090675bac49c623356beb76ffcb" [label=""];
  "sha256:56e3a30f8b6f425fc3636582566be63edfe65090675bac49c623356beb76ffcb" -> "sha256:2cd7119387c8165ed2df0fee9615be9d0d17f6f0f64bf734f9dfe6462ea47550" [label=""];
  "sha256:2cd7119387c8165ed2df0fee9615be9d0d17f6f0f64bf734f9dfe6462ea47550" -> "sha256:b1017ecadabba0604dff1ce7b532fa7b84d6bb142513c8198336a9093e6cd491" [label=""];
}

