class CreateCityArticles < ActiveRecord::Migration
  def change
    create_table :city_articles do |t|
      t.integer :article_id
      t.integer :city_id

      t.timestamps
    end
  end
end
