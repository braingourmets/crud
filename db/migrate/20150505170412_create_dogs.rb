# frozen_string_literal: true

class CreateDogs < ActiveRecord::Migration[4.2]
  def change
    create_table :dogs do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
