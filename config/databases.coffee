module.exports =
  mongodb:
    development:
      name: "tower-todo-development"
      port: 27017
      host: "127.0.0.1"
    test:
      name: "tower-todo-test"
      port: 27017
      host: "127.0.0.1"
    staging:
      name: "tower-todo-staging"
      port: 27017
      host: "127.0.0.1"
    production:
      name: "tower-todo-production"
      port: 27017
      host: "127.0.0.1"
    
  redis:
    development:
      name: "tower-todo-development"
      port: 6397
      host: "127.0.0.1"
    test:
      name: "tower-todo-test"
      port: 6397
      host: "127.0.0.1"
    staging:
      name: "tower-todo-staging"
      port: 6397
      host: "127.0.0.1"
    production:
      name: "tower-todo-production"
      port: 6397
      host: "127.0.0.1"
