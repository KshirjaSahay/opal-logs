package calculator

default allow = false

# Admin has access to all operations
allow {
    input.role == "admin"
}

# Normal user has access to only basic operations (add, subtract, multiply, divide)
allow {
    input.role == "user"
    input.operation == "add"
}

allow {
    input.role == "user"
    input.operation == "subtract"
}

allow {
    input.role == "user"
    input.operation == "multiply"
}

allow {
    input.role == "user"
    input.operation == "divide"
}

# To-do list policies
package todo

default allow = false

# Admin has access to add, update, delete tasks
allow {
    input.role == "admin"
}

# Normal user can only add tasks
allow {
    input.role == "user"
    input.action == "add"
}
