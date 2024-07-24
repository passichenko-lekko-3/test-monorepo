import { useLekkoConfig } from "@lekko/react-sdk";
import { getText } from "../lekko/example";

export function Title() {
  const title = useLekkoConfig(getText, { env: import.meta.env.MODE });

  return <>{title}</>;
}
