[app/sources/276539001.Dockerfile]
digraph {
  "sha256:95ca863e37bfcc706b982fb1b9e28616c97a69f6f401666fa0e661c4a1239c40" [label="local://context" shape="ellipse"];
  "sha256:67300e646925f5f9e18d6e327768e0c49b612afee51e270e38f92e9c589e15fb" [label="docker-image://docker.io/medicean/vulapps:base_wordpress" shape="ellipse"];
  "sha256:8aa9c6605d4877dc238d3847b5e42abf75824226757fbc46cb5f4b35c7a4b48e" [label="copy{src=/src/WordPress-Plugin-CYSTEME-Finder-1.3.zip, dest=/tmp/WordPress-Plugin-CYSTEME-Finder-1.3.zip}" shape="note"];
  "sha256:4187e6982bf21aded5d5dccdd260a23ba05b7eacb017e1d35884abfa74d39de3" [label="/bin/sh -c apt-get install -y unzip" shape="box"];
  "sha256:839e1ff02b865a65152eaac6a7e99b7a406d203632fae60b2620d5f90d57d3cd" [label="/bin/sh -c set -x     && /etc/init.d/mysql start     && unzip -x /tmp/WordPress-Plugin-CYSTEME-Finder-1.3.zip -d /var/www/html/wp-content/plugins/     && chown -R www-data:www-data /var/www/html/     && wp --path=/var/www/html/ plugin activate cysteme-finder --allow-root     && rm -rf /tmp/*" shape="box"];
  "sha256:3ab50216899858704ec8f0bdd4cfe978aeab4b15210a4104da9f17d9a010aa7f" [label="sha256:3ab50216899858704ec8f0bdd4cfe978aeab4b15210a4104da9f17d9a010aa7f" shape="plaintext"];
  "sha256:67300e646925f5f9e18d6e327768e0c49b612afee51e270e38f92e9c589e15fb" -> "sha256:8aa9c6605d4877dc238d3847b5e42abf75824226757fbc46cb5f4b35c7a4b48e" [label=""];
  "sha256:95ca863e37bfcc706b982fb1b9e28616c97a69f6f401666fa0e661c4a1239c40" -> "sha256:8aa9c6605d4877dc238d3847b5e42abf75824226757fbc46cb5f4b35c7a4b48e" [label=""];
  "sha256:8aa9c6605d4877dc238d3847b5e42abf75824226757fbc46cb5f4b35c7a4b48e" -> "sha256:4187e6982bf21aded5d5dccdd260a23ba05b7eacb017e1d35884abfa74d39de3" [label=""];
  "sha256:4187e6982bf21aded5d5dccdd260a23ba05b7eacb017e1d35884abfa74d39de3" -> "sha256:839e1ff02b865a65152eaac6a7e99b7a406d203632fae60b2620d5f90d57d3cd" [label=""];
  "sha256:839e1ff02b865a65152eaac6a7e99b7a406d203632fae60b2620d5f90d57d3cd" -> "sha256:3ab50216899858704ec8f0bdd4cfe978aeab4b15210a4104da9f17d9a010aa7f" [label=""];
}

