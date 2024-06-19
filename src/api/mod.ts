const hypixelToken = Deno.env.get("HYPIXEL_API_KEY");
if (!hypixelToken)
    throw new Error("No HYPIXEL_API_KEY provided in environment variables");
