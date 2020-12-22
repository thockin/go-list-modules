module example.com/m

require (
	example.com/other1 v0.0.0
	example.com/other2 v0.0.0
)

replace (
	example.com/other1 => ./staging/src/example.com/other1
	example.com/other2 => ./staging/src/example.com/other2
)

go 1.15
