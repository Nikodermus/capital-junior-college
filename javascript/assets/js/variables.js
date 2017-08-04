{ //Variables con tipos de datos
    var uninitialized;
    console.log(uninitialized);
    var null_initialized = null;
    console.log(null_initialized);
    var error_math = 13 - 'p';
    console.error(error_math);
    var inf = 13 / 0;
    console.error(inf);
    var minus_inf = -13 / 0;
    console.error(minus_inf);
}

{ //Variables con tipos de datos
    var object_name = {
        amor: 'mucho',
        pollo: 'lindo',
        "ó": "ƒ"
    };
    console.log(object_name["ó"]);
    var numereichon_int = 2;
    var numereichon_float = 2.8618416;
    var numereichon_spc = Number.EPSILON;
    var numereichon_not = 123e+2;
    var string = 'Me encantan las 🍇';
    var array = [1, 2, 3, string, 5, "a"];
    var verdadero = true;
    var falso = false;
    var reg_exp = /a*/;
    var my_func = function () {
        //some instructions
    };
}

{ //Scope


}