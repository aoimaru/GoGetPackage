[app/sources/189652217.Dockerfile]
digraph {
  "sha256:6648d1a63254c1961815375e3fa9d236792bb39e349fd02c8a5f0c2da26d1470" [label="local://context" shape="ellipse"];
  "sha256:767b17eb36ea2b5c9933189364c50bc89fe6f40cfb94cb1094e44187399e5478" [label="docker-image://docker.io/library/git:latest" shape="ellipse"];
  "sha256:6624a2243d2a11d4e64a25d7ed48aac81e1a8e121eaa76405c1135d1d209699b" [label="/bin/sh -c add-apt-repository -y ppa:nginx/stable &&   apt-get update &&   apt-get install -y nginx &&   rm -rf /var/lib/apt/lists/* &&   chown -R www-data:www-data /var/lib/nginx" shape="box"];
  "sha256:a536fa492e38dc9e53aad5563202543e57c5e28a4417299e953745da643a190a" [label="mkdir{path=/home/git}" shape="note"];
  "sha256:05a80f7de81ddf4ff0909337c2734cbf7ed921411a6ec471b56abb9ec0834b36" [label="/bin/sh -c mkdir nginx" shape="box"];
  "sha256:60f36cb53cb5d8c200643399596084e2017a7b920931673273d2723277effaeb" [label="mkdir{path=/home/git/nginx}" shape="note"];
  "sha256:16acc482184cd0ff143ee95829d6940c8a11ce318d5052978c32b78e95b579a7" [label="/bin/sh -c mkdir html" shape="box"];
  "sha256:38fa3d7e1b72179076bf385fb7fda4161fdf30f7282921a104665d7c153ab403" [label="mkdir{path=/home/git/nginx/html}" shape="note"];
  "sha256:58999fb8c174f2c8ca6233db377250e902027453512e4fc7a8803c58618a0913" [label="copy{src=/html/*, dest=/home/git/nginx/html/}" shape="note"];
  "sha256:8534f85205d63091156095b17f303427cf9b953b9af0aa6a576a144db86f58b1" [label="mkdir{path=/home/git/nginx}" shape="note"];
  "sha256:89455960a87e3e106659075d48fefb746c8ef70f75e34545eb2e3a485c7c2891" [label="/bin/sh -c mkdir logs" shape="box"];
  "sha256:f8d407ac3453db6783b7e81609fd5942987207ed2b5acb2a5890b165e03c0204" [label="copy{src=/crt, dest=/home/git/nginx/itsvc.world.company.crt}" shape="note"];
  "sha256:6faed0b0f1db0014590f23d789ffdee28829c4562caed68ce1269e63841a4b15" [label="copy{src=/key, dest=/home/git/nginx/itsvc.world.company.key}" shape="note"];
  "sha256:05c55bc04932368ff3ac7ddae9a20f884391f7fcd0655f98234238492e4b5e7f" [label="copy{src=/env.conf, dest=/home/git/nginx/}" shape="note"];
  "sha256:4f654edb7b329d73f370b90c3ea705572602a308aef9558abe94cfebcfed935b" [label="/bin/sh -c ln -s /home/git/nginx/env.conf cnf" shape="box"];
  "sha256:07cb07b4e86d95186efa777fd1a75d567180deb4c21beac73c5fe35543cb07b5" [label="/bin/sh -c ln -fs /home/git/nginx/cnf /etc/nginx/nginx.conf" shape="box"];
  "sha256:064e95891022b664f9ecc45eaf7b70c2e64dc989f6ff68ee83dc5715c0b97738" [label="/bin/sh -c chown -R git:git /home/git" shape="box"];
  "sha256:3405a27f35797fca24fe72a1498890e92e9e07c9439a8fe8fb3e0a7cd229e5de" [label="sha256:3405a27f35797fca24fe72a1498890e92e9e07c9439a8fe8fb3e0a7cd229e5de" shape="plaintext"];
  "sha256:767b17eb36ea2b5c9933189364c50bc89fe6f40cfb94cb1094e44187399e5478" -> "sha256:6624a2243d2a11d4e64a25d7ed48aac81e1a8e121eaa76405c1135d1d209699b" [label=""];
  "sha256:6624a2243d2a11d4e64a25d7ed48aac81e1a8e121eaa76405c1135d1d209699b" -> "sha256:a536fa492e38dc9e53aad5563202543e57c5e28a4417299e953745da643a190a" [label=""];
  "sha256:a536fa492e38dc9e53aad5563202543e57c5e28a4417299e953745da643a190a" -> "sha256:05a80f7de81ddf4ff0909337c2734cbf7ed921411a6ec471b56abb9ec0834b36" [label=""];
  "sha256:05a80f7de81ddf4ff0909337c2734cbf7ed921411a6ec471b56abb9ec0834b36" -> "sha256:60f36cb53cb5d8c200643399596084e2017a7b920931673273d2723277effaeb" [label=""];
  "sha256:60f36cb53cb5d8c200643399596084e2017a7b920931673273d2723277effaeb" -> "sha256:16acc482184cd0ff143ee95829d6940c8a11ce318d5052978c32b78e95b579a7" [label=""];
  "sha256:16acc482184cd0ff143ee95829d6940c8a11ce318d5052978c32b78e95b579a7" -> "sha256:38fa3d7e1b72179076bf385fb7fda4161fdf30f7282921a104665d7c153ab403" [label=""];
  "sha256:38fa3d7e1b72179076bf385fb7fda4161fdf30f7282921a104665d7c153ab403" -> "sha256:58999fb8c174f2c8ca6233db377250e902027453512e4fc7a8803c58618a0913" [label=""];
  "sha256:6648d1a63254c1961815375e3fa9d236792bb39e349fd02c8a5f0c2da26d1470" -> "sha256:58999fb8c174f2c8ca6233db377250e902027453512e4fc7a8803c58618a0913" [label=""];
  "sha256:58999fb8c174f2c8ca6233db377250e902027453512e4fc7a8803c58618a0913" -> "sha256:8534f85205d63091156095b17f303427cf9b953b9af0aa6a576a144db86f58b1" [label=""];
  "sha256:8534f85205d63091156095b17f303427cf9b953b9af0aa6a576a144db86f58b1" -> "sha256:89455960a87e3e106659075d48fefb746c8ef70f75e34545eb2e3a485c7c2891" [label=""];
  "sha256:89455960a87e3e106659075d48fefb746c8ef70f75e34545eb2e3a485c7c2891" -> "sha256:f8d407ac3453db6783b7e81609fd5942987207ed2b5acb2a5890b165e03c0204" [label=""];
  "sha256:6648d1a63254c1961815375e3fa9d236792bb39e349fd02c8a5f0c2da26d1470" -> "sha256:f8d407ac3453db6783b7e81609fd5942987207ed2b5acb2a5890b165e03c0204" [label=""];
  "sha256:f8d407ac3453db6783b7e81609fd5942987207ed2b5acb2a5890b165e03c0204" -> "sha256:6faed0b0f1db0014590f23d789ffdee28829c4562caed68ce1269e63841a4b15" [label=""];
  "sha256:6648d1a63254c1961815375e3fa9d236792bb39e349fd02c8a5f0c2da26d1470" -> "sha256:6faed0b0f1db0014590f23d789ffdee28829c4562caed68ce1269e63841a4b15" [label=""];
  "sha256:6faed0b0f1db0014590f23d789ffdee28829c4562caed68ce1269e63841a4b15" -> "sha256:05c55bc04932368ff3ac7ddae9a20f884391f7fcd0655f98234238492e4b5e7f" [label=""];
  "sha256:6648d1a63254c1961815375e3fa9d236792bb39e349fd02c8a5f0c2da26d1470" -> "sha256:05c55bc04932368ff3ac7ddae9a20f884391f7fcd0655f98234238492e4b5e7f" [label=""];
  "sha256:05c55bc04932368ff3ac7ddae9a20f884391f7fcd0655f98234238492e4b5e7f" -> "sha256:4f654edb7b329d73f370b90c3ea705572602a308aef9558abe94cfebcfed935b" [label=""];
  "sha256:4f654edb7b329d73f370b90c3ea705572602a308aef9558abe94cfebcfed935b" -> "sha256:07cb07b4e86d95186efa777fd1a75d567180deb4c21beac73c5fe35543cb07b5" [label=""];
  "sha256:07cb07b4e86d95186efa777fd1a75d567180deb4c21beac73c5fe35543cb07b5" -> "sha256:064e95891022b664f9ecc45eaf7b70c2e64dc989f6ff68ee83dc5715c0b97738" [label=""];
  "sha256:064e95891022b664f9ecc45eaf7b70c2e64dc989f6ff68ee83dc5715c0b97738" -> "sha256:3405a27f35797fca24fe72a1498890e92e9e07c9439a8fe8fb3e0a7cd229e5de" [label=""];
}

