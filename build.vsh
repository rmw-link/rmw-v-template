#!/usr/bin/env -S v run

import mod

fn sh(cmd string){
	println("❯ $cmd")
	print(execute_or_exit(cmd).output)
}

bin := mod.name
$if windows { bin+='.exe' }

mkdir('bin') or {}

sh('v -o bin/$bin -prod ${mod.name}.v')

/*
bin := join_path_single('bin',src)
mv(src, bin)?

println('  '+bin)
*/
