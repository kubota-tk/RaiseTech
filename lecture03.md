# 第三回課題の報告について

## 課題の回答

1. アプリケーションのREADMEに従った、各種バージョン設定の状況
![version](images03/1version.png)

2. アプリケーションをデプロイ、実行した時の状況

    APサーバ名「Puma」、バージョン「６.４.２」
![app_start(puma_ver)](images03/2app_start(puma_ver).png)

3. 表示されたブラウザ表示
![browser](images03/3browser.png)

4. Pumaを停止したまま、アプリケーションを実行した時のブラウザ表示

    引き続きアクセスは出来ませんでした。
![browser(puma_off)](images03/4browser(puma_off).png)

5. MySQLを起動した状況

    DBサーバー名「MySQL Community Server」、バージョン「８.４.１」
![db_server(mysql_ver)](images03/5db_server(mysql_ver).png)

6. MySQLを停止させたまま、アプリケーションを起動した状況

    アクセスはできなかった。
![app_start(db_off)](images03/6app_start(db_off).png)

7. MySQL停止状態でアプリケーションを起動した時のブラウザ表示
![browser(db_off)](images03/7browser(db_off).png)

8. Railsの構成管理ツールの名前

    「Bundler」

## 今回の課題から学んだこと、感じたこと
今回の課題は、Webアプリケーションを中心に、以下のことについて学んだ。
* クライアント、サーバ
* リクエスト、リスポンス
* 通信
* HTTPメソッド
* HTML/CSS/JS
* アプリケーション開発の流れ
* Ruby on Rails によるWebアプリケーションの起動
* 外部ライブラリと構成管理の重要性
* GemとBundler
* アプリケーションサーバ
* DBとSQL

特に、クラウド９上でサンプルのWebアプリケーションをデプロイする作業については、講義と同じように作業しているつもりでも様々なエラーが発生し、対応に苦心した。「nodeとyarnのバージョン整合性」「bin/setupでインストール走らせた時のフリーズに対しスワップ領域を活用」、「アプリケーション実行時のエラーに対して、環境設定でのソケット修正」など、様々な事象に対応するには、エラーを読み解く力が重要だと実感した。
