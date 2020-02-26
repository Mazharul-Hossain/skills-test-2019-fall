class BattleshipShotsController < ApplicationController

  def index
    battleship_shots = BattleshipShot.all
    respond_to do |format|
      format.html { render :index, locals: { battleship_shots: battleship_shots } }
    end
  end

  def edit
    battleship_shot = BattleshipShot.find(params[:id])
    respond_to do |format|
      format.html { render :edit, locals: { battleship_shot: battleship_shot } }
    end
  end

  def update
    battleship_shot = BattleshipShot.find(params[:id])

    respond_to do |format|
      format.html {
        if battleship_shot.update( params.require(:battleship_shot).permit(:letter_coord, :number_coord, :result) )
          flash[:success] = "Update successful"
          redirect_to battleship_shots_url
        else
          flash.now[:error] = "Update failed"
          
          render :edit, locals: { battleship_shot: battleship_shot }
        end
      }
    end
  end

  def destroy
    respond_to do |format|
      format.html {
        battleship_shot = BattleshipShot.find(params[:id])
        battleship_shot.destroy
        
        flash[:success] = 'Removed successfully'
        redirect_to battleship_shots_url
      }
    end
  end

end
