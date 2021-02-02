
import { main_BANG_ } from "./js-out/respo-md.main"

main_BANG_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/respo-md.main', (main) => {
    main.reload_BANG_()
  })
}
