package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	v1 "arctron.os.api/cmpt/peoplestream/v1"
	"context"
	"graphql-grpc/graph/model"
)

type queryResolver struct {
	server *Server
}

func (r *queryResolver) ListPeopleStream(ctx context.Context, pagination model.PaginationInput, nameFilter string, statType int) (res []*model.PeopleStream, err error) {
	rpcRes, err := r.server.peopleStreamClient.ListPeopleStream(ctx, &v1.ListPeopleStreamReq{
		NameFilter: nameFilter,
		StatType:   int32(statType),
	})

	if err != nil {
		return nil, err
	}
	if len(rpcRes.PeopleStream) > 0 {
		for _, item := range rpcRes.PeopleStream {
			res = append(res, &model.PeopleStream{
				BuildingName: item.BuildingName,
				FloorNum:     item.FloorNum,
				SpaceID:      item.SpaceId,
				SpaceName:    item.SpaceName,
				DeviceName:   item.DeviceName,
				IotCode:      item.IotCode,
				MonitorType:  item.MonitorType,
				Unit:         item.Unit,
				Num:          int(item.Num),
				Status:       item.Status,
			})
		}
	}
	return
}

//
//// Query returns generated.QueryResolver implementation.
//func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }
