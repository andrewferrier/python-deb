DOCKERTAG = andrewferrier/python-debs

getdebs: build
	docker run --rm -v ${PWD}:/debs $(DOCKERTAG) sh -c 'cp /tmp/*.deb /debs'

run: build
	docker run -i -t $(DOCKERTAG)

build:
	docker build -t $(DOCKERTAG) .
