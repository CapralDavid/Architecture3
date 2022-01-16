// Code generated by Wire. DO NOT EDIT.

//go:generate wire
//+build !wireinject

package main

import (
	"github.com/CapralDavid/Architecture3/server/balancers"
)

// Injectors from modules.go:

func ComposeApiServer(port HttpPortNumber) (*BalancerApiServer, error) {
	db, err := NewDbConnection()
	if err != nil {
		return nil, err
	}
	store := balancers.NewStore(db)
	httpHandlerFunc := balancers.HttpHandler(store)
	BalancerApiServer := &BalancerApiServer{
		Port:            port,
		ChannelsHandler: httpHandlerFunc,
	}
	return BalancerApiServer, nil
}