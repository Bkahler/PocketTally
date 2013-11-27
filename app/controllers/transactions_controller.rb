class TransactionsController < ApplicationController
  respond_to :json

  def index
    respond_with Transaction.where(user_id: current_user.id)
  end

  def show
    respond_with Transaction.find(params[:id])
  end

  def create
    x = params[:transaction]
    y = x.merge(user_id: current_user.id)
    respond_with Transaction.create(y)
    # binding.pry


  end

  def update
    respond_with Transaction.update(params[:id], params[:transaction])
  end

  def destroy
    respond_with myTransactions = Transaction.where(user_id: current_user.id)
    myTransactions.delete_all
  end
end