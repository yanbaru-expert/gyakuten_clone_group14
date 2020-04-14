namespace :import_csv do
  desc "AWSテキスト教材をaws_textsテーブルにインポート"
  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    # インポート失敗時の例外処理
    begin
      AwsText.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

  desc "Railsの動画教材をmoviesテーブルにインポート"
  task rails_movie_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    # インポート失敗時の例外処理
    begin
      Movie.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
