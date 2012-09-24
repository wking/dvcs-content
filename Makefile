# Build Jekyll input from the current development branch

REPO=$(abspath $(shell git rev-parse --git-dir))
BRANCH = wking
SUBDIRS = wking

all: index.md subdirs

# use README.mw with YAML front matter for the index
index.md:
	echo -e "---\nlayout: default\ntitle: dvcs-content\n---" > "$@"
	git show "$(BRANCH):README.md" >> "$@"

# process any subdir content
subdirs:
	@for i in $(SUBDIRS); \
	do echo "make $$i..."; \
	(cd $$i; $(MAKE) $(MFLAGS) REPO="$(REPO)" BRANCH="$(BRANCH)"); done

# use Jekyll to build the _site/ directory that GitHub serves
_site: all
	jekyll --pygments --no-lsi --safe

.PHONY: index.md subdirs _site
