import { log } from "firebase-functions/logger";
import { onDocumentCreated } from "firebase-functions/v2/firestore";
export const devOnTestCreate = onDocumentCreated(
  {
    document: "Test/{id}",
    database: "db-dev",
    // Optional: you can specify region and other options here
  },
  async (event) => {
    log("devOnTestCreate");
    log(event.params.id);
    // const { databaseId, collectionId, documentId } = event.params;
    // const snapshot = event.data;
  }
);
