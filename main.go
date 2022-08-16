package main

import (
	_ "embed"
	"flag"
	"fmt"
	"math/rand"
	"strings"
	"time"
)

var (
	prefix string
	suffix string
)

//go:embed useragents.txt
var userAgents string

func init() {
	flag.StringVar(&prefix, "p", "", "User-Agent prefix")
	flag.StringVar(&suffix, "s", "", "User-Agent suffix")
}

func main() {
	flag.Parse()

	randomSource := rand.NewSource(time.Now().UnixNano())
	random := rand.New(randomSource)

	agents := strings.Split(userAgents, "\n")
	i := random.Intn(len(agents))

	fmt.Printf("%s%s%s", prefix, agents[i], suffix)
}
