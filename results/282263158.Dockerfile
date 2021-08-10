[app/sources/282263158.Dockerfile]
digraph {
  "sha256:c3b7b95783ef1134281e1075083bbbb62438fa2a714b26c5355c4fca6eac48b4" [label="docker-image://docker.io/webdevops/base:alpine@sha256:c56dcab67d9fddf6daa5b2487f15b714abfe7334dfb2d5aebbd31806b7f6dda6" shape="ellipse"];
  "sha256:f947fa2e6914a8d1877751fe5b54b040d65cbf93d15691532e55cb90592e30f9" [label="local://context" shape="ellipse"];
  "sha256:db0b81c9dcdebe153711187b979b47c00a54fea21dfb4c71c9794fbe6699376b" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:192d4d7c3be263d010e0ddc745608bba50468d221b04ee0e8da9c54e9988bf7d" [label="/bin/sh -c set -x     && apk-install shadow     && apk-install         zip         unzip         bzip2         drill         ldns         openssh-client         rsync         patch         git     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:b4125b495978053e08c7239130c690166bcb7b8a1b5238c234b6539f06a2b16e" [label="sha256:b4125b495978053e08c7239130c690166bcb7b8a1b5238c234b6539f06a2b16e" shape="plaintext"];
  "sha256:c3b7b95783ef1134281e1075083bbbb62438fa2a714b26c5355c4fca6eac48b4" -> "sha256:db0b81c9dcdebe153711187b979b47c00a54fea21dfb4c71c9794fbe6699376b" [label=""];
  "sha256:f947fa2e6914a8d1877751fe5b54b040d65cbf93d15691532e55cb90592e30f9" -> "sha256:db0b81c9dcdebe153711187b979b47c00a54fea21dfb4c71c9794fbe6699376b" [label=""];
  "sha256:db0b81c9dcdebe153711187b979b47c00a54fea21dfb4c71c9794fbe6699376b" -> "sha256:192d4d7c3be263d010e0ddc745608bba50468d221b04ee0e8da9c54e9988bf7d" [label=""];
  "sha256:192d4d7c3be263d010e0ddc745608bba50468d221b04ee0e8da9c54e9988bf7d" -> "sha256:b4125b495978053e08c7239130c690166bcb7b8a1b5238c234b6539f06a2b16e" [label=""];
}

