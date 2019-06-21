class Crust < ApplicationRecord
  has_many :pies, :class_name => 'Pie'

  def find_pies
    Pie.joins(:crust).where(pies: { crust_id: self.id })
    # SELECT "pies".* FROM "pies" INNER JOIN "crusts" ON "crusts"."id" = "pies"."crust_id" WHERE "pies"."crust_id" = ? LIMIT ?
  end
end
