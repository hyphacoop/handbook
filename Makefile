RUN = bundle exec

check: ## Check HTML and links
	$(RUN) htmlproofer ./_book \
			--allow-hash-href \
			--check-html \
			--url-ignore "/github.com\/hyphacoop\/organizing-private/,/github.com\/issues/"

%:
	@true

.PHONY: help

help:
	@echo 'Usage: make <command>'
	@echo
	@echo 'where <command> is one of the following:'
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
