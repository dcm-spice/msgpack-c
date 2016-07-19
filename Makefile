
lint:
	COCOA_PODS_LOCAL_DEV=1 pod lib lint

header_file_path:
	find msgpack-c/include -type d | awk '{ printf("%s/*.h\n", $$0); printf("%s/*.hpp\n", $$0); }'
