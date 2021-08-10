[app/sources/162758844.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:4928308a5e86499bda97c4532aa4afa928f538a4af263a4968623f749abb2938" [label="local://context" shape="ellipse"];
  "sha256:72ec414a611e04017038759bc217d67e3e62e82da60d374e128a9e706dd89337" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:e291cbeecc2885961b70e0b3d880f9dc40343a2a37af2d28c9e9b65392bd7080" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:3779ac2b54620005b2c04827574e17b7177c3b08f2f6e26171294ec8fb528de5" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:32bbee2345139b39910244b2114eb076fdd0b4f7832a54a95bae145c134ea1f5" [label="sha256:32bbee2345139b39910244b2114eb076fdd0b4f7832a54a95bae145c134ea1f5" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:72ec414a611e04017038759bc217d67e3e62e82da60d374e128a9e706dd89337" [label=""];
  "sha256:4928308a5e86499bda97c4532aa4afa928f538a4af263a4968623f749abb2938" -> "sha256:72ec414a611e04017038759bc217d67e3e62e82da60d374e128a9e706dd89337" [label=""];
  "sha256:72ec414a611e04017038759bc217d67e3e62e82da60d374e128a9e706dd89337" -> "sha256:e291cbeecc2885961b70e0b3d880f9dc40343a2a37af2d28c9e9b65392bd7080" [label=""];
  "sha256:e291cbeecc2885961b70e0b3d880f9dc40343a2a37af2d28c9e9b65392bd7080" -> "sha256:3779ac2b54620005b2c04827574e17b7177c3b08f2f6e26171294ec8fb528de5" [label=""];
  "sha256:3779ac2b54620005b2c04827574e17b7177c3b08f2f6e26171294ec8fb528de5" -> "sha256:32bbee2345139b39910244b2114eb076fdd0b4f7832a54a95bae145c134ea1f5" [label=""];
}

