class User < ActiveRecord::Base
  has_many :roles
  has_many :groups, through: :roles
  has_many :audits, through: :audit_assignments
  has_many :audit_assignments, -> {where(item_type: 'User')}, foreign_key: :item_id
end
