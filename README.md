# laravel-api-docker-sample

## Create API sample by Laravel 12

This project provides a minimal setup for using Laravel 12 as a backend API. It removes unnecessary components for web applications, such as views and frontend-related packages, to keep the project lightweight and optimized for API usage.

### Key Modifications
- **Removed `routes/web.php`**: Laravel will not serve web routes, making it a pure API application.
- **Deleted `resources/` directory**: No Blade templates, CSS, or JavaScript files are included.
- **Excluded view-related packages**: Dependencies such as `laravel/ui` or frontend scaffolding tools are not installed.
- **Updated `bootstrap/app.php`**: Configured to handle all requests as API responses.
- **Configured `nginx` for API-only behavior**: Ensured all requests are routed through Laravel.
- **Configured SSL certificates with `mkcert`**: The project is set up to use HTTPS, so you need to install mkcert to generate local certificates.


### How to Use
1. Clone the repository:
   ```sh
   git clone https://github.com//tech-takkwatanabe/laravel-api-docker-sample.git
   cd laravel-api-docker-sample
   ```
2. Start the container:
   ```sh
   make init
   ```
3. Access the API:
   - `https://localhost/api` → API response
   - `https://localhost/hoge` → 404 JSON response

---

## Laravel 12 を API として使用するサンプル

このプロジェクトは、Laravel 12 を API 専用のバックエンドとして利用するための最小構成を提供します。ビューやフロントエンド関連のパッケージを削除し、API 用途に特化した軽量な構成になっています。

### 主な変更点
- **`routes/web.php` を削除**：Web ルートは提供せず、純粋な API アプリケーションに。
- **`resources/` ディレクトリを削除**：Blade テンプレートや CSS、JavaScript を含まない。
- **ビュー関連パッケージを除外**：`laravel/ui` などのフロントエンド用のパッケージをインストールしていない。
- **`bootstrap/app.php` の更新**：すべてのリクエストを API レスポンスとして処理するように設定。
- **`nginx` を API 用に設定**：すべてのリクエストが Laravel に渡るように構成。
- **SSL証明書を `mkcert` で設定**：HTTPSでの通信を使用する前提で構成しており、ローカル証明書を生成するために mkcert をインストールする必要があります。


### 使用方法
1. リポジトリをクローン:
   ```sh
   git clone https://github.com//tech-takkwatanabe/laravel-api-docker-sample.git
   cd laravel-api-docker-sample
   ```
2. コンテナを起動:
   ```sh
   make init
   ```
3. API にアクセス:
   - `https://localhost/api` → API レスポンス
   - `https://localhost/hoge` → 404 JSON レスポンス

