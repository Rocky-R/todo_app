require 'test_helper'

class NotesCanBeCreatedAndDestroyedTest < ActionDispatch::IntegrationTest
  test "notes can be created" do
    get root_path
    assert_select("a[data-confirm]")
    get new_note_path
    assert_select("form")
    assert_difference('Note.count', 1) do
      Note.create(title: 'Do lots of stuff',
          description: 'and there was much stuff to be done')
    end
  end
end
