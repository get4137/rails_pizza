class NotesController < ApplicationController
  before_action :authenticate_user!,
                only: %i[edit new create update destroy show index]
  def index
    @notes = current_user.notes
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = current_user.notes.build
    @notes = Note.all
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:current_user, :message)
  end
end