module BooksController
using Dates

    struct Book
        title::String
        publication_date::Date
    end

    books = [
    Book("すごいJulia", Date(2019, 3, 3)),
    Book("楽しいJulia", Date(2019, 2, 7)),
    Book("みんなのJulia", Date(2019, 1, 26)),
    Book("基礎からわかるJulia", Date(2018, 12,15)),
    Book("スターティングJulia", Date(2018, 12,18)),
    Book("苦しんで覚えるJulia", Date(2018, 10, 10)),
    Book("初めてのJulia", Date(2018, 9,12))
    ]

    # mapreduce関数を使って本のリストを返す
    function show_books()
        response = "
            <h1>Julia Books</h1>
            <ul>
            $( mapreduce(book -> "<li>$(book.title)$(book.publication_date)</li>", *, books))
             </ul>
            "
         return response
    end
end
