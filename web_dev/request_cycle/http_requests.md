### HTTP Requests

**HTTP**: HyperText Transfer Protocol

**What are some common HTTP status codes?**

- **1XX: Informational Responses**
    + Provides information on the response status. This implicitly indicates that the request has been successfully received, and the response is being processed. 

    + **100 Continue**: First part of request received. Continue with the rest of the request.

- **2XX: Success**
    + Indicates the request has been processed successfully. 

    + **200 OK**: Request succeeded. Response received depends upon GET or POST request method. 
    + **201 Created**: Request fulfilled through the creation of a new resource (as opposed to retrieval of a pre-existing resource).

- **3XX: Redirection**
    + Indicates the client action must to taken to complete the request (e.g. URL redirection).

    + **300 Multiple Choices**: Resource has multiple options, from which the client should select (e.g. video with multiple formats).
    + **301 Moved Permanently**: Resource has moved. Client should make request to the provided location.
    + **307 Temporary Redirect**: Resource has moved temporarily. Client should make request to the provided location.

- **4XX: Client Error**
    + Indicates an error in the client's requst.

    + **400 Bad Request**: Request contains syntax errors, and should be modified before retrying. 
    + **403 Forbidden**: Client does not have permission to access resource requested.
    + **404 Not Found**: resource is not available. This does not preclude that it once existed, or will exist in th future. 

- **5XX: Server Error**
    + Indicates an error occurred on the server side, which prevented the request from being fulfilled.

    + **500 Internal Server Error**: Server encountered an unspecified error in completing the request. Request re-attempts may be made.
    + **503 Service Unavailable**: Server cannot currently handle the request. This may be caused by a server crash, server maintenance, server overload, etc. This is usually a temporary condition.
    + **504 Gateway Timeout**: Access to the web server has timed out. This indicates a caching or proxy server (relay server) is involved, and its access window to the secondary server has closed. This may be due to an overloaded secondary server, a crashed network device, etc. 

**What is the difference between a GET request and a POST request? When might each be used?**
- `GET` and `POST` both enable requests to be made to a server, but relay that information in different ways. 

- **GET**
    + `GET` requests should not have have request body. All information is relayed in the URL.
    + `GET` requests have the following properties:
        * `GET` requests can be cached.
        * `GET` requests remain in the browser history.
        * `GET` requests can be bookmarked.
        * `GET` requests should never be used when dealing with sensitive data.
        * `GET` requests have length restrictions (all information is appended to the URL).
    + **USE**: `GET` requests should be used to ***retrieve*** remote data.
    + **EXAMPLE**: retrieving the results of a search query.

- **POST**
    + `POST` requests are made with a request body, containing information submitted by a client.
    + POST` requests have the following properties:
        * `POST` requests are never cached.
        * `POST` requests do not remain in the browser history.
        * `POST` requests cannot be bookmarked.
        * `POST` requests should never be used when dealing with sensitive data.
        * `POST` requests have no restrictions on data length (additional information is included in the request body).
    + **USE**: `POST` requests should be used to ***modify** remote data. This may include updating current information in, or inserting new information to the data. 
    + **EXAMPLE**: requesting access to a service via submitting login details.

**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

- A cookie is a file containing user data stored on a client browser, which can be accessed by the user and the server associated with the cookie. 
- Cookies are set by a web server via the `Set-Cookie` headers in its HTTP response.
- Cookies are automatically included witin all future client requests to the server. 
- Cookies are vital in tracking the login status of a user, as well as storing preferences. Any type of information, however, may be stored within a cookie.
- For detailed information, see [Wikipedia HTTP cookie](https://en.wikipedia.org/wiki/HTTP_cookie).
