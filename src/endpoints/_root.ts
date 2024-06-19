const text = await Deno.readTextFile("./README.txt");

export default () => text;
