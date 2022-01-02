class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

  def avg_snack_price
    if has_snacks?
      return snacks.average(:price).round(2)
    else
      return nil
    end
  end

  def has_snacks?
    if snacks.count > 0
      return true
    else
      return false
    end
  end

end
