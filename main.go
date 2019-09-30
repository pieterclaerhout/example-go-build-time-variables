package main

import (
	"fmt"

	"github.com/pieterclaerhout/example-go-build-time-variables/version"
)

func main() {
	fmt.Println("Git Revision:", version.GitRevision)
	fmt.Println("Git Branch:", version.GitBranch)
}
