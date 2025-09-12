-- Rewrite site-only relative links to internal anchors for PDF
local map = {
  ["../practice/p04-diagnostic-light.md"] = "#p04-diagnostic-light",
  ["../practice/p05-individual-vision.md"] = "#p05-individual-vision",
  ["../practice/p09-raci.md"] = "#p09-raci",
}

function Link(el)
  local target = map[el.target]
  if target then
    el.target = target
    return el
  end
  return nil
end
