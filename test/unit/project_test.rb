require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "accepts_nested_attributes_for not changing parent record will fail" do
    projects(:one).update_attributes :name => projects(:one).name,
                                     :tasks_attributes => [{
                                       :id => tasks(:one).id,
                                       :name => tasks(:one).name,
                                       :assignments_attributes => [{
                                         :id => assignments(:one).id,
                                        :name => 'Paul'
                                       }]
                                      }]
    assignments(:one).reload
    assert_equal 'Paul', assignments(:one).name
  end
  
  test "accepts_nested_attributes_for changing parent record will pass" do
    projects(:one).update_attributes :name => projects(:one).name,
                                     :tasks_attributes => [{
                                       :id => tasks(:one).id,
                                       :name => 'Buy gasoline and oil',
                                       :assignments_attributes => [{
                                         :id => assignments(:one).id,
                                        :name => 'Paul'
                                       }]
                                      }]
    assignments(:one).reload
    assert_equal 'Paul', assignments(:one).name
  end

end
