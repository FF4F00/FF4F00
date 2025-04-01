from ff4f00 import *
from ff4f00.client import Client
from ff4f00.http import HTTPRequest, HTTPResponse, OK
from ff4f00.header import Headers, Header, HeaderKey
from ff4f00.uri import URI
from ff4f00.strings import to_string
from ff4f00.io.bytes import bytes

struct SurrealDB:
    var client: Client
    var url: String
    var namespace: String
    var database: String
    var auth_token: String

    fn __init__(
        out self,
        url: String = "http://localhost:8000",
        namespace: String = "test",
        database: String = "test",
        auth_token: String = "",
    ):
        self.client = Client()
        self.url = url
        self.namespace = namespace
        self.database = database
        self.auth_token = auth_token

    fn query(mut self, query: String) raises -> HTTPResponse:
        """Execute a SurrealQL query"""
        var uri = URI.parse(self.url + "/sql")
        var headers = Headers()
        headers[HeaderKey.CONTENT_TYPE] = "application/json"
        if self.auth_token:
            headers["Authorization"] = "Bearer " + self.auth_token
        
        var body = String.write(
            '{"namespace": "', self.namespace, '", "database": "', self.database, '", "query": "', query, '"}'
        )
        var request = HTTPRequest(uri, headers, body=bytes(body))
        return self.client.do(request^)

    fn create(mut self, thing: String, data: String) raises -> HTTPResponse:
        """Create a record in SurrealDB"""
        var uri = URI.parse(self.url + "/key/" + thing)
        var headers = Headers()
        headers[HeaderKey.CONTENT_TYPE] = "application/json"
        if self.auth_token:
            headers["Authorization"] = "Bearer " + self.auth_token
        
        var request = HTTPRequest(uri, headers, body=bytes(data))
        return self.client.do(request^)

    fn select(mut self, thing: String) raises -> HTTPResponse:
        """Select records from SurrealDB"""
        return self.query(thing)

    fn delete(mut self, thing: String) raises -> HTTPResponse:
        """Delete records from SurrealDB"""
        return self.query("DELETE " + thing) 