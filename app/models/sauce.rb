class Sauce < ApplicationRecord
  has_many :pies, :class_name => 'Pie'


  def find_pies
    Pie.joins(:sauce).where(pies: { sauce_id: self.id })
    # SELECT "pies".* FROM 'pies' INNER JOIN "sauces" ON "sauce"."id" = "pies"."sauce_id" WHERE "pies"."sauce_id" = ? LIMIT ?
  end
end
