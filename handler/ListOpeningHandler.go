package handler

import (
	"github.com/gin-gonic/gin"
	"github.com/pravtz/go-api-portfolio/schemas"
	"net/http"
)

func ListOpeningHandler(ctx *gin.Context) {
	openings := []schemas.Opening{}

	if err := db.Find(&openings).Error; err != nil {
		sendError(ctx, http.StatusInternalServerError, "error listem openings")
		return
	}
	sendSuccess(ctx, "list-openings", openings)
}
