package main

import (
	"fmt"
	"io"
	"net/http"
)

func main() {
	http.HandleFunc("/", dumpHeaders)
	http.ListenAndServe(":8080", nil)
}

func dumpHeaders(w http.ResponseWriter, r *http.Request) {
	for k := range r.Header {
		io.WriteString(w, fmt.Sprintf("%v\n", k))
	}
}
