import { log } from "firebase-functions/logger";
import { onDocumentCreated } from "firebase-functions/v2/firestore";
export const onTestCreate = onDocumentCreated(
  {
    document: "Test/{id}",
  },
  async (event) => {
    log("onTestCreate");
    log(event.params.id);
    // const { databaseId, collectionId, documentId } = event.params;
    // const snapshot = event.data;
  }
);
