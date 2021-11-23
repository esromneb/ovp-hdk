


.PHONY: bitfile all clean
all: bitfile


OUTPUT=build/bitfile.bit

bitfile:
	make -C ovp-hdl all
	mkdir -p build
	rm -rf ${OUTPUT}
	echo "Now Building" >> ${OUTPUT}
	cat ovp-hdl/gen/example_version.sv >> ${OUTPUT}
	echo "Done" >> ${OUTPUT}
	@echo "Done"

clean:
	make -C ovp-hdl clean
	rm -rf build


include make_include/ovpack.mk
