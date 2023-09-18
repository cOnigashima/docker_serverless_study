### コマンド

```shell

// Docker イメージをビルド
docker build -t docker-serverless-study .


// compose でコンテナを起動しておいて、コンテナに入る
// --rm はコンテナを終了したら削除するオプション
// sh はコンテナに入ったら sh を起動するオプション
docker-compose run --rm serverless sh

// コンテナを起動しておいて、コンテナに入る
docker run -it docker-serverless-study /bin/bash

// すでに起動しているコンテナに入る
docker exec -it <コンテナ名> /bin/bash

serverless offline
curl http://localhost:3000/dev/hello
```

### 試行錯誤
```shell
docker run -it --network host docker-serverless-study /bin/bash
docker run -it --network host gracious_dewdney /bin/bash // 不可

// ホストのカレントディレクトリをコンテナの/app にマウントして起動
docker run -it -v $(pwd):/app docker-serverless-study /bin/bash

RUN apt-get update -y && \
 apt-get install -y nodejs npm && \
 apt-get clean && \
 rm -rf /var/lib/apt/lists/\*

```
