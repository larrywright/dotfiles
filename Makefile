.PHONY: all
all: install

.PHONY: install
install: ## Installs the dotfiles.
	# Create links to the files 
	@for file in bash_profile bashrc bash_prompt gitconfig gitignore aliases exports ; do \
		ln -sfn "$(CURDIR)/$$file" "$(HOME)/.$$file"; \
	done
	ln -snf "$(CURDIR)/.bash_profile" "$(HOME)/.profile";
	
	# Update git with the new gitconfig
	git update-index --skip-worktree "$(CURDIR)/gitconfig";