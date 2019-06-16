# get the python version
function py_prompt_info() {
  local py_prompt
  py_prompt=$(python --version 2>/dev/null)
  [[ "${py_prompt}x" == "x" ]] && return
  py_prompt=${py_prompt/#* /}
  echo "${ZSH_THEME_PY_PROMPT_PREFIX}${py_prompt}${ZSH_THEME_PY_PROMPT_SUFFIX}"
}
