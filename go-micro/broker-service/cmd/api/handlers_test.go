package main

import (
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestBroker(t *testing.T) {

	wr := httptest.NewRecorder()
	req := httptest.NewRequest(http.MethodPost, "/", nil)

	app := Config{}
	app.Broker(wr, req)

	if wr.Code != http.StatusOK {
		t.Errorf("Got HTTP status code %d, expected 200", wr.Code)
	}

}
