//
//  BookStore.swift
//  BookStore
//
//  Created by user190373 on 3/5/21.
//

import Foundation

class BookStore{
    var bookList : [Book] = []
    
    init(){
        var newBook = Book()
    newBook.title = "A Game of thrones"
        newBook.author = "George R.R Martin"
        newBook.description = """
                The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.
                """
        newBook.year = "19xx"
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Class of Kings"
            newBook.author = "George R.R Martin"
            newBook.description = """
                    How does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.

                    """
        newBook.year = "19xx"
            bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Libro 1"
            newBook.author = "George R.R Martin"
            newBook.description = """
                    How does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.

                    """
        newBook.year = "19xx"
            bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Libro 2"
            newBook.author = "George R.R Martin"
            newBook.description = """
                    How does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.

                    """
        newBook.year = "19xx"
            bookList.append(newBook)
    
        
        newBook = Book()
        newBook.title = "Libro 3"
            newBook.author = "George R.R Martin"
            newBook.description = """
                    How does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.

                    """
        newBook.year = "19xx"
            bookList.append(newBook)
        
        bookList.sort { ($0.title < $1.title)
        
        }
    }
}
