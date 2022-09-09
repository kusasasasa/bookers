class BooksController < ApplicationController
  def new
  end
  def index
    @book=Book.new


  end

  def create
    @book=Book.new(book_params)
    
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @book.save!
    # 4. トップ画面へリダイレクト
      @book.save
      
      redirect_to book_path(@book)
    end
  end
  def show
    
    @books=Book.find(params[:id])

  end
  def edit

  end
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit( :title, :body)

  end
end
