
const config = require("./config.json");
const Discord = require("discord.js");
const client = new Discord.Client();

client.on("ready", async () => {
  client.user.setStatus("idle");
  console.log("kathund has started the discord bot!");
  client.user.setPresence({
    game: { name: "To Spotify", type: 3 }
  });
}); //type 1 = playing! type 2 = listening! type 3 = watching! type 4 = streaming


client.login(config.token);
