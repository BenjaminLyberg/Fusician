require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "get_first_location" do
    first = Cities.top(1)
    assert_includes first, cities(:Oslo)

  end
end
