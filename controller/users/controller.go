package users

// Controller for users
type Controller struct {
}

// User struct
type User struct {
	Name string `json:"name"`
	Email string `json:"email"`
}

func (c *Controller) Index(u *User) (*User, error) {
	return &User{u.Name, u.Email}, nil
}