# MVC

OO design pattern

- Model: what your app is (not how)
- View: Controller's minios, generic objects
- Controller: how , UI logic

## Communication:

C can always talk directly to M and V(outlet)

M and V should not *speak* to each other

- V can talk to C, but communication must be "blind" and strucutred. E.g. click action to target,more complicated(scroll)
- C sets itself as V's delegate. (`will/should/did`). Delegate is set via a protocol,which is blind to class.
- Vs do not own the data they display. C are almost always the data source(not M)

C interpret/format M information for V

- M should be UI independent
- M uses a "broadcast" mechanism, C(other M) "tuen in" to interest stuff

1 MVC group usually control 1 screen. 1 MVC can be V for another C.

## Demo

- Create data structure Concentration and Card
- Initialization
