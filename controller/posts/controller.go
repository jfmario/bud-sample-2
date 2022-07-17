package posts

import (
	context "context"
)

// Controller for posts
type Controller struct {
}

// Post struct
type Post struct {
	ID int `json:"id"`
}
