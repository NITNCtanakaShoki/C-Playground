# DockerによるC言語実行環境

## 使い方

### Docker Desktopのインストール

dockerがインストールされているか確認し、インストールされていなければしてください。

```bash
docker --version
# Docker version 20.10.24, build 297e128
```

#### MacでHomebrewが使える場合

```bash
brew install --cask docker
```

#### その他

[Docker公式サイト](https://docs.docker.com/get-docker/)からインストールしてください。


### プロジェクトディレクトリにDockerfileとcompose.yamlを配置

[compose.yaml](compose.yaml)と[Dockerfile](Dockerfile)をプロジェクトディレクトリに配置してください。

```
project
├── main.c
├── Dockerfile
└── compose.yaml
```

### Docker Containerを起動

次のコマンドをプロジェクトディレクトリからターミナルで実行してください

```bash
docker compose up -d
```

### コンテナのコンソールに入る

```bash
docker compose exec app bash
```

### コンテナ内でコンパイルして実行
```bash
gcc main.c && ./a.out
```

### コンソールから抜ける

```bash
exit
```

### コンテナを停止する

```bash
docker compose down
```