local status_ok, ngit = pcall(require, "neogit")
if not status_ok then
  return
end

ngit.setup({
	status = {
		recent_commit_include_author_info = true
	}
})
