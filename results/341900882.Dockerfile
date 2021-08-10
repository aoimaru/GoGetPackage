[app/sources/341900882.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:32fa36c8cdbe1402ea8856c2f6ce2e2fadfca4775a29302d91de25d2a8d37692" [label="local://context" shape="ellipse"];
  "sha256:e94ab4a0c1da15c07717ba046afa24cd87b35238a4b085f987d2c7186a4419bd" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:f35790046d9edecb86db1837ddfcb91044426a52294dcb7a860e2857f2f132a4" [label="pip install sqlalchemy" shape="box"];
  "sha256:5a36cbbc7ea9a8cabe48d309c024e37ec2ff4bce3c708ef8f5c7d0cf2444eb92" [label="pip install sqlalchemy" shape="box"];
  "sha256:5165356c47744f5ca4ad2d1fecbbb5beb727337b96af4f0eb1c4e9f1702088a5" [label="pip install sqlalchemy" shape="box"];
  "sha256:0b9f013b2eb82aec691a2f3b2069a949414018d95f1d88fbbfa9194249b1af4f" [label="pip install sqlalchemy" shape="box"];
  "sha256:fbfa6a7c1b3bd22d1a136dbe5b8a370f7b9d5bfa09fa8003d9cb3d38de5ae810" [label="pip install sqlalchemy" shape="box"];
  "sha256:99d776f286e6a37cc6487cdadec7871b3a806fd7b0c20a486f4757daf4fc4e5a" [label="sha256:99d776f286e6a37cc6487cdadec7871b3a806fd7b0c20a486f4757daf4fc4e5a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e94ab4a0c1da15c07717ba046afa24cd87b35238a4b085f987d2c7186a4419bd" [label=""];
  "sha256:32fa36c8cdbe1402ea8856c2f6ce2e2fadfca4775a29302d91de25d2a8d37692" -> "sha256:e94ab4a0c1da15c07717ba046afa24cd87b35238a4b085f987d2c7186a4419bd" [label=""];
  "sha256:e94ab4a0c1da15c07717ba046afa24cd87b35238a4b085f987d2c7186a4419bd" -> "sha256:f35790046d9edecb86db1837ddfcb91044426a52294dcb7a860e2857f2f132a4" [label=""];
  "sha256:f35790046d9edecb86db1837ddfcb91044426a52294dcb7a860e2857f2f132a4" -> "sha256:5a36cbbc7ea9a8cabe48d309c024e37ec2ff4bce3c708ef8f5c7d0cf2444eb92" [label=""];
  "sha256:5a36cbbc7ea9a8cabe48d309c024e37ec2ff4bce3c708ef8f5c7d0cf2444eb92" -> "sha256:5165356c47744f5ca4ad2d1fecbbb5beb727337b96af4f0eb1c4e9f1702088a5" [label=""];
  "sha256:5165356c47744f5ca4ad2d1fecbbb5beb727337b96af4f0eb1c4e9f1702088a5" -> "sha256:0b9f013b2eb82aec691a2f3b2069a949414018d95f1d88fbbfa9194249b1af4f" [label=""];
  "sha256:0b9f013b2eb82aec691a2f3b2069a949414018d95f1d88fbbfa9194249b1af4f" -> "sha256:fbfa6a7c1b3bd22d1a136dbe5b8a370f7b9d5bfa09fa8003d9cb3d38de5ae810" [label=""];
  "sha256:fbfa6a7c1b3bd22d1a136dbe5b8a370f7b9d5bfa09fa8003d9cb3d38de5ae810" -> "sha256:99d776f286e6a37cc6487cdadec7871b3a806fd7b0c20a486f4757daf4fc4e5a" [label=""];
}

