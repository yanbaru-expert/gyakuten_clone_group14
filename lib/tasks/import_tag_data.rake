namespace :import_tag_data do
  desc "Movieデータにタグデータを作成する"
  task movie: :environment do
    tag_data_list= [
      {title:"人生逆転サロンの活用法", tags:["Introduction", "使い方", "salon"]},
      {title:"Slackの使い方", tags:["使い方","slack"]},
      {title:"Gitの基本", tags:["git","init","add","commit","使い方"]},
      {title:"Gitを使ったクローン",tags:["git","使い方","clone"]},
      {title:"ソースコードをリモートリポジトリにプッシュするときの流れ",tags:["git","pull","push"]},
      {title:"Rubyで使用する主なクラスについて",tags:["ruby","class"]},
      {title:"putsについて",tags:["ruby","puts","出力"]},
      {title:"変数について",tags:["ruby","変数"]},
      {title:"Hello World アプリの解説（実践的なコントローラの作り方）",tags:["rails","アプリ"]},
      {title:"resourcesを使わないCRUDアプリの解説",tags:["rails","アプリ"]},
      {title:"resourcesを使ったCRUDアプリの解説",tags:["rails","アプリ"]},
      {title:"デバッグツールの使い方",tags:["rails","デバッグ","gem"]},
      {title:"CSVデータインポートアプリの解説",tags:["rails","CSV","gem","インポート"]},
      {title:"Rakeタスクの実装",tags:["rails","rake","タスク"]},
      {title:"Deviseを使ったログイン機能の実装",tags:["rails","ログイン","gem","devise"]}
  ]

    puts "#######  インポート処理を開始します #######"
    tag_data_list.each do |tag_data|
      movie = Movie.find_by(title: tag_data[:title])
      if movie
        puts "「#{tag_data[:title]}」のタグを設定します"
        movie.tag_list.add(tag_data[:tags])
        movie.save
      end
    end
    puts "#######  インポート処理を終了します #######"

  end
end
