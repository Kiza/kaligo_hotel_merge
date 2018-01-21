# Kaligo Hotel Merge

This is a RoR API project for task at https://gist.github.com/arnvald/0af20bdceb375c4517dd7c845607e2fb

## Notes
**IMPORTANT**

Development-mode class reloading is disable to make concurrency work.

```
# config/environments/development.rb
# config/environments/test.rb

config.cache_classes = true # enabled to make concurrency work
config.eager_load = true # enabled to make concurrency work

```

## Requirement and depedencies

- Ruby version: ruby 2.4.1

## Get started
- check out source code
- run `bundle`


## Run test
- run `rails t`

## Start services
- run `rake db:migrate`
- run `rake db:setup`
- run `rails s`

Services will be running at `http://localhost:3000`


## API
- GET check/live
- GET check/health
- GET hotel/list

Call with specific suppliers, invalid supplier will be ignored: 
```
curl "http://localhost:3000/hotel/list?checkin=20170812&checkout=20170913&destination=singapore&guests=2&suppliers=supplier1,supplier2,supplier3,supplier4"
```

Call without specific suppliers, 
```
curl "http://localhost:3000/hotel/list?checkin=20170812&checkout=20170913&destination=singapore&guests=2"
```



## System design

### Dynamicly loaded supplier API parser*

Supplier data is saved in `app/models/supplier.rb`

- name: API name
- url: API entry point
- api_parser: api specific parser file in `app/api_parsers` folder.

> The file name need to be in snake_case, with extention, without path.
> The parser call in the file need to be in CamelCase.
> The parser need to be extended from BaseParser in `app/api_parser/base_parser.rb`.
> If no parser is specified, BaseParser will be used. 
> If parser is specificed, but cannot be found, BaseParser will be used. 

- expire_sec: data expiration in second 

Druing run time, new supplier can be added to the database.

Its parser can be added to `app/api_parsers` folder without restaring the services. 

### Cache
- This is a generic cache implemented as key-value store in database.
- The cache's call need to define how cache behaves. 
- Cache data is stored  `app/models/data_record.rb`
- Cacher interface is implemented in `app/models/data_cacher.rb` as a Singleton object
- Cache is used for individual API calls. So the cache key is defined as `"#{self.name}-#{checkin}-#{checkout}-#{destination}-#{guests}".downcase`


## Potential Improvement
- Thread pool should be implemented in `app/api_parser/api_worker.rb` to avoid re-creation of thread objects. 
- Clean up logic or key reuse logic should be implemented in `app/modles/data_cacher.rb` ro improve database utilization.
- If merging hotel data is the bottleneck, then this result should be cached as well. 


