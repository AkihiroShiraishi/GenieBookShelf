using Genie.Router
using BooksController

route("/") do
    server_static_file("welcome.html")
end

route("/hello") do
  "Hello, Genie!"
end

greet() = "Welcome to Genie!"

route("/greet", greet)

route("/books", BooksController.show_books)




