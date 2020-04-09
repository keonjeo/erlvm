.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old ERLVM_ROOT, and install the new ERLVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install erlvm tool into ~/.erlvm directory  <<<<<<<"
	@./binscripts/erlvm-installer

clean:
	@if [ -d ~/.erlvm/archive ]; then \
		echo ">>>>>>  Backup ~/.erlvm/archive directory  <<<<<<<"; \
		if [ ! -d ~/.erlvm_archive.back ]; then \
			mv ~/.erlvm/archive ~/.erlvm_archive.back; \
		fi; \
	fi;
	@if [ -d ~/.erlvm ]; then \
		echo ">>>>>>  Remove ~/.erlvm directory  <<<<<<<"; \
		rm -rf ~/.erlvm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.erlvm/scripts/erlvm
