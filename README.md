# greenlight api

REST API для управления коллекцией фильмов.

## Стек технологий

- **Go** 1.25.3+
- **PostgreSQL**
- `httprouter`
- SQL migrations
- Air - Live reload

## Установка и запуск

### Требования

- Go 1.22 или выше
- PostgreSQL
- `git`

### Клонирование репозитория

```bash
git clone <repository-url>
cd greenlight
```

### Установка зависимостей

```bash
go mod download
```

### Запуск приложения

```bash
make run/api 
```

По умолчанию сервер запускается на:

```
http://localhost:4000
```

## API

### Healthcheck

```
GET /v1/healthcheck
```

Пример ответа:

```json
{
  "status": "available",
  "environment": "development",
  "version": "1.0.0"
}
```
### Movies

#### Получить фильм по ID

```
GET /v1/movies/:id
```

Пример ответа:

```json
{
	"movie": {
		"id": 2,
		"title": "Black Panther",
		"year": 2018,
		"runtime": "134 mins",
		"genres": [
			"sci-fi",
			"action",
			"adventure"
		],
		"version": 2
	}
}
```

#### Создать фильм

```
POST /v1/movies
```

Пример ответа:

```json
{
	"movie": {
		"id": 5,
		"title": "It",
		"year": 2017,
		"runtime": "135 mins",
		"genres": [
			"horror",
			"detective"
		],
		"version": 1
	}
}
```

## Планы по развитию

- Добавить unit и integration-тесты
- Docker / docker-compose
- Swagger документация