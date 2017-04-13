class Stat
  class AnimeGenreBreakdown < Stat
    include Stat::GenreBreakdown

    # for recalculate!
    def media_column
      :anime
    end

    # for class methods
    def self.media_column
      'Anime'
    end
  end
end
