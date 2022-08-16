all:
	GOOS=windows GOARCH=386 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath  -o randua-windows-386.exe
	GOOS=windows GOARCH=amd64 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath -o randua-windows-amd64.exe
	GOOS=linux GOARCH=386 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath -o randua-linux-386
	GOOS=linux GOARCH=amd64 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath -o randua-linux-amd64
	GOOS=darwin GOARCH=amd64 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath -o randua-macos-amd64
	GOOS=darwin GOARCH=arm64 go build -a -ldflags '-s -w -extldflags "-static"' -trimpath -o randua-macos-arm64
