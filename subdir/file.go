package subdir

import (
	submod "example.com/m/submod/used"
	other1 "example.com/other1/used"
	other2 "example.com/other2/used"
)

// NEEDS_CODEGEN

func Fn() {
	submod.Fn()
	other1.Fn()
	other2.Fn()
}
