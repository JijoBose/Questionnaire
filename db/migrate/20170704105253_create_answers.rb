class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false
      t.references :question, foreign_key: true
      t.references :option, foreign_key: true
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
