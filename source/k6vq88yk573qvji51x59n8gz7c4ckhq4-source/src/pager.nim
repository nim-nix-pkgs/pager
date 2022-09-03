import parseopt

import pagerpkg/pager


proc page*(contents: string, goToBottom = 'G', goToTop = 'g', upOne = 'k',
    quitChar = 'q', downOne = 'j', upHalf = chr(21), downHalf = chr(4)) =
  ## Clear the screen and write chunks of `s` as they fit onto stdout.
  ## The navigation keys can be customized # by passing the relevant characters
  ## as arguments.
  pager.page(contents, goToBottom, goToTop, upOne, quitChar,
    downOne, upHalf, downHalf)


when isMainModule:
  var p = initOptParser()
  while true:
    p.next()
    case p.kind
    of cmdEnd: break
    of cmdShortOption, cmdLongOption:
      raise newException(ValueError, "unrecognized option given")
    of cmdArgument:
      page(readFile(p.key))
