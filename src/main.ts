export * as api from "./api/mod.ts";

import { walk } from "@std/fs";
import { Router } from "@oak/acorn";

const router = new Router();

const toRoute = (path: string) =>
    path
        .replace(/^src\/endpoints/, "")
        .replace(/\.ts$/, "")
        .replace(/\\/g, "/")
        .replace(/\/_root$/, "") || "/";
for await (const entry of walk("./src/endpoints")) {
    if (!entry.isFile) continue;

    const module = await import(`../${entry.path}`);
    router.get(toRoute(entry.path), module.default);
}

router.listen({ port: 8080 });
