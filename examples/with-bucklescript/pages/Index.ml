let component = ReasonReact.statelessComponent "Index" 

let make _children = {
  component with
    render = fun _self ->
      [%bsx "
        <div>
          <Header />
          <p>" (ReasonReact.stringToElement("HOME PAGE is here!")) "</p>
          <Counter />
        </div>
      "]
}

let jsComponent = ReasonReact.wrapReasonForJs ~component (fun _ -> make [||])
