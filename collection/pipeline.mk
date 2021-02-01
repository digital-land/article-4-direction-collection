ARTICLE_4_DIRECTION_DATASET=$(DATASET_DIR)article-4-direction.csv
ARTICLE_4_DIRECTION_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)article-4-direction/70ba4d0037d943b63a591d1b9f67e1dd9d19e6eae9b149f2625ce4b3d06f4470.csv\
    $(TRANSFORMED_DIR)article-4-direction/eea42f85765252b684c6ebffca72a441790ba9bba63a6b1d63b80bda13dfa63d.csv

$(TRANSFORMED_DIR)article-4-direction/70ba4d0037d943b63a591d1b9f67e1dd9d19e6eae9b149f2625ce4b3d06f4470.csv: collection/resource/70ba4d0037d943b63a591d1b9f67e1dd9d19e6eae9b149f2625ce4b3d06f4470
	$(run-pipeline)

$(TRANSFORMED_DIR)article-4-direction/eea42f85765252b684c6ebffca72a441790ba9bba63a6b1d63b80bda13dfa63d.csv: collection/resource/eea42f85765252b684c6ebffca72a441790ba9bba63a6b1d63b80bda13dfa63d
	$(run-pipeline)

$(ARTICLE_4_DIRECTION_DATASET): $(ARTICLE_4_DIRECTION_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(ARTICLE_4_DIRECTION_TRANSFORMED_FILES)

dataset:: $(ARTICLE_4_DIRECTION_DATASET)
