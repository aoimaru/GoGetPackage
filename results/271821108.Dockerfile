[app/sources/271821108.Dockerfile]
digraph {
  "sha256:91440c12d1b265a8e9d34c82e1a83ba53dc96074477edd5c102a3935cd68b177" [label="local://context" shape="ellipse"];
  "sha256:b9585d8b3396d7cf2937da0b5656ba26ef7e576e87e8c31a29c72cbb4041b633" [label="docker-image://docker.io/grafana/grafana:5.3.4@sha256:810a8db3af112d7c870b80f1339adc0986325ead9d3f1e195ae0a5bb5261014e" shape="ellipse"];
  "sha256:1f6b20858cc8faa022cc4705cded97778aa0ac6bb7784dc24cce6b516c89dad9" [label="copy{src=/datasources, dest=/etc/grafana/provisioning/datasources/}" shape="note"];
  "sha256:abbc050b6ab69f7e2cbdfe6673de4d7a0a9d680df7bc895b9895c9d3a9e6fd7a" [label="copy{src=/swarmprom_dashboards.yml, dest=/etc/grafana/provisioning/dashboards/}" shape="note"];
  "sha256:d739dc119f9c8e0aae69afaab51bbce6cf8c08ae977a1c9cff4965fec94b38ce" [label="copy{src=/dashboards, dest=/etc/grafana/dashboards/}" shape="note"];
  "sha256:e768fd4e2243ecf52962df14d926ec976de884192f7fbe66b212a6b0fd90e10d" [label="sha256:e768fd4e2243ecf52962df14d926ec976de884192f7fbe66b212a6b0fd90e10d" shape="plaintext"];
  "sha256:b9585d8b3396d7cf2937da0b5656ba26ef7e576e87e8c31a29c72cbb4041b633" -> "sha256:1f6b20858cc8faa022cc4705cded97778aa0ac6bb7784dc24cce6b516c89dad9" [label=""];
  "sha256:91440c12d1b265a8e9d34c82e1a83ba53dc96074477edd5c102a3935cd68b177" -> "sha256:1f6b20858cc8faa022cc4705cded97778aa0ac6bb7784dc24cce6b516c89dad9" [label=""];
  "sha256:1f6b20858cc8faa022cc4705cded97778aa0ac6bb7784dc24cce6b516c89dad9" -> "sha256:abbc050b6ab69f7e2cbdfe6673de4d7a0a9d680df7bc895b9895c9d3a9e6fd7a" [label=""];
  "sha256:91440c12d1b265a8e9d34c82e1a83ba53dc96074477edd5c102a3935cd68b177" -> "sha256:abbc050b6ab69f7e2cbdfe6673de4d7a0a9d680df7bc895b9895c9d3a9e6fd7a" [label=""];
  "sha256:abbc050b6ab69f7e2cbdfe6673de4d7a0a9d680df7bc895b9895c9d3a9e6fd7a" -> "sha256:d739dc119f9c8e0aae69afaab51bbce6cf8c08ae977a1c9cff4965fec94b38ce" [label=""];
  "sha256:91440c12d1b265a8e9d34c82e1a83ba53dc96074477edd5c102a3935cd68b177" -> "sha256:d739dc119f9c8e0aae69afaab51bbce6cf8c08ae977a1c9cff4965fec94b38ce" [label=""];
  "sha256:d739dc119f9c8e0aae69afaab51bbce6cf8c08ae977a1c9cff4965fec94b38ce" -> "sha256:e768fd4e2243ecf52962df14d926ec976de884192f7fbe66b212a6b0fd90e10d" [label=""];
}

