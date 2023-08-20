package router

import "github.com/gin-gonic/gin"

func Initialize() {
	// Initialize Router
	router := gin.Default()

	initializeRouter(router)

	router.Run(":8080")
}
