package widgets

import (
	context "context"
)

// Controller for widgets
type Controller struct {
}

// Widget struct
type Widget struct {
	ID int `json:"id"`
}

// Index of widgets
// GET /widgets
func (c *Controller) Index(ctx context.Context) (widgets []*Widget, err error) {
	return []*Widget{}, nil
}

// Show widget
// GET /widgets/:id
func (c *Controller) Show(ctx context.Context, id int) (widget *Widget, err error) {
	return &Widget{
		ID: id,
	}, nil
}
