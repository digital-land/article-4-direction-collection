ARTICLE_4_DIRECTION_DATASET=$(DATASET_DIR)article-4-direction.csv
ARTICLE_4_DIRECTION_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)article-4-direction/18202c0b321a31029358d3fe65d17fd00bdd1e07b2bbfe20c612247639346f9b.csv\
    $(TRANSFORMED_DIR)article-4-direction/223b31dab8f2af16bd637db4be4e17239a7405a5f585200610c05cd64440c988.csv\
    $(TRANSFORMED_DIR)article-4-direction/368d17a72f6f47f94e3ab6832223fa01d38838b9d24c5f27c53e4704eee83c9d.csv\
    $(TRANSFORMED_DIR)article-4-direction/5a63cf05c7ec1a74184180e1b42a71a7d6ea9071419b2f85f72fb59c2d8a07a0.csv\
    $(TRANSFORMED_DIR)article-4-direction/7fb3fd9a1f73608c71659df88e4c26f64e5ce883e5e1456b88dd14194cd1d677.csv\
    $(TRANSFORMED_DIR)article-4-direction/a54c9011cab0df132ca796a66c55e05d1f59357e69aef6ac88034f6aa2a69c85.csv

$(TRANSFORMED_DIR)article-4-direction/18202c0b321a31029358d3fe65d17fd00bdd1e07b2bbfe20c612247639346f9b.csv: collection/resource/18202c0b321a31029358d3fe65d17fd00bdd1e07b2bbfe20c612247639346f9b
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/223b31dab8f2af16bd637db4be4e17239a7405a5f585200610c05cd64440c988.csv: collection/resource/223b31dab8f2af16bd637db4be4e17239a7405a5f585200610c05cd64440c988
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/368d17a72f6f47f94e3ab6832223fa01d38838b9d24c5f27c53e4704eee83c9d.csv: collection/resource/368d17a72f6f47f94e3ab6832223fa01d38838b9d24c5f27c53e4704eee83c9d
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/5a63cf05c7ec1a74184180e1b42a71a7d6ea9071419b2f85f72fb59c2d8a07a0.csv: collection/resource/5a63cf05c7ec1a74184180e1b42a71a7d6ea9071419b2f85f72fb59c2d8a07a0
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/7fb3fd9a1f73608c71659df88e4c26f64e5ce883e5e1456b88dd14194cd1d677.csv: collection/resource/7fb3fd9a1f73608c71659df88e4c26f64e5ce883e5e1456b88dd14194cd1d677
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/a54c9011cab0df132ca796a66c55e05d1f59357e69aef6ac88034f6aa2a69c85.csv: collection/resource/a54c9011cab0df132ca796a66c55e05d1f59357e69aef6ac88034f6aa2a69c85
	$(run-pipeline)

$(ARTICLE_4_DIRECTION_DATASET): $(ARTICLE_4_DIRECTION_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(ARTICLE_4_DIRECTION_TRANSFORMED_FILES)

dataset:: $(ARTICLE_4_DIRECTION_DATASET)
