class AgendasController < ApplicationController

  def index
    @agendas = Agenda.all
    @agendas_count = Agenda.count
  end

  def new
    @agenda = Agenda.new
  end

  def create
    @agenda = Agenda.new(params.require(:agenda).permit(:title,:start_day,:finish_day,:whole_day,:memo))
    if @agenda.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :agendas
    else
      render "new"
    end
  end

  def show
    @agenda = Agenda.find(params[:id])
  end

  def edit
    @agenda = Agenda.find(params[:id])
  end

  def update
    @agenda = Agenda.find(params[:id])
    if @agenda.update(params.require(:agenda).permit(:title, :start_day, :finish_day, :whole_day, :memo))
      flash[:notice] = "「#{@agenda.id}」の情報を更新しました"
      redirect_to :agendas
    else
      render "edit"
    end

  end

  def destroy
    @agenda = Agenda.find(params[:id])
    @agenda.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :agendas
  end
end
