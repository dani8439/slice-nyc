class Crust < ApplicationRecord
  has_many :pies

  def find_pies
    # Pie.joins(:crust).where(pies: { crust_id: crust })
    # SELECT "pies".* FROM "pies" WHERE "pies"."crust_id" = ? LIMIT ?
    # SELECT "pies".* FROM "pies" INNER JOIN "crusts" ON "crusts"."id" = "pies"."crust_id" WHERE "pies"."crust_id" = ? LIMIT ?
  end

end
