[app/sources/260848899.Dockerfile]
digraph {
  "sha256:c030d06c4d8f6798d8da335eed917d4745da274e50ebd0008bc59f67e2bdffdd" [label="docker-image://docker.io/library/openjdk:8u151-jdk-alpine3.7" shape="ellipse"];
  "sha256:479926ad04e6d557472c7beb472214c71f6eab2f487d7939dfee5bf6073cda4b" [label="local://context" shape="ellipse"];
  "sha256:adfe65c634d307fdfa6b288e61883263fdac533ec43809d4a0eec2459a0dc188" [label="copy{src=/target/shopping-cart-0.0.1-SNAPSHOT.jar, dest=/usr/src/app/app.jar}" shape="note"];
  "sha256:802f4b4db840b3cbee97b0cac82ba426564bb5c6502ce34b5134bf4a2797540b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ac79b167f5b2070649c99da3023555a78fa87279b5b737c7215e41738b9af2aa" [label="sha256:ac79b167f5b2070649c99da3023555a78fa87279b5b737c7215e41738b9af2aa" shape="plaintext"];
  "sha256:c030d06c4d8f6798d8da335eed917d4745da274e50ebd0008bc59f67e2bdffdd" -> "sha256:adfe65c634d307fdfa6b288e61883263fdac533ec43809d4a0eec2459a0dc188" [label=""];
  "sha256:479926ad04e6d557472c7beb472214c71f6eab2f487d7939dfee5bf6073cda4b" -> "sha256:adfe65c634d307fdfa6b288e61883263fdac533ec43809d4a0eec2459a0dc188" [label=""];
  "sha256:adfe65c634d307fdfa6b288e61883263fdac533ec43809d4a0eec2459a0dc188" -> "sha256:802f4b4db840b3cbee97b0cac82ba426564bb5c6502ce34b5134bf4a2797540b" [label=""];
  "sha256:802f4b4db840b3cbee97b0cac82ba426564bb5c6502ce34b5134bf4a2797540b" -> "sha256:ac79b167f5b2070649c99da3023555a78fa87279b5b737c7215e41738b9af2aa" [label=""];
}

