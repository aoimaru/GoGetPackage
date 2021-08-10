[app/sources/357571876.Dockerfile]
digraph {
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:253cefd1f0c1b8ab6d811b669bcfe2345ac8b317449dcd11466c62fecd115478" [label="/bin/sh -c apk add --update pwgen bash curl ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e467c8710551a6d7422a6b68c9b6a6436ada48aacf50c9e99d9a917bf26d8fae" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:3f62077fbe78ec23b3bdd88ad1f73f43eab692cf285bfd4715a621a3873c12fc" [label="/bin/sh -c echo \"$FUSEKI_SHA512  fuseki.tar.gz\" > fuseki.tar.gz.sha512" shape="box"];
  "sha256:1628bfccd0d5cf830f165997f0b13db0df91996170c3e57c7a01403f2f3d135d" [label="/bin/sh -c curl $FUSEKI_MIRROR/jena/binaries/apache-jena-fuseki-$FUSEKI_VERSION.tar.gz > fuseki.tar.gz ||         curl $FUSEKI_ARCHIVE/jena/binaries/apache-jena-fuseki-$FUSEKI_VERSION.tar.gz > fuseki.tar.gz &&         sha512sum -c fuseki.tar.gz.sha512 &&         tar zxf fuseki.tar.gz &&         mv apache-jena-fuseki* $FUSEKI_HOME &&         rm fuseki.tar.gz* &&         cd $FUSEKI_HOME && rm -rf fuseki.war" shape="box"];
  "sha256:ac9522ee5332b3703d4909c8bb172b1d9cb4e4ada6b6737c1254021ceb403f81" [label="local://context" shape="ellipse"];
  "sha256:0a79d0c1c7b460ec89d2683ae501380d403d1f363cdccd92047c06e105ed3ca6" [label="copy{src=/shiro.ini, dest=/jena-fuseki/shiro.ini}" shape="note"];
  "sha256:312913628c5b9b9325247fb47a036f79690254d6f6eec55da1bf4e970fbc0a4e" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:ab6062cb8f19e6c66f091aa5f6e72cdec5a25d7d132d21718eaa50f31d570a06" [label="/bin/sh -c chmod 755 /docker-entrypoint.sh" shape="box"];
  "sha256:e81d8bfdcc3fc302bc92c17da7d0cb4871ebe12fa5f0764e199be36c3ba5a324" [label="copy{src=/load.sh, dest=/jena-fuseki/}" shape="note"];
  "sha256:6bd31836155939609dc09e2a8b024e91f0f0356c93e58bbb9d936c316910d969" [label="copy{src=/tdbloader, dest=/jena-fuseki/}" shape="note"];
  "sha256:b1db6adeaf8a581e902ef2a8816ba4e9077cc2b6dcc2a4077dc82651a2a1b566" [label="/bin/sh -c chmod 755 /jena-fuseki/load.sh /jena-fuseki/tdbloader" shape="box"];
  "sha256:e6e22fbca20544b8b50b0aa72f5994900586923fbb751faeb213184227f2ede0" [label="mkdir{path=/jena-fuseki}" shape="note"];
  "sha256:5160b948db95d462c3e78839f97231ff0876e68ed60d178df1c7ea57d8ab1244" [label="sha256:5160b948db95d462c3e78839f97231ff0876e68ed60d178df1c7ea57d8ab1244" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:253cefd1f0c1b8ab6d811b669bcfe2345ac8b317449dcd11466c62fecd115478" [label=""];
  "sha256:253cefd1f0c1b8ab6d811b669bcfe2345ac8b317449dcd11466c62fecd115478" -> "sha256:e467c8710551a6d7422a6b68c9b6a6436ada48aacf50c9e99d9a917bf26d8fae" [label=""];
  "sha256:e467c8710551a6d7422a6b68c9b6a6436ada48aacf50c9e99d9a917bf26d8fae" -> "sha256:3f62077fbe78ec23b3bdd88ad1f73f43eab692cf285bfd4715a621a3873c12fc" [label=""];
  "sha256:3f62077fbe78ec23b3bdd88ad1f73f43eab692cf285bfd4715a621a3873c12fc" -> "sha256:1628bfccd0d5cf830f165997f0b13db0df91996170c3e57c7a01403f2f3d135d" [label=""];
  "sha256:1628bfccd0d5cf830f165997f0b13db0df91996170c3e57c7a01403f2f3d135d" -> "sha256:0a79d0c1c7b460ec89d2683ae501380d403d1f363cdccd92047c06e105ed3ca6" [label=""];
  "sha256:ac9522ee5332b3703d4909c8bb172b1d9cb4e4ada6b6737c1254021ceb403f81" -> "sha256:0a79d0c1c7b460ec89d2683ae501380d403d1f363cdccd92047c06e105ed3ca6" [label=""];
  "sha256:0a79d0c1c7b460ec89d2683ae501380d403d1f363cdccd92047c06e105ed3ca6" -> "sha256:312913628c5b9b9325247fb47a036f79690254d6f6eec55da1bf4e970fbc0a4e" [label=""];
  "sha256:ac9522ee5332b3703d4909c8bb172b1d9cb4e4ada6b6737c1254021ceb403f81" -> "sha256:312913628c5b9b9325247fb47a036f79690254d6f6eec55da1bf4e970fbc0a4e" [label=""];
  "sha256:312913628c5b9b9325247fb47a036f79690254d6f6eec55da1bf4e970fbc0a4e" -> "sha256:ab6062cb8f19e6c66f091aa5f6e72cdec5a25d7d132d21718eaa50f31d570a06" [label=""];
  "sha256:ab6062cb8f19e6c66f091aa5f6e72cdec5a25d7d132d21718eaa50f31d570a06" -> "sha256:e81d8bfdcc3fc302bc92c17da7d0cb4871ebe12fa5f0764e199be36c3ba5a324" [label=""];
  "sha256:ac9522ee5332b3703d4909c8bb172b1d9cb4e4ada6b6737c1254021ceb403f81" -> "sha256:e81d8bfdcc3fc302bc92c17da7d0cb4871ebe12fa5f0764e199be36c3ba5a324" [label=""];
  "sha256:e81d8bfdcc3fc302bc92c17da7d0cb4871ebe12fa5f0764e199be36c3ba5a324" -> "sha256:6bd31836155939609dc09e2a8b024e91f0f0356c93e58bbb9d936c316910d969" [label=""];
  "sha256:ac9522ee5332b3703d4909c8bb172b1d9cb4e4ada6b6737c1254021ceb403f81" -> "sha256:6bd31836155939609dc09e2a8b024e91f0f0356c93e58bbb9d936c316910d969" [label=""];
  "sha256:6bd31836155939609dc09e2a8b024e91f0f0356c93e58bbb9d936c316910d969" -> "sha256:b1db6adeaf8a581e902ef2a8816ba4e9077cc2b6dcc2a4077dc82651a2a1b566" [label=""];
  "sha256:b1db6adeaf8a581e902ef2a8816ba4e9077cc2b6dcc2a4077dc82651a2a1b566" -> "sha256:e6e22fbca20544b8b50b0aa72f5994900586923fbb751faeb213184227f2ede0" [label=""];
  "sha256:e6e22fbca20544b8b50b0aa72f5994900586923fbb751faeb213184227f2ede0" -> "sha256:5160b948db95d462c3e78839f97231ff0876e68ed60d178df1c7ea57d8ab1244" [label=""];
}

