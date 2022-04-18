require "test_helper"

class OfferAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_attachment = offer_attachments(:one)
  end

  test "should get index" do
    get offer_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_attachment_url
    assert_response :success
  end

  test "should create offer_attachment" do
    assert_difference("OfferAttachment.count") do
      post offer_attachments_url, params: { offer_attachment: { image: @offer_attachment.image, json: @offer_attachment.json, offer_id: @offer_attachment.offer_id } }
    end

    assert_redirected_to offer_attachment_url(OfferAttachment.last)
  end

  test "should show offer_attachment" do
    get offer_attachment_url(@offer_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_attachment_url(@offer_attachment)
    assert_response :success
  end

  test "should update offer_attachment" do
    patch offer_attachment_url(@offer_attachment), params: { offer_attachment: { image: @offer_attachment.image, json: @offer_attachment.json, offer_id: @offer_attachment.offer_id } }
    assert_redirected_to offer_attachment_url(@offer_attachment)
  end

  test "should destroy offer_attachment" do
    assert_difference("OfferAttachment.count", -1) do
      delete offer_attachment_url(@offer_attachment)
    end

    assert_redirected_to offer_attachments_url
  end
end
