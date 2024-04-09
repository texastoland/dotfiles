export def main [--multi (-m)]: any -> any {
  let data = $in
  alias read = input list --index --fuzzy=(not $multi) --multi=$multi
  match (to options $data | read) {
    _ if ($data | is-empty) => null
    null => null
    $indexes => {
      let indexed = to indexed $data
      $indexes | each { |it| $indexed | get $it }
    }
  }
}

export def 'to options' [data: any]: nothing -> list<string> {
  alias render = table --index false --theme light
  let rendered = $data | render | lines
  let border = char --unicode '2500'
  match ($rendered | where ($border in $it) | length) {
    _ if ($data | is-empty) => [$rendered.1] # skip frame
    0 => $rendered
    1 => ($rendered | skip 2) # skip header
    2 => ($rendered | range 2..<-2) # skip footer too
    _ => (error make { msg: 'unexpected table content' })
  }
}

export def 'to indexed' [data: any]: nothing -> any {
  match ($data | describe --detailed | get type) {
    string => ($data | lines)
    record => ($data | transpose key value)
    _ => $data
  }
}
