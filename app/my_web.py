import web

urls = (
    '/(.*)', 'hello',
    '/test', 'test'
)

app = web.application(urls, globals())

class hello:
    def GET(self, name):
        if not name:
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()