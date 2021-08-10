[app/sources/302247146.Dockerfile]
digraph {
  "sha256:d43008fd3b0c0d57a7aef1cd348702bbeba014d04497be06a5bbe08a3acbaef6" [label="local://context" shape="ellipse"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:be0675fd9cf20716b9cb4eedde32e5500919160ea0ea00de10b45f10bd9a7d6f" [label="copy{src=/*.war, dest=/app.war}" shape="note"];
  "sha256:1f3ca41b9c0d9bcf4423dd9395f45abc2be30d980f917540047af7f26607f266" [label="sha256:1f3ca41b9c0d9bcf4423dd9395f45abc2be30d980f917540047af7f26607f266" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:be0675fd9cf20716b9cb4eedde32e5500919160ea0ea00de10b45f10bd9a7d6f" [label=""];
  "sha256:d43008fd3b0c0d57a7aef1cd348702bbeba014d04497be06a5bbe08a3acbaef6" -> "sha256:be0675fd9cf20716b9cb4eedde32e5500919160ea0ea00de10b45f10bd9a7d6f" [label=""];
  "sha256:be0675fd9cf20716b9cb4eedde32e5500919160ea0ea00de10b45f10bd9a7d6f" -> "sha256:1f3ca41b9c0d9bcf4423dd9395f45abc2be30d980f917540047af7f26607f266" [label=""];
}

