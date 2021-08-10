[app/sources/252801886.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" [label="local://context" shape="ellipse"];
  "sha256:4ad5ffd84242ff07451fe77ebe750989a52c2173f567eb3e407c0aadadbc5c86" [label="copy{src=/mysql/utf8.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:7a1d07c67392967a1f989569e02acf0d31ce16c6dbcd757a4f5c5ae63eb3763b" [label="copy{src=/database/database.sql, dest=/docker-entrypoint-initdb.d/0.sql}" shape="note"];
  "sha256:c2e444e36d18e108bb6e481db21024741ced12a7bf6551203e87890e39124153" [label="copy{src=/foreign-key/foreign-key.sql, dest=/docker-entrypoint-initdb.d/1.sql}" shape="note"];
  "sha256:4808662ce0c4c0c353c006a150eb067865b9f248f9bdb31a2dfd8e236e22b4fd" [label="copy{src=/inserts/estado.sql, dest=/docker-entrypoint-initdb.d/2.sql}" shape="note"];
  "sha256:b028b79497f15dea00f0473f21104a12aec71c057ae7ff1e90ec49d37b433e7c" [label="copy{src=/inserts/cidade.sql, dest=/docker-entrypoint-initdb.d/3.sql}" shape="note"];
  "sha256:83b6bf7600ec79fa2e28f431f3df494c46f428abcce90ec915414d0e8ddb97c5" [label="copy{src=/inserts/bairro.sql, dest=/docker-entrypoint-initdb.d/4.sql}" shape="note"];
  "sha256:2862ed4a3c015c7570b6bef32ef2ebf2cc4319319f91c78135e110ac010a462b" [label="copy{src=/inserts/comprador.sql, dest=/docker-entrypoint-initdb.d/5.sql}" shape="note"];
  "sha256:38eb5285b667be76ef934c43e9780a650e1b64c44fc8b9d1efa23702ed4187fa" [label="copy{src=/inserts/vendedor.sql, dest=/docker-entrypoint-initdb.d/6.sql}" shape="note"];
  "sha256:ad8eea2166db492b4040311213f4433a0892e6c92835b5fa08fe603a87eb0517" [label="copy{src=/inserts/imoveis.sql, dest=/docker-entrypoint-initdb.d/7.sql}" shape="note"];
  "sha256:7959aef8d67383e56766cc3e3cda3e342c57166ee0a2f19bfb59cf1dcca3bc94" [label="copy{src=/inserts/oferta.sql, dest=/docker-entrypoint-initdb.d/8.sql}" shape="note"];
  "sha256:b5afbc4e086428bae1755b2111df500ac0e1de00d6b24c354eecbdc720bebb8b" [label="copy{src=/inserts/faixa_imovel.sql, dest=/docker-entrypoint-initdb/9.sql}" shape="note"];
  "sha256:404ce28bc6db2fb5c6ed43e10e1c3aaf6c346284b18436751b2b9b01ddd115b2" [label="sha256:404ce28bc6db2fb5c6ed43e10e1c3aaf6c346284b18436751b2b9b01ddd115b2" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:4ad5ffd84242ff07451fe77ebe750989a52c2173f567eb3e407c0aadadbc5c86" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:4ad5ffd84242ff07451fe77ebe750989a52c2173f567eb3e407c0aadadbc5c86" [label=""];
  "sha256:4ad5ffd84242ff07451fe77ebe750989a52c2173f567eb3e407c0aadadbc5c86" -> "sha256:7a1d07c67392967a1f989569e02acf0d31ce16c6dbcd757a4f5c5ae63eb3763b" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:7a1d07c67392967a1f989569e02acf0d31ce16c6dbcd757a4f5c5ae63eb3763b" [label=""];
  "sha256:7a1d07c67392967a1f989569e02acf0d31ce16c6dbcd757a4f5c5ae63eb3763b" -> "sha256:c2e444e36d18e108bb6e481db21024741ced12a7bf6551203e87890e39124153" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:c2e444e36d18e108bb6e481db21024741ced12a7bf6551203e87890e39124153" [label=""];
  "sha256:c2e444e36d18e108bb6e481db21024741ced12a7bf6551203e87890e39124153" -> "sha256:4808662ce0c4c0c353c006a150eb067865b9f248f9bdb31a2dfd8e236e22b4fd" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:4808662ce0c4c0c353c006a150eb067865b9f248f9bdb31a2dfd8e236e22b4fd" [label=""];
  "sha256:4808662ce0c4c0c353c006a150eb067865b9f248f9bdb31a2dfd8e236e22b4fd" -> "sha256:b028b79497f15dea00f0473f21104a12aec71c057ae7ff1e90ec49d37b433e7c" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:b028b79497f15dea00f0473f21104a12aec71c057ae7ff1e90ec49d37b433e7c" [label=""];
  "sha256:b028b79497f15dea00f0473f21104a12aec71c057ae7ff1e90ec49d37b433e7c" -> "sha256:83b6bf7600ec79fa2e28f431f3df494c46f428abcce90ec915414d0e8ddb97c5" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:83b6bf7600ec79fa2e28f431f3df494c46f428abcce90ec915414d0e8ddb97c5" [label=""];
  "sha256:83b6bf7600ec79fa2e28f431f3df494c46f428abcce90ec915414d0e8ddb97c5" -> "sha256:2862ed4a3c015c7570b6bef32ef2ebf2cc4319319f91c78135e110ac010a462b" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:2862ed4a3c015c7570b6bef32ef2ebf2cc4319319f91c78135e110ac010a462b" [label=""];
  "sha256:2862ed4a3c015c7570b6bef32ef2ebf2cc4319319f91c78135e110ac010a462b" -> "sha256:38eb5285b667be76ef934c43e9780a650e1b64c44fc8b9d1efa23702ed4187fa" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:38eb5285b667be76ef934c43e9780a650e1b64c44fc8b9d1efa23702ed4187fa" [label=""];
  "sha256:38eb5285b667be76ef934c43e9780a650e1b64c44fc8b9d1efa23702ed4187fa" -> "sha256:ad8eea2166db492b4040311213f4433a0892e6c92835b5fa08fe603a87eb0517" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:ad8eea2166db492b4040311213f4433a0892e6c92835b5fa08fe603a87eb0517" [label=""];
  "sha256:ad8eea2166db492b4040311213f4433a0892e6c92835b5fa08fe603a87eb0517" -> "sha256:7959aef8d67383e56766cc3e3cda3e342c57166ee0a2f19bfb59cf1dcca3bc94" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:7959aef8d67383e56766cc3e3cda3e342c57166ee0a2f19bfb59cf1dcca3bc94" [label=""];
  "sha256:7959aef8d67383e56766cc3e3cda3e342c57166ee0a2f19bfb59cf1dcca3bc94" -> "sha256:b5afbc4e086428bae1755b2111df500ac0e1de00d6b24c354eecbdc720bebb8b" [label=""];
  "sha256:b1c290bddf30198d7f403180ebaaf028fd2d19bed02dc99daeea2cd7341e37b4" -> "sha256:b5afbc4e086428bae1755b2111df500ac0e1de00d6b24c354eecbdc720bebb8b" [label=""];
  "sha256:b5afbc4e086428bae1755b2111df500ac0e1de00d6b24c354eecbdc720bebb8b" -> "sha256:404ce28bc6db2fb5c6ed43e10e1c3aaf6c346284b18436751b2b9b01ddd115b2" [label=""];
}

