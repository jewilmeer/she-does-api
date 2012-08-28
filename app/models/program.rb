class Program
  include Her::Model
  extend ActiveModel::Naming

  has_many :episodes

  def update!
    put(:trigger_update)
  end

  def to_param
    self.id
  end
end