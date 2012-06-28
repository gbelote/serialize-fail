class A < ActiveRecord::Base
  attr_accessible :data
  serialize :data, B

  validate :custom

  def custom
    errors.add :data, "whoopsies!" unless data.valid?
  end
end
