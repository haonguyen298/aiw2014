class HomeController < ApplicationController
  def index
    @Newdynasty=Dynasty.last(2)

    @Newking=King.last(9)

    @Dynasty_limit=Dynasty.last(6)

    @King_limit=King.last(6)
end

  def king
    @Dynasty_limit=Dynasty.last(5)

    @Kings=King.all

    @Tourist_limit=Tourist.last(5)

  end

  def dynasty
    @Dynasties=Dynasty.all

    @King_limit=King.last(5)

    @Tourist_limit=Tourist.last(5)
  end

  def tourist
    @Dynasty_limit=Dynasty.last(5)

    @King_limit=King.last(5)

    @Tourists=Tourist.all
  end

  def king_id
    @Kingid=King.find(params[:id])
  end

  def detaildynasty
    @Detaildynasty=Dynasty.find(params[:id])

    @King_limit=King.last(5)

    @Tourist_limit=Tourist.last(5)
  end

  def detailking
    @Detailking=King.find(params[:id])

    @Dynasty_limit=Dynasty.last(5)

    @Tourist_limit=Tourist.last(5)
  end

  def detailtourist
    @Detailtourist=Tourist.find(params[:id])

    @Dynasty_limit=Dynasty.last(5)

    @King_limit=King.last(5)
  end

  def king_dynasty
    @King_dynasty=King.where(dynasty_id: params[:id])

    @Dynasty=Dynasty.find(params[:id])

    @Dynasty_limit=Dynasty.last(5)

    @Tourist_limit=Tourist.last(5)
  end


  def details

  end

  def search

  end

  def sample
    
  end
end
