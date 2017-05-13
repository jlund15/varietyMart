class CreateFeaturedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :featured_items do |t|
      t.text :image
      t.text :subtitle
      t.text :body

      t.timestamps
    end
  end
end
