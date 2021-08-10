[app/sources/467955402.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" [label="mkdir{path=/app}" shape="note"];
  "sha256:d764eefb519a0b8b99e19d4539d6df6229688682443b7da681c9283f931ac632" [label="copy{src=/go.mod, dest=/app/},copy{src=/go.sum, dest=/app/},copy{src=/Makefile, dest=/app/}" shape="note"];
  "sha256:2d91286645130a95ebf5f0811aa4bdfef99deb1d3a37cd4e5bef5fff2989f7f7" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:db24584fb65eae519d868c00549068301f9968633f4fa9eeae6161fcb7265478" [label="copy{src=/util, dest=/app/util/}" shape="note"];
  "sha256:e6057ec6776c63a571674bb0e244efcebcc6f70ce912cdbe674fa529f5764cea" [label="copy{src=/item, dest=/app/item/}" shape="note"];
  "sha256:99668cd80cacacb727e43ff8438b63102147731ef1e8829944b9f199af561b65" [label="copy{src=/order, dest=/app/order/}" shape="note"];
  "sha256:5694f003a0451a73ca4247fce1f003c026c081656b5499595223ce9e1c6724ab" [label="copy{src=/cmd, dest=/app/cmd/}" shape="note"];
  "sha256:e370ef1bb278be33f7affc2a1de5eb4c62b83522ffa6317ea5d1d0f2cbd3075a" [label="/bin/sh -c make build" shape="box"];
  "sha256:71110eb833dcb350f722a1464295eaed395bae3ed81aa071624988990df5d84d" [label="copy{src=/app/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:b6dc169ca3e89d11ec8de8b34238ced5ffd8b10a493cb5af8771601fd9204555" [label="sha256:b6dc169ca3e89d11ec8de8b34238ced5ffd8b10a493cb5af8771601fd9204555" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" [label=""];
  "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" -> "sha256:d764eefb519a0b8b99e19d4539d6df6229688682443b7da681c9283f931ac632" [label=""];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" -> "sha256:d764eefb519a0b8b99e19d4539d6df6229688682443b7da681c9283f931ac632" [label=""];
  "sha256:d764eefb519a0b8b99e19d4539d6df6229688682443b7da681c9283f931ac632" -> "sha256:2d91286645130a95ebf5f0811aa4bdfef99deb1d3a37cd4e5bef5fff2989f7f7" [label=""];
  "sha256:2d91286645130a95ebf5f0811aa4bdfef99deb1d3a37cd4e5bef5fff2989f7f7" -> "sha256:db24584fb65eae519d868c00549068301f9968633f4fa9eeae6161fcb7265478" [label=""];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" -> "sha256:db24584fb65eae519d868c00549068301f9968633f4fa9eeae6161fcb7265478" [label=""];
  "sha256:db24584fb65eae519d868c00549068301f9968633f4fa9eeae6161fcb7265478" -> "sha256:e6057ec6776c63a571674bb0e244efcebcc6f70ce912cdbe674fa529f5764cea" [label=""];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" -> "sha256:e6057ec6776c63a571674bb0e244efcebcc6f70ce912cdbe674fa529f5764cea" [label=""];
  "sha256:e6057ec6776c63a571674bb0e244efcebcc6f70ce912cdbe674fa529f5764cea" -> "sha256:99668cd80cacacb727e43ff8438b63102147731ef1e8829944b9f199af561b65" [label=""];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" -> "sha256:99668cd80cacacb727e43ff8438b63102147731ef1e8829944b9f199af561b65" [label=""];
  "sha256:99668cd80cacacb727e43ff8438b63102147731ef1e8829944b9f199af561b65" -> "sha256:5694f003a0451a73ca4247fce1f003c026c081656b5499595223ce9e1c6724ab" [label=""];
  "sha256:df594ee792cfa7cc42cc6725e710e36a891fab8c9aa0db8e027a9079e090e96e" -> "sha256:5694f003a0451a73ca4247fce1f003c026c081656b5499595223ce9e1c6724ab" [label=""];
  "sha256:5694f003a0451a73ca4247fce1f003c026c081656b5499595223ce9e1c6724ab" -> "sha256:e370ef1bb278be33f7affc2a1de5eb4c62b83522ffa6317ea5d1d0f2cbd3075a" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:71110eb833dcb350f722a1464295eaed395bae3ed81aa071624988990df5d84d" [label=""];
  "sha256:e370ef1bb278be33f7affc2a1de5eb4c62b83522ffa6317ea5d1d0f2cbd3075a" -> "sha256:71110eb833dcb350f722a1464295eaed395bae3ed81aa071624988990df5d84d" [label=""];
  "sha256:71110eb833dcb350f722a1464295eaed395bae3ed81aa071624988990df5d84d" -> "sha256:b6dc169ca3e89d11ec8de8b34238ced5ffd8b10a493cb5af8771601fd9204555" [label=""];
}

