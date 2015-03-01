class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :update_complete, :destroy]

  def index
    @notes = Note.rank(:row_order).all
  end

  def update_row_order
    @note = Note.find_by_id(params[:id])
    Note.update(@note.id, row_order: params[:row_order])

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    end
  end

  def update
    if @note.update(note_params)
      redirect_to notes_path, notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  def update_complete
    Note.update(@note.id, complete: params[:complete])
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: 'Note was successfully deleted.'
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :description,
        :complete, :due_on, :row_order)
  end
end
