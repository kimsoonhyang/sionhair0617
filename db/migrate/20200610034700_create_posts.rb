class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :caption
      t.references :user, foreign_key: true, null: false#참고 테이블은 유저테이블
      t.timestamps
    end
  end
end
