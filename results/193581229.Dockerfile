[app/sources/193581229.Dockerfile]
digraph {
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" [label="docker-image://docker.io/jupyter/base-notebook:latest" shape="ellipse"];
  "sha256:49f5029004eb3ba51eeddc6573b4ad7ae17599a1b51f2fd682df495e8b20c439" [label="/bin/sh -c wget -O - https://deb.nodesource.com/setup_5.x | bash" shape="box"];
  "sha256:68ff96f44bed71d2fd90fe37bd706728a5a6054bc2a468f6cc211afca21ff39c" [label="/bin/sh -c apt-get install -y nodejs g++ make software-properties-common libzmq3-dev" shape="box"];
  "sha256:51eb7c4173fad4121a098ba31c5b2314d7c33479e31e263be57bf138bef5f14e" [label="/bin/sh -c mkdir -p $HOME/jupyter-nodejs" shape="box"];
  "sha256:0b48bcc4df73d1dbc122e441723e87c9887c2c5655fddae8f0ec6b01f9a00aff" [label="local://context" shape="ellipse"];
  "sha256:45c4c8a5504f5396c97356ed42191079e0d09738331fff8b4c9d27861dcd1242" [label="copy{src=/, dest=/jupyter-nodejs}" shape="note"];
  "sha256:9c751a4ce0e80b94204c5afd6f02c125f889307b84eeda1686468da14b97b2a4" [label="/bin/sh -c chown -R $NB_USER $HOME/jupyter-nodejs" shape="box"];
  "sha256:fab33400ada0f8f0551ee22a7d96e880a3ce9987cb4b27a2af65633dc7a60601" [label="mkdir{path=/jupyter-nodejs}" shape="note"];
  "sha256:45ae8211d7decf5dfd30fec4ec29feef6c2f62833e435bf33accbbf474b2f11d" [label="/bin/sh -c touch /etc/ld.so.conf" shape="box"];
  "sha256:160f63e9f64113c5a93375eebfce274c481be3b698ac892e805ccae6d01cee1a" [label="/bin/sh -c echo \"/opt/conda/lib\" >> /etc/ld.so.conf" shape="box"];
  "sha256:0b2ca606edf98a6524781845948b0868f4215404a264b433a22877820ad0cb20" [label="/bin/sh -c conda install -y jupyter_console" shape="box"];
  "sha256:83cdf23d1816cb78f7226fe72769e2b85acae32f9349223af2b601076f2b4667" [label="/bin/sh -c mkdir -p $HOME/.ipython/kernels/nodejs/" shape="box"];
  "sha256:fea0b8fcb02b0bd07410a1bc2f8ec880b8ef10fbec91b98af4919a42d684ea6e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a3adfb35448d3b427614b5d5536b742ebc0ce6c119aacd4b1e478506bbec5034" [label="/bin/sh -c node install.js" shape="box"];
  "sha256:ed9f2b0a82cb879f642fe143c5158752348039a886aac61d88894f21c2abce0b" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:8bd9eb2b519461e3ac51daf013111845089606ada44c919413b392c8745b2f83" [label="/bin/sh -c npm run build-ext" shape="box"];
  "sha256:62e55149a0bf4300a4ef5e0d24cb22ea188c312c595c7eedac031062864fb7a7" [label="mkdir{path=/jupyter-nodejs/node_modules/zmq}" shape="note"];
  "sha256:38aefbf64bb13122194bc6ea5771eb33156abb05f4d7550cdf1b39b76f843fcb" [label="/bin/sh -c npm run install" shape="box"];
  "sha256:0545668b5534762b5c8283ebbf8ea9904459d1bfa1673dee50724c0cf3c9d1d4" [label="mkdir{path=/jupyter-nodejs}" shape="note"];
  "sha256:67c629e57f9680387f83f4f29ba16d123e42afce6ae9aff3e05f8cf9cf33f320" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:1e7d8662182d217d67392db8ad4f671e91ff3d85961afede34a69d8d5324dce2" [label="sha256:1e7d8662182d217d67392db8ad4f671e91ff3d85961afede34a69d8d5324dce2" shape="plaintext"];
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" -> "sha256:49f5029004eb3ba51eeddc6573b4ad7ae17599a1b51f2fd682df495e8b20c439" [label=""];
  "sha256:49f5029004eb3ba51eeddc6573b4ad7ae17599a1b51f2fd682df495e8b20c439" -> "sha256:68ff96f44bed71d2fd90fe37bd706728a5a6054bc2a468f6cc211afca21ff39c" [label=""];
  "sha256:68ff96f44bed71d2fd90fe37bd706728a5a6054bc2a468f6cc211afca21ff39c" -> "sha256:51eb7c4173fad4121a098ba31c5b2314d7c33479e31e263be57bf138bef5f14e" [label=""];
  "sha256:51eb7c4173fad4121a098ba31c5b2314d7c33479e31e263be57bf138bef5f14e" -> "sha256:45c4c8a5504f5396c97356ed42191079e0d09738331fff8b4c9d27861dcd1242" [label=""];
  "sha256:0b48bcc4df73d1dbc122e441723e87c9887c2c5655fddae8f0ec6b01f9a00aff" -> "sha256:45c4c8a5504f5396c97356ed42191079e0d09738331fff8b4c9d27861dcd1242" [label=""];
  "sha256:45c4c8a5504f5396c97356ed42191079e0d09738331fff8b4c9d27861dcd1242" -> "sha256:9c751a4ce0e80b94204c5afd6f02c125f889307b84eeda1686468da14b97b2a4" [label=""];
  "sha256:9c751a4ce0e80b94204c5afd6f02c125f889307b84eeda1686468da14b97b2a4" -> "sha256:fab33400ada0f8f0551ee22a7d96e880a3ce9987cb4b27a2af65633dc7a60601" [label=""];
  "sha256:fab33400ada0f8f0551ee22a7d96e880a3ce9987cb4b27a2af65633dc7a60601" -> "sha256:45ae8211d7decf5dfd30fec4ec29feef6c2f62833e435bf33accbbf474b2f11d" [label=""];
  "sha256:45ae8211d7decf5dfd30fec4ec29feef6c2f62833e435bf33accbbf474b2f11d" -> "sha256:160f63e9f64113c5a93375eebfce274c481be3b698ac892e805ccae6d01cee1a" [label=""];
  "sha256:160f63e9f64113c5a93375eebfce274c481be3b698ac892e805ccae6d01cee1a" -> "sha256:0b2ca606edf98a6524781845948b0868f4215404a264b433a22877820ad0cb20" [label=""];
  "sha256:0b2ca606edf98a6524781845948b0868f4215404a264b433a22877820ad0cb20" -> "sha256:83cdf23d1816cb78f7226fe72769e2b85acae32f9349223af2b601076f2b4667" [label=""];
  "sha256:83cdf23d1816cb78f7226fe72769e2b85acae32f9349223af2b601076f2b4667" -> "sha256:fea0b8fcb02b0bd07410a1bc2f8ec880b8ef10fbec91b98af4919a42d684ea6e" [label=""];
  "sha256:fea0b8fcb02b0bd07410a1bc2f8ec880b8ef10fbec91b98af4919a42d684ea6e" -> "sha256:a3adfb35448d3b427614b5d5536b742ebc0ce6c119aacd4b1e478506bbec5034" [label=""];
  "sha256:a3adfb35448d3b427614b5d5536b742ebc0ce6c119aacd4b1e478506bbec5034" -> "sha256:ed9f2b0a82cb879f642fe143c5158752348039a886aac61d88894f21c2abce0b" [label=""];
  "sha256:ed9f2b0a82cb879f642fe143c5158752348039a886aac61d88894f21c2abce0b" -> "sha256:8bd9eb2b519461e3ac51daf013111845089606ada44c919413b392c8745b2f83" [label=""];
  "sha256:8bd9eb2b519461e3ac51daf013111845089606ada44c919413b392c8745b2f83" -> "sha256:62e55149a0bf4300a4ef5e0d24cb22ea188c312c595c7eedac031062864fb7a7" [label=""];
  "sha256:62e55149a0bf4300a4ef5e0d24cb22ea188c312c595c7eedac031062864fb7a7" -> "sha256:38aefbf64bb13122194bc6ea5771eb33156abb05f4d7550cdf1b39b76f843fcb" [label=""];
  "sha256:38aefbf64bb13122194bc6ea5771eb33156abb05f4d7550cdf1b39b76f843fcb" -> "sha256:0545668b5534762b5c8283ebbf8ea9904459d1bfa1673dee50724c0cf3c9d1d4" [label=""];
  "sha256:0545668b5534762b5c8283ebbf8ea9904459d1bfa1673dee50724c0cf3c9d1d4" -> "sha256:67c629e57f9680387f83f4f29ba16d123e42afce6ae9aff3e05f8cf9cf33f320" [label=""];
  "sha256:67c629e57f9680387f83f4f29ba16d123e42afce6ae9aff3e05f8cf9cf33f320" -> "sha256:1e7d8662182d217d67392db8ad4f671e91ff3d85961afede34a69d8d5324dce2" [label=""];
}

