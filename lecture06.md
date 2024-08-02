# 第6回課題について

## 概要

* CloudTrailを用いて、AWS利用記録の最終日のイベントから、イベント名等３項目をピックアップ
* CloudWatchのアラーム（OKアクション設定あり）の動作確認
* AWS利用料の見積作成（URLを共有）
* マネジメントコンソールから、現在の利用料を確認（先月分のEC2料金、無料枠について）


1. CloudTailの記録

最終日の記録のうち、PutMetricAlarmの詳細を表示させた画像。
![cloudtrail-1](images06/1.cloudtrail-1.png)

同記録のうち、イベントレコードを表示させた画像。記録の内容から、「実行したアカウントのユーザー名はAdministrator」、「実行日時は２０２４年８月２日午後4時28分43秒（JST）」、「イベント名がPutMetricAlarm（アラームのメトリクスの設定）」「アクセス元のIPアドレスが１０６.１５４.１４５.６２」等が判明した。
![cloudtrail-2](images06/2.cloudtrail-2.png)![cloudtrail-3](images06/3.cloudtrail-3.png)


2.  CloudWatchのアラームの記録
アラーム（ALBに紐づくEC2インスタンスがUnhealthy）の詳細を表示させた画像。

![alert](images06/4.alert.png)


「アラーム状態」と「OK」の履歴を表示させた画像。

![alert-history](images06/5.alert-history.png)


「アラーム状態」（Unhealthy）の時に送信されたメール

![alert-mail-unhealthy](images06/6.alert-mail-unhealthy.png)


「OK」（Healthy）の時に送信されたメール

![alert-mail-healthy](images06/7.alert-mail-healthy.png)


3. AWS利用料の見積
自分の利用状況を元に作成した見積を表示させた画像。（共有URL　　　　　　https://calculator.aws/#/estimate?id=8b1132818165e0a92388a6e0bb9e0916d2bb91d0）
![myestimate](images06/8.myestimate.png)


4. 自分の現在の利用料

７月分の請求を表示させた画像。

![july-cost](images06/9.july-cost.png)


7月のコストのうち、サービスを「EC2インスタンス」に限定して表示させた画像。

![ec-instance-cost-1](images06/10.ec-instance-cost-1.png)![ec-instance-cost-2](images06/11.ec-instance-cost-2.png)


無料利用枠の現在の使用量を表示した画像。（該当のサービスは無料枠内に収まっていることを確認）

![free](images06/12.free.png)


## 今回の課題から学んだことと、感じたこと

第6回講義では以下のことを学んだ。
* AWSでの証跡、ロギングについて(CloudTrail等)
* AWSでの監視、通知(CloudWatch等)
* AWSでのコスト管理

ログなどの証跡を残していないと、障害対応ができない等、ログの重要性を感じた。CloudWatchではアラートとして登録できる項目が多数あり、実際の設定方法も多岐にわたるので、どのサービスにアラートを設定するか等、判断する力が重要だと感じた。引き続き勉強を続けたい。


