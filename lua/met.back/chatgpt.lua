
-- Setup nvim-cmp.
local status_ok, gpt = pcall(require, "gp")
if not status_ok then
	return
end

gpt.setup({
	openai_api_key = os.getenv("OPENAI_API_KEY"),

})

