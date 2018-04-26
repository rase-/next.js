type action = Add

let component = ReasonReact.reducerComponent "Counter"

let init () = 0
let reducer action state = match action with
  | Add -> ReasonReact.Update (state + 1)

let make _children = {
  component with
    initialState = init;
    reducer = reducer;
    render = fun self ->
      let count = string_of_int self.state in
      [%bsx "
        <div>
          <p>" (ReasonReact.stringToElement count) "</p>
          <button onClick="(self.reduce (fun _e -> Add))">
            "(ReasonReact.stringToElement "Add")"
          </button>
        </div>
      "]
}
