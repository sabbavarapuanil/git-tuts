{%
    macro to_celcius(fahrenhiet_val,decimal_places)
%}
round({{fahrenhiet_val}} -32 * 5/9 , {{decimal_places}})
{%
    endmacro
%}