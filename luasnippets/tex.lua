---@diagnostic disable: undefined-global

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {
  s('ff', fmta('\\frac{<>}{<>}', { i(1), i(2) })),
  s(
    'eq',
    fmta(
      [[
    \begin{equation}
      <>
    \end{equation}
      ]],
      { i(0) }
    )
  ),
  s('hr', fmta([[\href{<>}{<>}]], { i(1, 'url'), i(2, 'display name') })),
  s('tii', fmta('\\textit{<>}', { d(1, get_visual) })),
  s(
    'tasks',
    fmta(
      [[
\begin{tasks}
  \task <>
\end{tasks}
]],
      { i(0) }
    )
  ),
}, {
  s(';a', t '\\alpha'),
  s(
    'env',
    fmta(
      [[
      \begin{<>}
        <>
      \end{<>}
    ]],
      { i(1), i(2), rep(1) }
    )
  ),
}
