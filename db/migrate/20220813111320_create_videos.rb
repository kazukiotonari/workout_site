class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|

      t.timestamps
      t.string :part
      t.string :youtube_id
      t.string :title
      
    end
  end
end






