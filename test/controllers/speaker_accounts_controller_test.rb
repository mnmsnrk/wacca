require 'test_helper'

class SpeakerAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get speaker_accounts_show_url
    assert_response :success
  end

end
