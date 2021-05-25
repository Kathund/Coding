// && - AND operator - Both sides need to be true 
// || - or operation - One side needs to be true


let isVerified = true
let isLoggedIn = true
let hasPaymentToken = true
let isGuest = true

if (isVerified && isLoggedIn && hasPaymentToken) {
    console.log('Greeting message for user')
    console.log('Grant access to paid corse')
} else if (isVerified || isGuest) {
    console.log('Allow free previews')
} else {
    console.log('MESSAGE: please contact admin')
}


https://www.youtube.com/watch?v=RZwUrFRalgs&list=PLRAV69dS1uWTSu9cVg8jjXW8jndOYYJPP&index=9