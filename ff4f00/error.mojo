from ff4f00.http import HTTPResponse

alias TODO_MESSAGE = "TODO".as_bytes()


# TODO: Custom error handlers provided by the user
@value
struct ErrorHandler:
    fn Error(self) -> HTTPResponse:
        return HTTPResponse(TODO_MESSAGE)
