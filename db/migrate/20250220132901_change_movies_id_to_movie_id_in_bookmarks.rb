class ChangeMoviesIdToMovieIdInBookmarks < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookmarks, :movies_id, :movie_id
  end
end
