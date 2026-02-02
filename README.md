# Pronto Redis

Redis configuration and utilities for Pronto system.

## Requirements

- Redis 7+

## Docker

```bash
# Start Redis
docker compose --profile infra up redis

# Access Redis CLI
docker compose exec redis redis-cli
```

## Usage

Redis is used in Pronto for:
- Session storage
- Cache layer
- Real-time notifications (pub/sub)
- Rate limiting
- Background job queues

## Key Patterns

```
# Sessions
session:{session_id}

# Cache
cache:menu:{restaurant_id}
cache:orders:{date}

# Pub/Sub channels
notifications:{restaurant_id}
orders:{table_id}

# Rate limiting
ratelimit:{ip}:{endpoint}
```

## Configuration

Default connection:
- Host: `localhost` (or `redis` in Docker)
- Port: `6379`
- Database: `0`

## Monitoring

```bash
# Monitor all commands
redis-cli MONITOR

# Get info
redis-cli INFO

# Check memory
redis-cli INFO memory
```

## Data Persistence

Production configuration should include:
- RDB snapshots
- AOF persistence
- Regular backups
