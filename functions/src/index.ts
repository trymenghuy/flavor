import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions/v2";
setGlobalOptions({ region: "asia-southeast1", maxInstances: 10 });
admin.initializeApp();
// Start writing functions
// https://firebase.google.com/docs/functions/typescript

// export const helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
export * from "./dev/test";
export * from "./prod/test";
