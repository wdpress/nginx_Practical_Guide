use lib 'lib';
use Test::Nginx::Socket;

#repeat_each(3);

plan tests => repeat_each() * 2 * blocks();

run_tests();

__DATA__

=== TEST 1: Hello, World!
--- config
    location /hello {
        content_by_lua 'ngx.say("Hello, World!")';
    }
--- request
    GET /hello
--- response_body
Hello, World!
