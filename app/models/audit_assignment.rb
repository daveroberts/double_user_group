class AuditAssignment < ActiveRecord::Base
  belongs_to :audit
  belongs_to :item, polymorphic: true
end
