package graph

import (
	"arctron.lib/conf"
	"arctron.lib/logx"
	"arctron.lib/rpcx"
	"arctron.os.api/svc"
	"github.com/99designs/gqlgen/graphql"
)

//	定义 Server 实现 ResolverRoot 的 interface
type Server struct {
	//	定义 rpc Client
	peopleStreamClient svc.ArcCmptPeopleStreamServiceClient
}

func NewGraphQLServer() (*Server, error) {
	cc, err := rpcx.Dial(conf.APP_API_ADDR_INTERNAL.Value("0.0.0.0:8000"), rpcx.WithInsecure())
	if err != nil {
		logx.Fatalf("dial client err: %v", err)
	}

	return &Server{
		peopleStreamClient: svc.NewArcCmptPeopleStreamServiceClient(cc),
	}, nil
}

func (s *Server) Query() QueryResolver {
	return &queryResolver{
		server: s,
	}
}

func (s *Server) ToExecutableSchema() graphql.ExecutableSchema {
	return NewExecutableSchema(Config{
		Resolvers: s,
	})
}
