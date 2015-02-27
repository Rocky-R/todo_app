class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
