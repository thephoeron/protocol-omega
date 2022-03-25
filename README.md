# PROTOCOL-OMEGA

REST API client definition library for Common Lisp with delusions of grandeur.

## Desiderata

- first and foremost, to make developing REST clients in Common Lisp less
  painful and tedious
- support the full feature set of OpenAPI v3
- based on CLOS
- object model:
    - services
    - sessions
    - requests
    - responses
- natural and intuitive interface for specifying request methods with responses
  dispatched by HTTP status code
- sensible mapping of different HTTP Request parameter types to lambda lists
- automatically handle authentication and authorization of requests through
  services and sessions
- build on existing libraries
- largely-automated conversion of Swagger and OpenAPI specifications to Common
  Lisp client library
- maybe take inspiration from existing, incomplete, and abandoned attempts:
    - [openapi2cl][]
- maybe follow interfaces of various REST server implementations for isomorphism
  in client and server development:
    - [Snooze][]
    - [Restful][]
    - [cl-rest-server][]
    - [Ningle][]

[openapi2cl]: https://github.com/kat-co/openapi2cl
[Snooze]: https://github.com/capitaomorte/snooze
[Restful]: https://github.com/Ralt/restful
[cl-rest-server]: https://github.com/mmontone/cl-rest-server
[Ningle]: https://github.com/fukamachi/ningle

### Services

Services can be defined with syntax similar to ASDF system definitions, and any
request methods or request/response objects can be defined against a service.

Whether or not session management is required for request methods can be derived
from the auth requirements as specified for the service.

```lisp
(defservice name
  <properties...>)
```

### Request/Response Objects

Not sure if I want a general-purpose response object to encapsulate everything
that Dexador returns from an HTTP request, or if everything but the response
body should be thrown away.

This decision will also make a difference to the object hierarchy of the
library&mdash;do request/response objects get defined as subclasses of REQUEST
and RESPONSE, respectively, or do they stand alone as serialization objects?

### Request Methods

```lisp
(defrequest service name (method path)
  (:parameters ...)
  (:request-body ...)
  (:responses
    (200 'response-object)
    ...))
```

## License

Copyright &copy; 2022, "the Phoeron" Colin J.E. Lupton

Released under the MIT License. See [protocol-omega/LICENSE](./LICENSE) for more
information.
