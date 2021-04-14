import "./style.css";
import Elm from "./src/Main.elm";

console.log(Elm);

const root = document.querySelector("#app div");
const app = Elm.Main.init({ node: root });
