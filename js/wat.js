[] + []
// > ''

[] + {}
// > '[object Object]'

{} + []
// > 0

{} + {}
// > '[object Object][object Object]'

1 + "2"
// > '12'

[1, 2] + 3
// > '1,23'

[]
// > []

typeof "str"
// > 'string'

typeof {}
// > 'object'

typeof []
// > 'object'

typeof NaN
// > 'number'

null != false
// > true

null != true
// > true

null == undefined
// > true

(!!null) == false
// > true

" " == true
// > false

0 == false
// > true

"" == false
// > true

[""] == false
// > true

[] == 0
// > true






o = {v: 1, f: function(){console.log(this.v); return null}}

o.f() // method call, sets `this` in `f` to `o`
f = o.f
f()   // function call, sets `this` to global object

setTimeout(o.f, 100) // wrong
setTimeout(o.f.bind(o), 100)
"done"



for (var i = 0; i < 5; i++) {
  setTimeout(
    function(i){function(){console.log(i)}}(i)
    , 100)
}
"done"

*/
// > undefined
