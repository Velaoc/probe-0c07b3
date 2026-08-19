# frozen_string_literal: true

require "test_helper"

class GuestbookControllerTest < ActionDispatch::IntegrationTest
  test "shows the wall with existing entries newest first" do
    get root_path
    assert_response :success
    assert_select "h1", "Leave a note."
    assert_select "li", minimum: 1
  end

  test "posts a message and lands back on the wall" do
    assert_difference("GuestbookEntry.count", 1) do
      post guestbook_path, params: { guestbook_entry: { name: "Vela", message: "Signed, sealed, delivered." } }
    end

    assert_redirected_to root_path
    follow_redirect!
    assert_select ".guestbook__message", text: "Signed, sealed, delivered."
  end

  test "rejects a blank message" do
    assert_no_difference("GuestbookEntry.count") do
      post guestbook_path, params: { guestbook_entry: { name: "", message: "" } }
    end

    assert_response :unprocessable_entity
    assert_select ".md-field--error"
  end
end
