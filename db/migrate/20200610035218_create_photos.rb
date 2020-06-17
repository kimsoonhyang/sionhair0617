class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image, null: false
      t.references :post, foreign_key: true, null: false #참고는 포스트테이블
      t.timestamps
    end
  end
end
