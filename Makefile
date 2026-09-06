.PHONY: compile release test
GULP=node_modules/.bin/gulp

all: compile test ## (default) Run Compile and test targets
test: ## runs all tests (equivalent to `npm test`)
	npm test
compile: ## compile the project, update package versions if specified, installs dependencies, and builds the project
	npm i
	cd docs && npm i
	rm -rf dist
	$(GULP) loadDependencies
	npm run build
	$(GULP) docs
release: ## show the release instructions
	@echo "Releases are published through GitHub. See RELEASING.md."

help: ## show this help
	@sed -ne "s/^##\(.*\)/\1/p" $(MAKEFILE_LIST)
	@printf "────────────────────────`tput bold``tput setaf 2` Make Commands `tput sgr0`────────────────────────────────\n"
	@sed -ne "/@sed/!s/\(^[^#?=]*:\).*##\(.*\)/`tput setaf 2``tput bold`\1`tput sgr0`\2/p" $(MAKEFILE_LIST)
	@printf "────────────────────────`tput bold``tput setaf 4` Make Variables `tput sgr0`───────────────────────────────\n"
	@sed -ne "/@sed/!s/\(.*\)?=\(.*\)##\(.*\)/`tput setaf 4``tput bold`\1:`tput setaf 5`\2`tput sgr0`\3/p" $(MAKEFILE_LIST)
	@printf "───────────────────────────────────────────────────────────────────────\n"
