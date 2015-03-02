require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "users can edit notes" do
    get :index
    assert_select("a[href=?]", edit_note_path(Note.first))
  end
end
