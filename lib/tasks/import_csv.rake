namespace :import_csv do
  desc "AWSテキスト教材とRailsの動画教材をそれぞれaws_textsテーブルとmoviesテーブルにインポート"
  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    movie_list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    # インポート失敗時の例外処理
    begin
      AwsText.create!(list)
      Movie.create!(movie_list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
