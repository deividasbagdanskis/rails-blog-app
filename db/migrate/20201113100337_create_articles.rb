# frozen_string_literal: true

# CreateArticles
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :image
      t.string :excerpt
      t.text :text

      t.timestamps
    end
  end
end
