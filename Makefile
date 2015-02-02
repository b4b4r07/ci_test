DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml
DOTFILES_TARGET   := $(wildcard .??*) bin
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

all: install

install:
	bash Brewfile
