package posts

// Controller for posts
type Controller struct {
}

// Post struct
type Post struct {
	ID int `json:"id"`
}

func (c *Controller) Index() ([]*Post, error) {
	return []*Post{}, nil
}

// ok