class CreateFestivalsMovies < ActiveRecord::Migration
  def up

  	create_table :festivals_movies, id: false do |t|
  		t.integer :festival_id
  		t.integer :movie_id
  	end

  	add_index :festivals_movies, [:festival_id, :movie_id],
  	 	unique: true

  end

  def down
  	drop_table :festivals_movies
  end
end
