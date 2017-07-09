1. What are some common HTTP status codes?
    HTTP status codes are represented by three digits. The first digit will represent the class of the status code. 200 is the most common and presents a successful response. Other status codes starting with 2 represent a successful response to the request. 

    Status codes starting with 3 mean that the request is being redirected. This generally does not require user interaction.

    Status codes starting with 4 and 5 are error codes. Codes starting in 4 means there was a client side error and codes starting with 5 means there was a server side error. Here are some common ones:
    **403**: Forbidden. This means that accessing the resource is forbidden. This can be due to the machine accessing the resource not having the access rights, the client's certificate is no longer or was never valid, or there could be the wrong permissions associated with the files. 
    **404**: Not found. This means that the requested resource is not available. It can be unavailable due to user error in mistyping the URL, or it can mean that the resource is outdated and no longer available.
    **500**: Internal sever error. General server side error. 
    **503**: Service unavailable. This means that the web server is currently unavailable. This can be due to many reasons, and sometimes refreshing the page can resolve the issue. 
    **504**: Gateway timeout. This error happens when the proxy server needs to communicate with a secondary server, but access to that server times out.

    Some other common status codes: 
    201: Created
    204: No content. Server successfully fulfilled the request and there is no other content to send
    301: Moved permanently. Target resources has a new permanent URI and any new requests must use this URI
    307: Temporary Redirect. Target resources temporarily lives under a different URI and user must not change request method if it performs and automatic redirect.
    400: Bad request. Some client error is causing this. 
    401: Unauthorized. Request cannot be completed due to lack of authentication credentials. 
    422: Unprocessable Entity. Unable to process contained instructions even if request syntax and content type is understandable.


2. What is the difference between a GET request and a POST request? When might each be used?
A GET request includes the form parameters in the URL as a query string. If you enter your username and password into a form that uses a GET request, your username and password will show up in the URL. This is why it's best practice to use a POST request for forms that require sensitive information. A POST request includes the form parameters in the body of the HTTP request. POST requests are also generally used for things that will change, like updating a database. This is because POST requests are not meant to be idempotent like GET requests. This means that submitting multiple GET requests with the same form parameters (URL will be the same each time) will result in the same side effect as one GET request. Because of this, GET requests are generally used for queries that don't affect the server.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a small piece of data that the server sends to the user's web browser. The browser can store the cookie and send it back with the next request to let the server know the request came from the same browser. This is so that the user can stay logged in or so that information on the browser can be saved throughout the session.
