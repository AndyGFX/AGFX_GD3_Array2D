# Godot 3.1 - 2D Array

This class create 2D array from dictionary where index can by negative and positive. It's very useful for store grid/tile base data, world, level, ... 

- ## Components:
    - **Array2D**
        - methods:
            - `Set(x:int,y:int)` - set field at [x,y] cell position

                - syntax: `<array name>.Set(x,y).<field name> = <value>`

            - `Get(x:int,y:int)` - read field from [x,y] position

                - syntax: `<variable> = <array_name>.Get(x,y).<field name>`
            
            - `Clear(x:int,y:int)` - clear cell at [x,y]
            - `Save(filename:String)` - save data to file
            - `Load(filename:String)` - load data from file
    
- ## Examples #1:

	`array2d.Set(0,0).var_float = 1.5`

	`array2d.Set(-1,100).var_int = 1`

	`array2d.Set(10,-50).var_color = Color.red`

	`array2d.Set(-11,-2).var_bool = true`

	`array2d.Set(20,10).var_array = [1,2,3,4,5,6]`

	`array2d.Set(1,2).var_strinf = "Any string"`

	`array2d.Set(1,2).var_vector2 = Vector2(2,1)`

	`array2d.Set(-4,5).any_var_name = {"a":1,"b":2}`

- ## Saved example #1

    {

        "-1,100": {
            "var_int": 1
        },
        "-11,-2": {
            "var_bool": true
        },
        "-4,5": {
            "any_var_name": {
                "a": 1,
                "b": 2
            }
        },
        "0,0": {
            "var_float": 1.5
        },
        "1,2": {
            "var_strinf": "Any string",
            "var_vector2": "(2, 1)"
        },
        "10,-50": {
            "var_color": "1,0,0,1"
        },
        "20,10": {
            "var_array": [
                1,
                2,
                3,
                4,
                5,
                6
            ]
        }
    } 

- ## Examples #2:

	`array2d.Set(0,0).var_float = 1.5`

	`array2d.Set(0,0).var_int = 1`

	`array2d.Set(0,0).var_color = Color.red`

	`array2d.Set(0,0).var_bool = true`
	
    `array2d.Set(0,0).var_array = [1,2,3,4,5,6]`
	
    `array2d.Set(0,0).var_strinf = "Any string"`
	
    `array2d.Set(0,0).var_vector2 = Vector2(2,1)`

- ## Saved example #2:

    {

        "0,0": {            
            "var_array": [
                1,
                2,
                3,
                4,
                5,
                6
            ],
            "var_bool": true,
            "var_color": "1,0,0,1",
            "var_float": 1.5,
            "var_int": 1,
            "var_strinf": "Any string",
            "var_vector2": "(2, 1)"
        }
    }

