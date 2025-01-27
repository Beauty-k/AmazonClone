class CreateAmazonClones < ActiveRecord::Migration[7.2]
  def change
    create_table :amazon_clones do |t|
      t.timestamps
    end
  end
end
