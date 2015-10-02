local terror = {}

local function newError(l, msg)
	table.insert(terror, { l = l, msg = msg} )
end

newError("errSemi", "Error: missing ';'")
newError("errExpIf", "Error: expected expression after 'if'")
newError("errThen", "Error: expected 'then' keyword")
newError("errCmdSeq1", "Error: expected at least a command after 'then'")
newError("errCmdSeq2", "Error: expected at least a command after 'else'")
newError("errEnd", "Error: expected 'end' keyword")
newError("errCmdSeqRep", "Error: expected at least a command after 'repeat'")
newError("errUntil", "Error: expected 'until' keyword")
newError("errExpRep", "Error: expected expression after 'until'")
newError("errAssignOp", "Error: expected ':=' in assigment")
newError("errExpAssign", "Error: expected expression after ':='")
newError("errReadName", "Error: expected an identifier after 'read'")
newError("errWriteExp", "Error: expected expression after 'write'")
newError("errSimpExp", "Error: expected '(', ID, or number after '<' or '='")
newError("errTerm", "Error: expected '(', ID, or number after '+' or '-'")
newError("errFactor", "Error: expected '(', ID, or number after '*' or '/'")
newError("errExpFac", "Error: expected expression after '('")
newError("errClosePar", "Error: expected ')' after expression")

local labelCode = {}
for k, v in ipairs(terror) do
	labelCode[v.l] = k
end

return {
  labels = labelCode,
  errors = terror
}
