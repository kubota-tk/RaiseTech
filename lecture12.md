# 第12回課題について

## 概要

* CircleCiのサンプルコンフィグが正しく動作するようリポジトリに組み込む

## 1. CircleCiのインストールと、実行したconfigファイル  
&emsp本;講義で使用しているGitHubのリポジトリRaiseTechとCircleciを連携した。GitHubにPullした際、次のconfig.ymlがテストとして実行されることを確認した。
 - [**config.yml**](/template12/config.yml) 

## 2. CircleCiの実施結果  
![pipline](images12/pipline.png)

## 3. 今回の課題から学んだことと、感じたこと
&emsp;CircleCiとGitHubの連携で苦労したが、CirclerCiのUserSettingで、GitHubがConnectされていないため連携できていないことが判明した。これが判明するまで色々試行錯誤しており、その分CircleCiの理解が深まったと思う。  
&emsp;自動実行は手動のミスが減らせ、便利だと感じる。引き続き学習に励みたい。
