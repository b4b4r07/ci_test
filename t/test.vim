runtime! plugin/sample.vim

call vspec#hint({'scope': 'vspec#scope()', 'sid': 'vspec#sid()'})

describe ':Expect'
  it 'succeeds if an actual value matches to an expected value'
    let something = 'foo'
    Expect something ==# 'foo'
  end
end

describe 'Set'
  it 'modifies the value of a script-local variable'
    Expect Call('s:sample') ==# 'a'
  end
end
