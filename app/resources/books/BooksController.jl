module BooksController

using Genie.Renderer.Html
using Dates

    struct Book
        title::String
        publication_date::Date
        cover::String
    end

    books = [
    Book("すごいJulia", Date(2019, 3, 3), "/img/app/book_covers/book1.png"),
    Book("楽しいJulia", Date(2019, 2, 7), "/img/app/book_covers/book2.png"),
    Book("みんなのJulia", Date(2019, 1, 26), "/img/app/book_covers/book3.png"),
    Book("基礎からわかるJulia", Date(2018, 12,15), "/img/app/book_covers/book4.png"),
    Book("スターティングJulia", Date(2018, 12,18), "/img/app/book_covers/book5.png"),
    Book("苦しんで覚えるJulia", Date(2018, 10, 10), "/img/app/book_covers/book6.png"),
    Book("初めてのJulia", Date(2018, 9,12), "/img/app/book_covers/book7.png"),
    Book("初めてのJulia改", Date(2018, 9,12), "/img/app/book_covers/book8.png")
    ]

    # mapreduce関数を使って本のリストを返す
    function show_books()
       html(:books, :show_books, books = books)
    end
end
