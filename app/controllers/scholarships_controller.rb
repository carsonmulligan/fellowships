class ScholarshipsController < ApplicationController
  def new
  end

  def create
  end

  def index
    if params[:query].present?
      sql_query = 'name ILIKE :query OR description ILIKE :query'
      @scholarships = Scholarship.where(sql_query, query: "%#{params[:query]}%")
    else
      @scholarships = Scholarship.all
    end
  end

  def show
    @scholarship = Scholarship.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:name, :description, :url, :due_date, :value)
  end
end
