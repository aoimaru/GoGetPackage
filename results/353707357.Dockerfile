[app/sources/353707357.Dockerfile]
digraph {
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" [label="docker-image://docker.io/library/ruby:2.5.1" shape="ellipse"];
  "sha256:52438defc2c0ab482a923904186e3e6e0c2858ea7c71904cea483ec736d1c6b3" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client" shape="box"];
  "sha256:a242f203e543d9dafb3fb048761130ce2a21d68c04fa2ee1c5f88264d0222944" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:487967c81e767423238dd0e983df6b13666d1332417c53c281bfce81508f2c17" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:4f5ab2025af8148f55cd6a4fb44d8689e1e9554cea0c5a7ebd652bb3873a1dfb" [label="/bin/sh -c apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x cron" shape="box"];
  "sha256:8cc2bdf6087f6b10d9f9ab2404aada3621505d0a21cfa0dc10ecdefd90779a95" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:eb429222c92ee79a075bc712572bb0b7e799472ffd190100377ec39dd4055feb" [label="mkdir{path=/earthdata-search}" shape="note"];
  "sha256:487ec7b01db01c16695e3d9105c52afcc1203ff750eb41fe11f347acdadf1227" [label="local://context" shape="ellipse"];
  "sha256:82be8ec13bae4a138d60841543032351189bf1dbee3b11d55f47a68d1f685f22" [label="copy{src=/Gemfile*, dest=/earthdata-search/}" shape="note"];
  "sha256:6279e0e8d63c38a9942affe0e3acff5e7ce9eda08ce13b1fba45f978364cc5ec" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:9eebe730247bcd959392c30aa1945c6ba9a2b90082884189806e0de1eafd310b" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:0d149bc50ff52d2e20644beaf76925343eb23858628ad5942fe4a25737da436f" [label="copy{src=/, dest=/earthdata-search}" shape="note"];
  "sha256:e4b1712b535737cd55b6dcfcdb86b126839905ed6edc56e215f107d801c3d562" [label="/bin/sh -c mkdir -p ./tmp" shape="box"];
  "sha256:25ab845b7480e7147eb7b3ec756767cc78e76b65c54dc2a409773b9a04961ed8" [label="/bin/sh -c chmod 755 ./tmp" shape="box"];
  "sha256:1eeb050fce31810bfed1604b55faad2eea4649fffddce26687aebdb0adaf64e7" [label="/bin/sh -c chmod +x ./start.sh" shape="box"];
  "sha256:16249cebbf0d1514e26dc17d8a4e4837f168492d9cacad4b821836e7f3ef60f6" [label="/bin/sh -c chmod +x ./cron.sh" shape="box"];
  "sha256:e3a54ef242d3be63ec79639c9f29b982b3ada6074258d0756ce6db88d81fd3b5" [label="/bin/sh -c RAILS_ENV=production skip_node_compile=true DATABASE_URL=postgres://user:password@host:1111/db-name bundle exec rake assets:precompile" shape="box"];
  "sha256:91852fe75e05ded751be9987446d2ba845b005d390fbd4b0b6311387612ec82f" [label="sha256:91852fe75e05ded751be9987446d2ba845b005d390fbd4b0b6311387612ec82f" shape="plaintext"];
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" -> "sha256:52438defc2c0ab482a923904186e3e6e0c2858ea7c71904cea483ec736d1c6b3" [label=""];
  "sha256:52438defc2c0ab482a923904186e3e6e0c2858ea7c71904cea483ec736d1c6b3" -> "sha256:a242f203e543d9dafb3fb048761130ce2a21d68c04fa2ee1c5f88264d0222944" [label=""];
  "sha256:a242f203e543d9dafb3fb048761130ce2a21d68c04fa2ee1c5f88264d0222944" -> "sha256:487967c81e767423238dd0e983df6b13666d1332417c53c281bfce81508f2c17" [label=""];
  "sha256:487967c81e767423238dd0e983df6b13666d1332417c53c281bfce81508f2c17" -> "sha256:4f5ab2025af8148f55cd6a4fb44d8689e1e9554cea0c5a7ebd652bb3873a1dfb" [label=""];
  "sha256:4f5ab2025af8148f55cd6a4fb44d8689e1e9554cea0c5a7ebd652bb3873a1dfb" -> "sha256:8cc2bdf6087f6b10d9f9ab2404aada3621505d0a21cfa0dc10ecdefd90779a95" [label=""];
  "sha256:8cc2bdf6087f6b10d9f9ab2404aada3621505d0a21cfa0dc10ecdefd90779a95" -> "sha256:eb429222c92ee79a075bc712572bb0b7e799472ffd190100377ec39dd4055feb" [label=""];
  "sha256:eb429222c92ee79a075bc712572bb0b7e799472ffd190100377ec39dd4055feb" -> "sha256:82be8ec13bae4a138d60841543032351189bf1dbee3b11d55f47a68d1f685f22" [label=""];
  "sha256:487ec7b01db01c16695e3d9105c52afcc1203ff750eb41fe11f347acdadf1227" -> "sha256:82be8ec13bae4a138d60841543032351189bf1dbee3b11d55f47a68d1f685f22" [label=""];
  "sha256:82be8ec13bae4a138d60841543032351189bf1dbee3b11d55f47a68d1f685f22" -> "sha256:6279e0e8d63c38a9942affe0e3acff5e7ce9eda08ce13b1fba45f978364cc5ec" [label=""];
  "sha256:6279e0e8d63c38a9942affe0e3acff5e7ce9eda08ce13b1fba45f978364cc5ec" -> "sha256:9eebe730247bcd959392c30aa1945c6ba9a2b90082884189806e0de1eafd310b" [label=""];
  "sha256:9eebe730247bcd959392c30aa1945c6ba9a2b90082884189806e0de1eafd310b" -> "sha256:0d149bc50ff52d2e20644beaf76925343eb23858628ad5942fe4a25737da436f" [label=""];
  "sha256:487ec7b01db01c16695e3d9105c52afcc1203ff750eb41fe11f347acdadf1227" -> "sha256:0d149bc50ff52d2e20644beaf76925343eb23858628ad5942fe4a25737da436f" [label=""];
  "sha256:0d149bc50ff52d2e20644beaf76925343eb23858628ad5942fe4a25737da436f" -> "sha256:e4b1712b535737cd55b6dcfcdb86b126839905ed6edc56e215f107d801c3d562" [label=""];
  "sha256:e4b1712b535737cd55b6dcfcdb86b126839905ed6edc56e215f107d801c3d562" -> "sha256:25ab845b7480e7147eb7b3ec756767cc78e76b65c54dc2a409773b9a04961ed8" [label=""];
  "sha256:25ab845b7480e7147eb7b3ec756767cc78e76b65c54dc2a409773b9a04961ed8" -> "sha256:1eeb050fce31810bfed1604b55faad2eea4649fffddce26687aebdb0adaf64e7" [label=""];
  "sha256:1eeb050fce31810bfed1604b55faad2eea4649fffddce26687aebdb0adaf64e7" -> "sha256:16249cebbf0d1514e26dc17d8a4e4837f168492d9cacad4b821836e7f3ef60f6" [label=""];
  "sha256:16249cebbf0d1514e26dc17d8a4e4837f168492d9cacad4b821836e7f3ef60f6" -> "sha256:e3a54ef242d3be63ec79639c9f29b982b3ada6074258d0756ce6db88d81fd3b5" [label=""];
  "sha256:e3a54ef242d3be63ec79639c9f29b982b3ada6074258d0756ce6db88d81fd3b5" -> "sha256:91852fe75e05ded751be9987446d2ba845b005d390fbd4b0b6311387612ec82f" [label=""];
}

