let component = ReasonReact.statelessComponent "Header"
let styles = ReactDOMRe.Style.make ~marginRight:"10px" ()

let make _children = {
  component with
    render = fun _self ->
      [%bsx "
        <div>
          <Next.Link href='/'>
            <a style="(styles)">"(ReasonReact.stringToElement "Home")"</a>
          </Next.Link>
          <Next.Link href='/about'>
            <a style="(styles)">"(ReasonReact.stringToElement "About")"</a>
          </Next.Link>
        </div>
      "]
}
