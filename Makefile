# Makefile

.PHONY: build-% check-%

check-%:
	@if ! test -d "$*" ; then echo "No directory $*" >/dev/stderr ; exit 1 ; fi
	@if ! test -f "$*/Dockerfile" ; then echo "No Dockerfile in directory $*" ; exit 1 ; fi

build-%: check-%
	@docker build -t "oreandawe/minimalvideo:$*" -f "$*/Dockerfile" .

run-%: build-%
	@xdisplay="$$(find /tmp -type s -and -name 'X[0-9]' 2>/dev/null)" ; \
	if test -z "$$xdisplay" ; then \
		echo "Could not find X socket in /tmp" ; \
		exit 1 ; \
	fi ; \
	docker run --rm -ti -v "$$xdisplay:/tmp/.X11-unix/X0" "oreandawe/minimalvideo:$*" ; \
	exit 0
