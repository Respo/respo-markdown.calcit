
import { main_$x_ } from "./js-out/respo-md.main.mjs"

main_$x_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/respo-md.main.mjs', (main) => {
    main.reload_$x_()
  })
}
