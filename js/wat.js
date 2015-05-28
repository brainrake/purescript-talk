[] + []

[] + {}

{} + []

{} + {}

1 + "2"

[1, 2] + 3

[]

typeof "str"

typeof {}

typeof []

typeof NaN

null != false

null != true

null == undefined

(!!null) == false

" " == true

0 == false

"" == false

[""] == false

[] == 0




/*

o = {v: 1, f: function(){console.log(this.v); return null}}
o.f() // method call, sets `this` in `f` to `o`
f = o.f
f()   // function call, sets `this` to global object

setTimeout(o.f, 100) // wrong
setTimeout(o.f.bind(o), 100)
"done"



for (var i = 0; i < 5; i++) {
  setTimeout(
    function(){console.log(i)}
    , 100)
}
"done"

*/
