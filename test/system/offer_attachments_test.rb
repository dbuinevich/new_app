require "application_system_test_case"

class OfferAttachmentsTest < ApplicationSystemTestCase
  setup do
    @offer_attachment = offer_attachments(:one)
  end

  test "visiting the index" do
    visit offer_attachments_url
    assert_selector "h1", text: "Offer attachments"
  end

  test "should create offer attachment" do
    visit offer_attachments_url
    click_on "New offer attachment"

    fill_in "Image", with: @offer_attachment.image
    fill_in "Json", with: @offer_attachment.json
    fill_in "Offer", with: @offer_attachment.offer_id
    click_on "Create Offer attachment"

    assert_text "Offer attachment was successfully created"
    click_on "Back"
  end

  test "should update Offer attachment" do
    visit offer_attachment_url(@offer_attachment)
    click_on "Edit this offer attachment", match: :first

    fill_in "Image", with: @offer_attachment.image
    fill_in "Json", with: @offer_attachment.json
    fill_in "Offer", with: @offer_attachment.offer_id
    click_on "Update Offer attachment"

    assert_text "Offer attachment was successfully updated"
    click_on "Back"
  end

  test "should destroy Offer attachment" do
    visit offer_attachment_url(@offer_attachment)
    click_on "Destroy this offer attachment", match: :first

    assert_text "Offer attachment was successfully destroyed"
  end
end
