class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.all.find {|artist| artist.name == "Drake"}
    if !drake
      Artist.create(name: "Drake")
    else
      drake
    end
  end
end
