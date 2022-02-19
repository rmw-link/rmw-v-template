module mod

import v.vmod

fn mod() vmod.Manifest {
	return vmod.decode(@VMOD_FILE) or { panic(err) }
}

pub const _mod = mod()

pub const name = _mod.name
