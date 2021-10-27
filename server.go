package main

import (
	"arctron.lib/ctxkit"
	"context"
	"graphql-grpc/graph"
	"log"
	"net/http"
	"os"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/playground"
)

const defaultPort = "8082"

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = defaultPort
	}

	s, err := graph.NewGraphQLServer()
	if err != nil {
		log.Fatal(err)
	}
	srv := handler.NewDefaultServer(graph.NewExecutableSchema(graph.Config{Resolvers: s}))
	router := http.NewServeMux()

	router.Handle("/", playground.Handler("Dataloader", "/query"))
	router.Handle("/query", srv)
	log.Println("connect to http://localhost:8082/ for graphql playground")
	log.Fatal(http.ListenAndServe(":8082", LoaderMiddleware(router)))
}


func LoaderMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		//	rpcServer  需要token，所有在这里 将 token 放入 ctx
		next.ServeHTTP(w, r.WithContext(ctxkit.FromContext(context.Background(), "token", r.Header.Get("token"))))
	})
}
