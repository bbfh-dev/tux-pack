VERSION=1-0-0
DATA=./dist/tux_${VERSION}_data_pack
DATA_ZIP=../tux_${VERSION}_data_pack.zip
RESOURCE=./dist/tux_${VERSION}_resource_pack
RESOURCE_ZIP=../tux_${VERSION}_resource_pack.zip

build:
	rm -rf ./dist/
	mkdir -p ${DATA}/data
	mkdir -p ${RESOURCE}/assets
	cp -r ./minecraft/data ${DATA}/
	cp -r ./minecraft/assets ${RESOURCE}/
	cp ./minecraft/pack-data.mcmeta ${DATA}/pack.mcmeta
	cp ./minecraft/pack-assets.mcmeta ${RESOURCE}/pack.mcmeta
	cp -r ./animated_java/datapack/data/* ${DATA}/data/
	cp -r ./animated_java/resourcepack/assets/* ${RESOURCE}/assets/
	cp ./minecraft/data/minecraft/tags/function/load.json ${DATA}/data/minecraft/tags/function/load.json
	cp ./minecraft/data/minecraft/tags/function/tick.json ${DATA}/data/minecraft/tags/function/tick.json
	python ./speech.py
	cp ./dist/load_speech.mcfunction ${DATA}/data/tux/function/load_speech.mcfunction
	printf '\n%s\n' 'function tux:load_speech' >> ${DATA}/data/tux/function/load.mcfunction
	cd ${DATA}; zip -r ${DATA_ZIP} *
	cd ${RESOURCE}; zip -r ${RESOURCE_ZIP} *

dev-build: build
	cd ${DATA}; mv ${DATA_ZIP} ../tux_DEV_data_pack.zip
	cd ${DATA}; mv ${RESOURCE_ZIP} ../tux_DEV_resource_pack.zip
