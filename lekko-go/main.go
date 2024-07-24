package main

import (
	"context"
	"example/lekko"
	"log"
	"net/http"
	"os"
)

func main() {
	env := os.Getenv("env")
	lekkoCli := lekko.NewLekkoClient(context.Background())
	defer lekkoCli.Close(context.Background())
	// Start a simple HTTP server on localhost:8080
	// You can send requests using `curl localhost:8080`
	addr := ":8080"
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(lekkoCli.Example.GetReturnText(env)))
	})
	log.Println("Listening on", addr)
	log.Fatal(http.ListenAndServe(addr, nil))
}
