[app/sources/218937671.Dockerfile]
digraph {
  "sha256:8d9b3fdf5195fe3079fc3d62fc225d2d7ea6747a367dcf53fd1ce4c658eb27ba" [label="docker-image://docker.io/icclabcna/zurmo_logstash_forwarder:latest" shape="ellipse"];
  "sha256:5825bf74d3cf7e5c2a306f5a0deddbd08b7f99c1e0a81aae288b14b67532771a" [label="local://context" shape="ellipse"];
  "sha256:c395bc608d77818fdaae2952af77af8accfede9a1359944cf243faad76524278" [label="copy{src=/logstash_forwarder.toml, dest=/etc/confd/conf.d/logstash_forwarder.toml}" shape="note"];
  "sha256:ce293f80dbcb4200d5c464819a9bdb88446a12d7a4c7c374e4d6fff0cf1b65bf" [label="copy{src=/logstash_forwarder.json.tmpl, dest=/etc/confd/templates/logstash_forwarder.json.tmpl}" shape="note"];
  "sha256:abeb9ad7a85aeba9c88e41b9c456316c061c44f5bec272c9b5f1de58eac3f455" [label="sha256:abeb9ad7a85aeba9c88e41b9c456316c061c44f5bec272c9b5f1de58eac3f455" shape="plaintext"];
  "sha256:8d9b3fdf5195fe3079fc3d62fc225d2d7ea6747a367dcf53fd1ce4c658eb27ba" -> "sha256:c395bc608d77818fdaae2952af77af8accfede9a1359944cf243faad76524278" [label=""];
  "sha256:5825bf74d3cf7e5c2a306f5a0deddbd08b7f99c1e0a81aae288b14b67532771a" -> "sha256:c395bc608d77818fdaae2952af77af8accfede9a1359944cf243faad76524278" [label=""];
  "sha256:c395bc608d77818fdaae2952af77af8accfede9a1359944cf243faad76524278" -> "sha256:ce293f80dbcb4200d5c464819a9bdb88446a12d7a4c7c374e4d6fff0cf1b65bf" [label=""];
  "sha256:5825bf74d3cf7e5c2a306f5a0deddbd08b7f99c1e0a81aae288b14b67532771a" -> "sha256:ce293f80dbcb4200d5c464819a9bdb88446a12d7a4c7c374e4d6fff0cf1b65bf" [label=""];
  "sha256:ce293f80dbcb4200d5c464819a9bdb88446a12d7a4c7c374e4d6fff0cf1b65bf" -> "sha256:abeb9ad7a85aeba9c88e41b9c456316c061c44f5bec272c9b5f1de58eac3f455" [label=""];
}

