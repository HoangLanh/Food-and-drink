User.create(name: "admin",
            email: "admin@gmail.com",
            role: "admin",
            password: "123456789")
Category.create(title: "food", parent_id: nil)
Category.create(title: "drink", parent_id: nil)
