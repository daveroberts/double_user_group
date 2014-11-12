require 'test_helper'
class AuditTest < ActiveSupport::TestCase
  test "creates only one audit assignment" do
    g = Group.create(name: "Administrators")
    u = User.new(name: "Admin", groups: [g])
    u.save
    assert AuditAssignment.count == 1
  end
end
