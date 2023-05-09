import "./style.css";
import { Elm } from "./src/Main.elm";

if (process.env.NODE_ENV === "development") {
      import("elm-debug-transformer").then((module) => module.register({ simple_mode: true }))
}

const root = document.querySelector("#app div");
const app = Elm.Main.init({ node: root });
