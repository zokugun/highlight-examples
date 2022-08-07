import { basename } from 'path'
import { escape, parse, stringify, translate, visit, Flavor, Token, TokenType } from '@daiyam/regexp'
import { FoldingRange, FoldingRangeKind, FoldingRangeProvider, OutputChannel, ProviderResult, TextDocument, window } from 'vscode'
import { FoldingConfig } from './config'

// fold by explicit {{{
let bar = foo;
// }}}
