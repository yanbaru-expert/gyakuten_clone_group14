# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# 開発環境の場合のみ実施
if Rails.env.development?
    # 管理ユーザの作成(存在しない場合のみ作成)
    ADMIN_EMAIL = 'admin@example.com'
    ADMIN_PASSWORD = 'password'
    
    AdminUser.find_or_create_by!(email:ADMIN_EMAIL) do |admin_user|
        admin_user.password = ADMIN_PASSWORD
        puts 'テスト用管理ユーザを作成しました。'
    end

    # テスト用ユーザの作成(存在しない場合のみ作成)
    EMAIL = 'test@example.com'
    PASSWORD = 'password'

    User.find_or_create_by!(email: EMAIL) do |user|
        user.password = PASSWORD
        puts 'テスト用ユーザを作成しました。'
    end
end
