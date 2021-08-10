[app/sources/482257972.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:a9906469895a8a713967c0390378654f21dbe77265713453eb9f7d8d1d69b053" [label="/bin/sh -c rpm -Uvh https://download.postgresql.org/pub/repos/yum/${PGVERSION}/redhat/rhel-7-x86_64/${PGDG_REPO}" shape="box"];
  "sha256:b892bc6f27585cd0db0fa71e2e119debc2166269581b9d4d8417197681479f79" [label="/bin/sh -c yum install -y epel-release   && yum -y update   && yum -y install     gettext     postgresql96     postgresql96-libs   && yum -y clean all" shape="box"];
  "sha256:df2130e95eae1de9c5682c586aa82c1b20f55e98d49d41c397916b470f627996" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf" shape="box"];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" [label="local://context" shape="ellipse"];
  "sha256:ffaf06088c45012b474dd769ec77fe9f05fa83e1d6458606545f9cbd1c498c8a" [label="copy{src=/postgres_exporter.tar.gz, dest=/opt/cpm/bin}" shape="note"];
  "sha256:40ca5f403c24b46ca85f3afb14503b6f92f987b85f965b26d72bc04d4ef43ec5" [label="copy{src=/tools/pgmonitor/exporter/postgres, dest=/opt/cpm/conf}" shape="note"];
  "sha256:00b64a376a09dddea084bb1d5aa095cdaef0241da3465d5314100a56e7521b6a" [label="copy{src=/bin/collect, dest=/opt/cpm/bin}" shape="note"];
  "sha256:87bc4a6ac4110a710a7689284384238da9c679d352c5915ee9887dd0ca0f7b35" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:0983c03ee5776acbbc73d99da9a82e25d6fbab84c1db8dfbc672c9c91f93595e" [label="copy{src=/conf/collect, dest=/opt/cpm/conf}" shape="note"];
  "sha256:e58e6bd22285afd77bf3ab1234b8a52f75789bf3f01029f8ed875eb1659f9388" [label="/bin/sh -c chgrp -R 0 /opt/cpm/bin /opt/cpm/conf &&     chmod -R g=u /opt/cpm/bin/ opt/cpm/conf" shape="box"];
  "sha256:be95ffad67927cb8ad3ac74ae8df1f3b112b55280b94f068cff82584c3b29a30" [label="/bin/sh -c chmod g=u /etc/passwd" shape="box"];
  "sha256:7a1037dc9ab0322751667ed5d036a52916843ea7a8582d16bbbc99da8b35e37a" [label="sha256:7a1037dc9ab0322751667ed5d036a52916843ea7a8582d16bbbc99da8b35e37a" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:a9906469895a8a713967c0390378654f21dbe77265713453eb9f7d8d1d69b053" [label=""];
  "sha256:a9906469895a8a713967c0390378654f21dbe77265713453eb9f7d8d1d69b053" -> "sha256:b892bc6f27585cd0db0fa71e2e119debc2166269581b9d4d8417197681479f79" [label=""];
  "sha256:b892bc6f27585cd0db0fa71e2e119debc2166269581b9d4d8417197681479f79" -> "sha256:df2130e95eae1de9c5682c586aa82c1b20f55e98d49d41c397916b470f627996" [label=""];
  "sha256:df2130e95eae1de9c5682c586aa82c1b20f55e98d49d41c397916b470f627996" -> "sha256:ffaf06088c45012b474dd769ec77fe9f05fa83e1d6458606545f9cbd1c498c8a" [label=""];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" -> "sha256:ffaf06088c45012b474dd769ec77fe9f05fa83e1d6458606545f9cbd1c498c8a" [label=""];
  "sha256:ffaf06088c45012b474dd769ec77fe9f05fa83e1d6458606545f9cbd1c498c8a" -> "sha256:40ca5f403c24b46ca85f3afb14503b6f92f987b85f965b26d72bc04d4ef43ec5" [label=""];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" -> "sha256:40ca5f403c24b46ca85f3afb14503b6f92f987b85f965b26d72bc04d4ef43ec5" [label=""];
  "sha256:40ca5f403c24b46ca85f3afb14503b6f92f987b85f965b26d72bc04d4ef43ec5" -> "sha256:00b64a376a09dddea084bb1d5aa095cdaef0241da3465d5314100a56e7521b6a" [label=""];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" -> "sha256:00b64a376a09dddea084bb1d5aa095cdaef0241da3465d5314100a56e7521b6a" [label=""];
  "sha256:00b64a376a09dddea084bb1d5aa095cdaef0241da3465d5314100a56e7521b6a" -> "sha256:87bc4a6ac4110a710a7689284384238da9c679d352c5915ee9887dd0ca0f7b35" [label=""];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" -> "sha256:87bc4a6ac4110a710a7689284384238da9c679d352c5915ee9887dd0ca0f7b35" [label=""];
  "sha256:87bc4a6ac4110a710a7689284384238da9c679d352c5915ee9887dd0ca0f7b35" -> "sha256:0983c03ee5776acbbc73d99da9a82e25d6fbab84c1db8dfbc672c9c91f93595e" [label=""];
  "sha256:682981dc3ac43f8b68eac721342b8f84cdd72572d3455c1f339d32e0b5ccbde0" -> "sha256:0983c03ee5776acbbc73d99da9a82e25d6fbab84c1db8dfbc672c9c91f93595e" [label=""];
  "sha256:0983c03ee5776acbbc73d99da9a82e25d6fbab84c1db8dfbc672c9c91f93595e" -> "sha256:e58e6bd22285afd77bf3ab1234b8a52f75789bf3f01029f8ed875eb1659f9388" [label=""];
  "sha256:e58e6bd22285afd77bf3ab1234b8a52f75789bf3f01029f8ed875eb1659f9388" -> "sha256:be95ffad67927cb8ad3ac74ae8df1f3b112b55280b94f068cff82584c3b29a30" [label=""];
  "sha256:be95ffad67927cb8ad3ac74ae8df1f3b112b55280b94f068cff82584c3b29a30" -> "sha256:7a1037dc9ab0322751667ed5d036a52916843ea7a8582d16bbbc99da8b35e37a" [label=""];
}

