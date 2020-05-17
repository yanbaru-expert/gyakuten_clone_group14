namespace :import_tag_data do
  desc "Movieデータにタグデータを作成する"
  task movie: :environment do

    puts "#######  インポート処理を開始します #######"
    
    CSV.foreach("db/csv_data/tag_data.csv") do |array| 
      # binding.pry
      # 1列目はMovieのtitle
      movie = Movie.find_by(title: array[0])
      if movie
        puts "「#{array[0]}」のタグを設定します"
        # 2列目から最終列までがtagデータ
        movie.tag_list.add(array[1..-1])
        movie.save
      end
    end

    puts "#######  インポート処理を終了します #######"

  end
end
