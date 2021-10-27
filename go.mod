module graphql-grpc

go 1.17

require (
	arctron.lib v0.0.0-00010101000000-000000000000
	arctron.os.api v0.0.0-00010101000000-000000000000
	github.com/99designs/gqlgen v0.14.0
	github.com/vektah/gqlparser/v2 v2.2.0
)

require (
	github.com/agnivade/levenshtein v1.1.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/hashicorp/golang-lru v0.5.1 // indirect
	github.com/matryer/moq v0.0.0-20200106131100-75d0ddfc0007 // indirect
	github.com/mitchellh/mapstructure v0.0.0-20180220230111-00c29f56e238 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/russross/blackfriday/v2 v2.0.1 // indirect
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/urfave/cli/v2 v2.1.1 // indirect
	github.com/vektah/dataloaden v0.2.1-0.20190515034641-a19b9a6e7c9e // indirect
	golang.org/x/mod v0.4.2 // indirect
	golang.org/x/tools v0.1.5 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

require (
	code.cloudfoundry.org/go-diodes v0.0.0-20210909174843-33ea1b777686 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/dustin/go-humanize v1.0.0 // indirect
	github.com/envoyproxy/protoc-gen-validate v0.6.1 // indirect
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/go-redis/redis/v8 v8.11.4 // indirect
	github.com/golang-jwt/jwt/v4 v4.1.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.6.0 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgconn v1.10.0 // indirect
	github.com/jackc/pgerrcode v0.0.0-20201024163028-a0d42d470451 // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.1.1 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/json-iterator/go v1.1.10 // indirect
	github.com/klauspost/cpuid v1.3.1 // indirect
	github.com/minio/md5-simd v1.1.0 // indirect
	github.com/minio/minio-go/v7 v7.0.14 // indirect
	github.com/minio/sha256-simd v0.1.1 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/rs/xid v1.3.0 // indirect
	github.com/rs/zerolog v1.25.0 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	github.com/soheilhy/cmux v0.1.5 // indirect
	github.com/tidwall/gjson v1.9.3 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.0 // indirect
	github.com/tidwall/sjson v1.2.2 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519 // indirect
	golang.org/x/net v0.0.0-20210908191846-a5e095526f91 // indirect
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	golang.org/x/sys v0.0.0-20210831042530-f4d43177bf5e // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/genproto v0.0.0-20211011165927-a5fb3255271e // indirect
	google.golang.org/grpc v1.41.0 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/ini.v1 v1.57.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
)

replace (
	arctron.lib => ../go-lib
	arctron.os.api => ../apipb/generated_go
)
