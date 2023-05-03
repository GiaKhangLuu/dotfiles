local status, distant = pcall(require, 'distant')
if (not status) then return end

local status2, telescope = pcall(require, 'telescope')
if (not status2) then return end

distant.setup({
	['emagegroup.duckdns.org'] = {
		cwd = '/home/alan_khang/dev/contac_lens',
--		telescope.extensions.distant.search({
--			paths = {'home/alan_khang/dev'},
--			pagination = 1
--		})
	}
})

