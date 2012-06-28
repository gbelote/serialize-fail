class B
  include ActiveModel::Validations
  attr_accessor :foo
  validates_presence_of :foo
end
