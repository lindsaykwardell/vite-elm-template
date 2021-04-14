import elm from 'rollup-plugin-elm'

export default {
  plugins: [
    elm({
      exclude: 'elm_stuff/**'
    })
  ]
}