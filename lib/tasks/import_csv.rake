namespace :import_csv do
  desc "質問集をquestions テーブルにインポート"
  task question: :environment do
    list = Import.csv_data(path: "db/csv_data/question_data.csv")

    puts "インポート処理を開始"
    # インポート失敗時の例外処理
    begin
      Question.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

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

  desc "LINE教材をlinesテーブルにインポート"
  task line: :environment do
    list = Import.csv_data(path: "db/csv_data/line_data.csv")

    puts "インポート処理を開始"
    # インポート失敗時の例外処理
    begin
      Line.create!(list)
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
