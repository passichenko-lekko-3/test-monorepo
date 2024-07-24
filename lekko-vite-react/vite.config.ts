import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import lekko from "@lekko/vite-plugin";

// https://vitejs.dev/config/
export default defineConfig({
  // This template project comes with the Lekko Vite plugin pre-configured.
  plugins: [react(), lekko()],
});
