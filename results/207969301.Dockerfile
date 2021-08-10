[app/sources/207969301.Dockerfile]
digraph {
  "sha256:e0912a1fafa67d017e7c2fdddf665825d464b2282ca038e0832ff7e0ef42171d" [label="docker-image://docker.io/jupyter/pyspark-notebook:latest" shape="ellipse"];
  "sha256:74504928d7edea2f22e753ad16cc67c612d27470b76236c410ff2882ba1cac53" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:39b43ae65bcca42e173b6c4576b4e53834c5990441cf66905989a3bbff02cc0e" [label="/bin/sh -c apt-get update && apt-get install -y     curl     git-core     build-essential     cpio     python-pip     libpython-dev     libgeos-dev     libproj-dev     libgdal-dev     libspatialite-dev     && apt-get clean" shape="box"];
  "sha256:1fa994734e31a94a59ab151f7d9960bef4cf38b5524975ca008ac78966952633" [label="/bin/sh -c git clone https://github.com/sstephenson/bats.git &&     cd bats && ./install.sh /usr/local &&     cd .. && rm -rf  ./bats" shape="box"];
  "sha256:9b7b738354049f4b959a81f439bfc5a7845c0563eff1e106d295d04aad2e3ed3" [label="/bin/sh -c $CONDA_ACTIVATE && pip install overpy --upgrade" shape="box"];
  "sha256:caa0cfe063f3351cf5176b5d4fc6d97fa692d75ba5b942322f4336db57026267" [label="/bin/sh -c $CONDA_ACTIVATE && pip install retrying --upgrade" shape="box"];
  "sha256:ec2a8354891872496e2a24055b5a4630d903befb2954b0ad578288883ca049b0" [label="/bin/sh -c $CONDA_ACTIVATE && pip install geopandas --upgrade" shape="box"];
  "sha256:d6047abf9d95e99b1e391c833f6e16bb75fa16c383010113829fdfa998810199" [label="/bin/sh -c $CONDA_ACTIVATE && pip install folium --upgrade" shape="box"];
  "sha256:94f06c87efd7eda7112e7c74859c10343728458aa99260976bb3b2968bac44e0" [label="/bin/sh -c $CONDA_ACTIVATE && pip install branca --upgrade" shape="box"];
  "sha256:16e469c6952fedcb5cec3acecc410288668e7893d57968ebc21521e085d1586c" [label="/bin/sh -c $CONDA_ACTIVATE && pip install vincent --upgrade" shape="box"];
  "sha256:728c8bafdacd80fe5df94860a1216c940b39fed47494d4224207e4d88afc3027" [label="/bin/sh -c conda install libgfortran -y" shape="box"];
  "sha256:8d39d9d96b3269aab46a57b20d7cfc00b855ff20e1b75d5f4c6649df412d8edd" [label="/bin/sh -c conda install fiona -y" shape="box"];
  "sha256:759aa440ee6a1f2902bb1f74869403233dd269abb73679d4a461b6fba490a10c" [label="/bin/sh -c conda install gdal -y" shape="box"];
  "sha256:c72a3af2fc300dff7bae67bb226f28a9bd2bfc708a40248af683eb2c4c51dfa6" [label="/bin/sh -c curl -k -o /usr/local/lib/spatial-spark_2.10-1.1.1-beta-SNAPSHOT.jar       https://dl.dropboxusercontent.com/u/96303065/spark-workshop/spatial-spark_2.10-1.1.1-beta-SNAPSHOT.jar" shape="box"];
  "sha256:376b461515947588314bfeadc5a40351a092f97eba3de5d6e7392058ebcb4749" [label="/bin/sh -c curl -k -o /usr/local/lib/jts-1.13.jar       http://central.maven.org/maven2/com/vividsolutions/jts/1.13/jts-1.13.jar" shape="box"];
  "sha256:4f3d555938e9ef894262ff913a63ff551360d77f0c732f06999f06167a8de97a" [label="/bin/sh -c ls -a && git clone https://github.com/sabman/PySparkGeoAnalysis.git . && pwd && ls -la work-flow" shape="box"];
  "sha256:20401aa1f8ef256c8c66957b87cf06bc2ad451def23a87a20d9f9b2b5f3a9149" [label="/bin/sh -c curl -o ./06_Europe_Cities_Boundaries_with_Labels_Population.geo.json       https://dl.dropboxusercontent.com/u/96303065/spark-workshop/06_Europe_Cities_Boundaries_with_Labels_Population.geo.json &&       mv 06_Europe_Cities_Boundaries_with_Labels_Population.geo.json ./work-flow" shape="box"];
  "sha256:050e2cb6d4bc4c60d70c8ca6eb37ec44bd83500c81458fac0428713cb8ecbbe9" [label="/bin/sh -c curl -o ./pois.json       https://dl.dropboxusercontent.com/u/96303065/spark-workshop/pois.json &&       mv pois.json ./work-flow" shape="box"];
  "sha256:0df79f056b8d3cb56256b4e8a4ccd510e3f420739d7f57a19fa94a4208983584" [label="sha256:0df79f056b8d3cb56256b4e8a4ccd510e3f420739d7f57a19fa94a4208983584" shape="plaintext"];
  "sha256:e0912a1fafa67d017e7c2fdddf665825d464b2282ca038e0832ff7e0ef42171d" -> "sha256:74504928d7edea2f22e753ad16cc67c612d27470b76236c410ff2882ba1cac53" [label=""];
  "sha256:74504928d7edea2f22e753ad16cc67c612d27470b76236c410ff2882ba1cac53" -> "sha256:39b43ae65bcca42e173b6c4576b4e53834c5990441cf66905989a3bbff02cc0e" [label=""];
  "sha256:39b43ae65bcca42e173b6c4576b4e53834c5990441cf66905989a3bbff02cc0e" -> "sha256:1fa994734e31a94a59ab151f7d9960bef4cf38b5524975ca008ac78966952633" [label=""];
  "sha256:1fa994734e31a94a59ab151f7d9960bef4cf38b5524975ca008ac78966952633" -> "sha256:9b7b738354049f4b959a81f439bfc5a7845c0563eff1e106d295d04aad2e3ed3" [label=""];
  "sha256:9b7b738354049f4b959a81f439bfc5a7845c0563eff1e106d295d04aad2e3ed3" -> "sha256:caa0cfe063f3351cf5176b5d4fc6d97fa692d75ba5b942322f4336db57026267" [label=""];
  "sha256:caa0cfe063f3351cf5176b5d4fc6d97fa692d75ba5b942322f4336db57026267" -> "sha256:ec2a8354891872496e2a24055b5a4630d903befb2954b0ad578288883ca049b0" [label=""];
  "sha256:ec2a8354891872496e2a24055b5a4630d903befb2954b0ad578288883ca049b0" -> "sha256:d6047abf9d95e99b1e391c833f6e16bb75fa16c383010113829fdfa998810199" [label=""];
  "sha256:d6047abf9d95e99b1e391c833f6e16bb75fa16c383010113829fdfa998810199" -> "sha256:94f06c87efd7eda7112e7c74859c10343728458aa99260976bb3b2968bac44e0" [label=""];
  "sha256:94f06c87efd7eda7112e7c74859c10343728458aa99260976bb3b2968bac44e0" -> "sha256:16e469c6952fedcb5cec3acecc410288668e7893d57968ebc21521e085d1586c" [label=""];
  "sha256:16e469c6952fedcb5cec3acecc410288668e7893d57968ebc21521e085d1586c" -> "sha256:728c8bafdacd80fe5df94860a1216c940b39fed47494d4224207e4d88afc3027" [label=""];
  "sha256:728c8bafdacd80fe5df94860a1216c940b39fed47494d4224207e4d88afc3027" -> "sha256:8d39d9d96b3269aab46a57b20d7cfc00b855ff20e1b75d5f4c6649df412d8edd" [label=""];
  "sha256:8d39d9d96b3269aab46a57b20d7cfc00b855ff20e1b75d5f4c6649df412d8edd" -> "sha256:759aa440ee6a1f2902bb1f74869403233dd269abb73679d4a461b6fba490a10c" [label=""];
  "sha256:759aa440ee6a1f2902bb1f74869403233dd269abb73679d4a461b6fba490a10c" -> "sha256:c72a3af2fc300dff7bae67bb226f28a9bd2bfc708a40248af683eb2c4c51dfa6" [label=""];
  "sha256:c72a3af2fc300dff7bae67bb226f28a9bd2bfc708a40248af683eb2c4c51dfa6" -> "sha256:376b461515947588314bfeadc5a40351a092f97eba3de5d6e7392058ebcb4749" [label=""];
  "sha256:376b461515947588314bfeadc5a40351a092f97eba3de5d6e7392058ebcb4749" -> "sha256:4f3d555938e9ef894262ff913a63ff551360d77f0c732f06999f06167a8de97a" [label=""];
  "sha256:4f3d555938e9ef894262ff913a63ff551360d77f0c732f06999f06167a8de97a" -> "sha256:20401aa1f8ef256c8c66957b87cf06bc2ad451def23a87a20d9f9b2b5f3a9149" [label=""];
  "sha256:20401aa1f8ef256c8c66957b87cf06bc2ad451def23a87a20d9f9b2b5f3a9149" -> "sha256:050e2cb6d4bc4c60d70c8ca6eb37ec44bd83500c81458fac0428713cb8ecbbe9" [label=""];
  "sha256:050e2cb6d4bc4c60d70c8ca6eb37ec44bd83500c81458fac0428713cb8ecbbe9" -> "sha256:0df79f056b8d3cb56256b4e8a4ccd510e3f420739d7f57a19fa94a4208983584" [label=""];
}

