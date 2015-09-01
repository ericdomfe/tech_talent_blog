class CreateBloPosts < ActiveRecord::Migration
  def change
    create_table :blo_posts do |t|
      t.string :title
      t.string :author
      t.text :blog_entry

      t.timestamps null: false
    end
  end
end
