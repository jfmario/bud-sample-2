package comments

// Controller for comments
type Controller struct {
}

// Comment struct
type Comment struct {
	ID int `json:"id"`
}

type Input struct {
	PostID int `json:"post_id"`
}

func (c *Controller) Index(in *Input) *Input {
	return in
}