SILE.registerCommand("raise", function (options, content)
  local height = options.height or 0
  height = SILE.parseComplexFrameDimension(height)
  SILE.typesetter:pushHbox({
      outputYourself = function (_, typesetter, _)
        typesetter.frame:advancePageDirection(-height)
      end
    })
  SILE.process(content)
  SILE.typesetter:pushHbox({
      outputYourself = function (_, typesetter, _)
        if (type(typesetter.state.cursorY)) == "table" then
          typesetter.state.cursorY = typesetter.state.cursorY.length
        end
        typesetter.frame:advancePageDirection(height)
      end
    })
end, "Raises the contents of the command by the amount specified in the <height> option")

SILE.registerCommand("lower", function (options, content)
  SILE.call("raise", { height = "-" .. options.height }, content)
end, "Lowers the contents of the command by the amount specified in the <height> option")

return {
  documentation = [[
\begin{document}

If you don’t want your images, rules or text to be placed along
the baseline, you can use the \code{raiselower} package to move them up
and down. (The \code{footnote} package uses this to superscript the
footnote reference numbers.)

It provides two simple commands, \autodoc:command{\raise} and \autodoc:command{\lower} which
both take a \autodoc:parameter{height=<dimension>} parameter. They will respectively
raise or lower their argument by the given height. The raised or lowered
content will not alter the height or depth of the line.

Here is some text raised by \raise[height=3pt]{three points}; here is
some text lowered by \lower[height=4pt]{four points}.

The previous paragraph was generated by:

\begin{verbatim}
Here is some text raised by \\raise[height=3pt]\{three points\}; here is
some text lowered by \\lower[height=4pt]\{four points\}.
\end{verbatim}

\end{document}
]]
}
