class AddCompanyIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :company_id, :integer
  end
end
