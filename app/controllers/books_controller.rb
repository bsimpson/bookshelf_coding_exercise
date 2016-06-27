require 'uri'
require 'net/http'

class BooksController < ApplicationController
  def index
    books = Book.limit(20).order("rating DESC")
    books.each do |book|
      if Net::HTTP.get_response(URI.parse(book.image_url)).content_length < 100
        # The image link is broken so use a placeholder
        book.image_url = 'http://placehold.it/400x500'
      end
    end

    respond_to do |format|
      format.html {
        render template: 'books/index'
      }

      format.json {
        render json: books.to_json(include: [:author, :publisher])
      }
    end
  end
end
