.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old ERLVM_ROOT, and install the new ERLVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install erlvm tool into ~/.erlvm directory  <<<<<<<"
	@./erlvm-installer dev

clean:
	@if [ -d ~/.erlvm ]; then result1=`ls -A  ~/.erlvm/erlang_tars`; fi;
	@if [  -n ${result1} ]; then echo ">>>>>>  Backup ~/.erlvm/erlang_tars directory  <<<<<<<"; fi;
	@if [ -n ${result1} ]; then \
		if [ ! -d ~/.erlvm_erlang_tars.back ]; then \
			cp -rp ~/.erlvm/erlang_tars ~/.erlvm_erlang_tars.back; \
		fi; \
	fi;

	@if [ -d ~/.erlvm ]; then result2=`ls -A  ~/.erlvm/erlang_versions`; fi
	@if [ -n ${result2} ]; then echo ">>>>>>  Backup ~/.erlvm/erlang_versions directory  <<<<<<<"; fi
	@if [ -n ${result2} ]; then \
		if [ ! -d ~/.erlvm_erlang_versions.back ]; then \
			cp -rp ~/.erlvm/erlang_versions ~/.erlvm_erlang_versions.back; \
		fi; \
	fi;

	@if [ -d ~/.erlvm ]; then echo ">>>>>>  Remove ~/.erlvm directory  <<<<<<<"; fi
	@if [ -d ~/.erlvm ]; then rm -rf ~/.erlvm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.erlvm/scripts/erlvm