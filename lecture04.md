# 第４回課題について

## 概要

    AWS上でEC２とRDSを作成、接続環境の構築

1.  VPC作成（詳細とリソースを含む画像）

[vpc-detail](images04/1.lec04-1-vpc1)

[vpc-resouce](images04/2.lec04-2-vpc2)

2.  EC2作成（詳細とセキュリティグループを含む画像）

[ec2-detail](images04/3.lec04-ec2-detail)

[ec2-in/outbound](images04/4.lec04-ec2-in-out)

3.  RDS作成（概要、セキュリティ、及びサブネットグループを含む画像）

[RDS-detail](images04/5.lec04-rds-detail)

[RDS-security１](images04/6.lec04-rds-security)

[RDS-security２](images04/7.lec04-rds-security2)

[RDS-security２](images04/8.lec04-subnet1)

[RDS-security２](images04/9.lec04-subnet2)

[RDS-security２](images04/10.lec04-rds-in)


4.  EC2へSSH接続、さらにRDS（MySQLへ接続した状況

[vpc-resouce](images04/11.lec04-console)

## 今回の課題から学んだことと、感じたこと

第四回講義では以下のことを学んだ。
* AWS環境、権限管理
* VPC、サブネット構築
* EC2インスタンスの作成
* RDSの作成


実際に AWSのVPC上に、EC2インスタンスとRDS（MySQL）を作成した。EC2にSSH接続し、プライベートなRDSに接続するまでが課題であった。

作業中のエラー対応としては、「RDSにパブリックのサブネットも含まれたため、DBサブネットグループを構築、プライベートのみに修正」、「SSH通信の秘密鍵が保存できなかったが、Mac環境では、ユーザーフォルダに作成された.sshがファイルでフォルダでなかったため、設定した。」「EC2にパブリックIPアドレスが設定されず、外部から通信できなかったが、EC2インスタンス作成時の設定誤りと判明」等、ネット上で解説が多くあり、対応できた。

ネットワークやセキュリティグループの構成について引き続き学んでいく。

