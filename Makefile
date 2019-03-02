ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: pack clean

pack: clean
	cd ${ROOT_DIR}/overrides/mods/; python3 ./dl_overrides.py
	cd ${ROOT_DIR}; zip -r ATM3.zip . -x .*

clean:
	rm -rf ${ROOT_DIR}/overrides/mods/*.jar ${ROOT_DIR}/*.zip

