# PROTOCOL-OMEGA

REST API client definition library for Common Lisp with delusions of grandeur.

## Desiderata

- first and foremost, to make developing REST clients in Common Lisp less
  painful and tedious
- support the full feature set of OpenAPI
- based on CLOS
- object model:
    - services
    - sessions
    - requests
    - responses
- natural and intuitive interface for specifying request methods with responses
  dispatched by HTTP status code
- sensible mapping of different HTTP Request parameter types to lambda lists
- largely-automated conversion of Swagger and OpenAPI specifications to Common
  Lisp client library

## License

Copyright &copy; 2022, "the Phoeron" Colin J.E. Lupton

Released under the MIT License. See [protocol-omega/LICENSE.md](LICENSE.md)
for more information.
