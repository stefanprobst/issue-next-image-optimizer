# image-optimizer returns 400 when unicode characters in path

1. `yarn build && yarn start`
1. there should be an image visible at <http://localhost:3000>, but there isn't.
1. the network panel reports status code 400, error message "The requested resource isn't a valid image.".
1. in development mode with `yarn dev`, the image is visible.
