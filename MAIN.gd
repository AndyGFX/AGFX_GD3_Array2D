extends Node2D
	
var array2d = Array2D.new()

func _ready():
	

	array2d.Set(0,0).var_float = 1.5
	array2d.Set(0,0).var_int = 1
	array2d.Set(0,0).var_color = Color.red
	array2d.Set(0,0).var_bool = true
	array2d.Set(0,0).var_array = [1,2,3,4,5,6]
	array2d.Set(0,0).var_strinf = "Any string"
	array2d.Set(0,0).var_vector2 = Vector2(2,1)
	

	array2d.Set(0,0).example="example of unlimited 2d array"
	array2d.Set(-5,-5).value1=-10
	array2d.Set(5,5).value1=10
	array2d.Set(5,5).value2=11
	array2d.Set(5,5).value3=12
	array2d.Set(5,5).value33=12
	array2d.Set(5,5).value4="test"
	
		
#   CLEAR cell at [x,y]
#	array2d.Clear(5,5)

#	SAVE array to file
	array2d.Save("res://test.data")

# LOAD data to array
#	array2d.Load("res://test.data")
	
	
	var state = array2d.Get(5,5).has("value1")

	if !array2d.Get(-5,-5).empty():
		if array2d.Get(-5,-5).has("value1"): print(array2d.Get(-5,-5).value1)
	if !array2d.Get(5,5).empty():
		if array2d.Get(5,5).has("value1"): print(array2d.Get(5,5).value1)
		if array2d.Get(5,5).has("value2"): print(array2d.Get(5,5).value2)
		if array2d.Get(5,5).has("value3"): print(array2d.Get(5,5).value3)
		if array2d.Get(5,5).has("value4"): print(array2d.Get(5,5).value4)
