class_name Array2D

var _array:Dictionary = {} 

func _init():
	pass 

# --------------------------------------------------------
# CLEAR cell at index [X,Y]
# --------------------------------------------------------
func Clear(x:int,y:int):
	var label = self._createName(x,y)
	self._array[label]={}

# --------------------------------------------------------
# SET cell field with value at index [X,Y]
# format: <array name>.Set(x,y).<field name> = <value>
# --------------------------------------------------------
func Set(x:int,y:int):
	var label = self._createName(x,y)
	if !self._array.has(label):
		self._array[label]={}
	return self._array[label]

# --------------------------------------------------------
# Get cell field's value at index [X,Y]
# format: <varaible> = <array_name>.Get(x,y).<field name>
# --------------------------------------------------------
func Get(x:int,y:int):	
	var label = self._createName(x,y)
	if (self._array.has(label)): 
		return self._array[label]
	else:
		print("ERROR: cell "+label+" is not defined")

# --------------------------------------------------------
# SAVE data from array to JSON
# --------------------------------------------------------
func Save(filename:String)->void:
	Utils.SaveJSON(filename,self._array,true)	

# --------------------------------------------------------
# LOAD data from JSON to array
# --------------------------------------------------------
func Load(filename:String)->void:
	self.array = Utils.LoadJSON(filename)


# --------------------------------------------------------
# HELPERS
# --------------------------------------------------------
func _createName(x:int, y:int) -> String:
	return String(x)+","+String(y)
