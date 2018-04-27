let component = ReasonReact.statelessComponent "About"

let make _children = {
 component with
    render = fun _self ->
      [%bsx "
        <div>
          <Header />
          <p>" (ReasonReact.stringToElement "This is the about page") " </p>
          <Counter />
        </div>
      "]
}

let default = ReasonReact.wrapReasonForJs ~component (fun _ -> make [||])
