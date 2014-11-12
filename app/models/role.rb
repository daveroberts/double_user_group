class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  after_create :audit_creation
  def audit_creation
    a = Audit.new(message: "User added to group")
    self.user.audits << a
  end
end
