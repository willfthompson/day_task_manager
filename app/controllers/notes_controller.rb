class NotesController < ApplicationController
  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to account_path(current_user)
    flash[:notice] = "Updated Notes"
  end

  private
  def note_params
    params.require(:note).permit(:content)
  end
end
